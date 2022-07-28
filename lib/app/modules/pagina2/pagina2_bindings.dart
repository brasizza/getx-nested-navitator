import 'package:get/get.dart';
import './pagina2_controller.dart';

class Pagina2Bindings implements Bindings {
    @override
    void dependencies() {
        Get.put(Pagina2Controller());
    }
}