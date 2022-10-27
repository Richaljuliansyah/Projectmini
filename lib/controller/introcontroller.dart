import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:todo/app/core/keys.dart';
import 'package:todo/app/screen/home/widgets/demopagestate.dart';
import 'package:todo/main.dart';
import 'package:todo/model/introcontent.dart';

class IntroController extends GetxController {
  RxInt currentIndex = 0.obs;
  PageController pagecontroller = PageController();

  actionbutton() {
    if (currentIndex.value == contents.length - 1) {
      preferences!.setBool(DISPLAYINTRO, true);
      Get.off(()=>Demopagestate());
    }
    pagecontroller.nextPage(duration: 800.milliseconds, curve: Curves.ease);
  }

  List<IntroContent> contents = [
    IntroContent(
        imageName: "assets/taking-notes-amico.png",
        title: "Buat Tugas Anda",
        description:
            "Buat tugas Anda untuk memastikan setiap tugas yang Anda miliki dapat diselesaikan tepat waktu"),
    IntroContent(
        imageName: "assets/to-do-list-cuate.png",
        title: "Kelola Tugas Harian Anda",
        description:
            "Dengan menggunakan aplikasi ini Anda akan dapat mengelola tugas harian Anda"),
    IntroContent(
        imageName: "assets/writing-a-letter-rafiki.png",
        title: "Daftar Periksa Tugas Selesai",
        description:
            "Jika Anda menyelesaikan tugas Anda, sehingga Anda dapat melihat hasil yang Anda kerjakan setiap hari")
  ];
}

class sharedprefsintro {
  
}
