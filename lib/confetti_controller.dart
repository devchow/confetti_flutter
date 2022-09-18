import 'package:confetti/confetti.dart';
import 'package:get/get.dart';

class GetConfettiController extends GetxController {
  //
  var isPlaying = false.obs;
  //
  late ConfettiController confettiController;
  //
  @override
  void onInit() {
    super.onInit();
    confettiController = ConfettiController();
  }
  //
  @override
  void onReady() {
    super.onReady();
  }
  //
  @override
  void onClose() {
    confettiController.dispose();
  }
  //
  startConfettiAnimation() {
    if (confettiController.state == ConfettiControllerState.playing) {
      isPlaying.value = false;
      confettiController.stop();
    } else {
      isPlaying.value = true;
      confettiController.play();
    }
  }
}