
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../output/views/output_view.dart';
import '../../widgets/views/Navbar.dart';
import '../../widgets/views/containerHome.dart';
import '../../widgets/views/iconContent.dart';
import '../controllers/home_controller.dart';

Color inactiveCardColour = HexColor('#282C4F');
const activeCardColour = Color(0xFF111328);

String? SelectedGender;

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: WidgetsAppBar,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Obx(() => GestureDetector(
                          onTap: () {
                            SelectedGender = 'Male';
                            controller.updateColour(Gender.male);
                          },
                          child: ContenerHome(
                            colour: controller.maleCardColor.value,
                            cardChild: const IconContent(
                              icon: FontAwesomeIcons.mars,
                              Label: 'MALE',
                            ),
                          ),
                        ))),
                Expanded(
                    child: Obx(() => GestureDetector(
                          onTap: () {
                            SelectedGender = 'Female';
                            controller.updateColour(Gender.female);
                          },
                          child: ContenerHome(
                            colour: controller.demaleCardColor.value,
                            cardChild: const IconContent(
                              icon: FontAwesomeIcons.venus,
                              Label: 'FEMALE',
                            ),
                          ),
                        ))),
              ],
            )),
            Expanded(
                child: ContenerHome(
              colour: HexColor('#282C4F'),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: TextStyle(
                      color: Color(0xFF8D8E98),
                      fontSize: 18.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Obx(() => Text(
                            controller.numSlider.value.toString(),
                            style: TextStyleCm,
                          )),
                      const Text(
                        'cm',
                        style: TextStyle(
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                    ],
                  ),
                  Obx(() => SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white60,
                            thumbColor: HexColor('#FF0067'),
                            overlayColor: Colors.transparent,
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 12.0,
                            ),
                            overlayShape: const RoundSliderOverlayShape()),
                        child: Slider(
                          value: controller.numSlider.value.toDouble(),
                          min: 120,
                          max: 220,
                          activeColor: const Color(0xFFEB1555),
                          inactiveColor: const Color(0xff8d8e98),
                          onChanged: (double newValue) {
                            controller.numSlider(newValue.toInt());
                          },
                        ),
                      ))
                ],
              ),
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ContenerHome(
                        colour: HexColor('#282C4F'),
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'WEIGHT',
                              style: TextStyle(
                                color: Color(0xFF8D8E98),
                              ),
                            ),
                            Obx(() => Text(
                                  controller.weight.value.toString(),
                                  style: TextStyleCm,
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RawMaterialButton(
                                  fillColor: HexColor('#212747'),
                                  elevation: 6.0,
                                  disabledElevation: 6.0,
                                  constraints: const BoxConstraints.tightFor(
                                    width: 50.0,
                                    height: 50.0,
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50.0)),
                                  child: const Icon(Icons.remove),
                                  onPressed: () {
                                    controller.DownWeight();
                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                RawMaterialButton(
                                  elevation: 6.0,
                                  disabledElevation: 6.0,
                                  constraints: const BoxConstraints.tightFor(
                                    width: 50.0,
                                    height: 50.0,
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50.0)),
                                  fillColor: HexColor('#212747'),
                                  child: const Icon(Icons.add),
                                  onPressed: () {
                                    controller.UpWeight();
                                  },
                                ),
                              ],
                            )
                          ],
                        ))),
                Expanded(
                    child: ContenerHome(
                        colour: HexColor('#282C4F'),
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'AGE',
                              style: TextStyle(
                                color: Color(0xFF8D8E98),
                              ),
                            ),
                            Obx(() => Text(
                                  controller.Age.value.toString(),
                                  style: TextStyleCm,
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RawMaterialButton(
                                  elevation: 6.0,
                                  disabledElevation: 6.0,
                                  constraints: const BoxConstraints.tightFor(
                                    width: 50.0,
                                    height: 50.0,
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50.0)),
                                  fillColor: HexColor('#212747'),
                                  child: const Icon(Icons.remove),
                                  onPressed: () {
                                    controller.DownAge();
                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                RawMaterialButton(
                                  fillColor: HexColor('#212747'),
                                  elevation: 6.0,
                                  disabledElevation: 6.0,
                                  constraints: const BoxConstraints.tightFor(
                                    width: 50.0,
                                    height: 50.0,
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50.0)),
                                  child: const Icon(Icons.add),
                                  onPressed: () {
                                    controller.UpAge();
                                  },
                                ),
                              ],
                            )
                          ],
                        ))),
              ],
            )),
            BottomButton(
              ButtonTitle: 'CALCULATE YOUR BMI',
              onTap: () {
                if (SelectedGender == null) {
                  Get.snackbar(
  "Peringantan", // Judul snackbar
  "Tolong pilih gender anda terlebih dahulu", // Isi snackbar
  snackPosition: SnackPosition.TOP, // Posisi snackbar
  duration: const Duration(seconds: 2), // Durasi snackbar
  backgroundColor: Colors.grey[800], // Warna background snackbar
  colorText: Colors.white, // Warna teks snackbar
);

                } else {
                  Get.to(
                    OutputView(
                        Hasil_text: controller.hasilnya(),
                        bmiResult: controller.calc_bmi(),
                        interpolation: controller.getInterpretation()),
                  );
                }
              },
            ),
          ],
        ));
  }
}

class BottomButton extends StatelessWidget {
  const BottomButton({required this.onTap, required this.ButtonTitle});

  final void Function()? onTap;
  final String ButtonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: HexColor('#FF0067'),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 70.0,
        child: Center(
          child: Text(
            ButtonTitle,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
