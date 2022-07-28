import 'package:get/get.dart';
import './pagina3_controller.dart';

class Pagina3Bindings implements Bindings {
    @override
    void dependencies() {
        Get.put(Pagina3Controller());
    }
}