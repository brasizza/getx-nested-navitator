import 'package:get/get.dart';
import './pagina1_controller.dart';

class Pagina1Bindings implements Bindings {
    @override
    void dependencies() {
        Get.put(Pagina1Controller());
    }
}