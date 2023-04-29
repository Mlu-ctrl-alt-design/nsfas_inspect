import 'package:get/get.dart';
import 'package:nsfas_inspect/data/models/selectionPopupModel/selection_popup_model.dart';
import 'listroomcounter_item_model.dart';

class SectionEndScreenFilledModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<ListroomcounterItemModel>> listroomcounterItemList =
      Rx(List.generate(2, (index) => ListroomcounterItemModel()));
}
