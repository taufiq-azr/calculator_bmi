import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../routes/app_pages.dart';

import '../../home/views/home_view.dart';
import '../../widgets/views/Navbar.dart';
import '../../widgets/views/containerHome.dart';
import '../../widgets/views/iconContent.dart';
import '../controllers/output_controller.dart';

class OutputView extends GetView<OutputController> {
  const OutputView(
      {super.key,
      required this.Hasil_text,
      required this.bmiResult,
      required this.interpolation});

  final bmiResult;
  final Hasil_text;
  final interpolation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: WidgetsAppBar,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: TextStyleCm,
              ),
            )),
            Expanded(
                flex: 5,
                child: ContenerHome(
                  colour: HexColor('#282C4F'),
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        Hasil_text.toUpperCase(),
                        style: const TextStyle(
                          color: Color(0xff24d876),
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        bmiResult,
                        style: TextStyleCm,
                      ),
                      Text(
                        interpolation,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 22.0,
                          wordSpacing: 1,
                          fontStyle: FontStyle.italic,
                        ),
                      )
                    ],
                  ),
                )),
            BottomButton(
              ButtonTitle: 'RE-CALCULATE',
              onTap: () {
                // pada saat kembali ke halaman home
// hapus objek lama
// buat objek baru
                SelectedGender = null;
                Get.offAllNamed(Routes.HOME);
              },
            )
          ],
        ));
  }
}
