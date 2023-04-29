import 'package:nsfas_inspect/core/app_export.dart';
import 'package:nsfas_inspect/presentation/section_end_screen_filled_page/models/section_end_screen_filled_model.dart';

class SectionEndScreenFilledController extends GetxController {
  SectionEndScreenFilledController(this.sectionEndScreenFilledModelObj);

  Rx<SectionEndScreenFilledModel> sectionEndScreenFilledModelObj;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    sectionEndScreenFilledModelObj.value.dropdownItemList.value
        .forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    sectionEndScreenFilledModelObj.value.dropdownItemList.refresh();
  }
}
