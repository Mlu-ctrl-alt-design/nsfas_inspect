import 'package:nsfas_inspect/presentation/section_end_screen_filled_container_screen/section_end_screen_filled_container_screen.dart';
import 'package:nsfas_inspect/presentation/section_end_screen_filled_container_screen/binding/section_end_screen_filled_container_binding.dart';
import 'package:nsfas_inspect/presentation/section_end_screen/section_end_screen.dart';
import 'package:nsfas_inspect/presentation/section_end_screen/binding/section_end_binding.dart';
import 'package:nsfas_inspect/presentation/k3_screen/k3_screen.dart';
import 'package:nsfas_inspect/presentation/k3_screen/binding/k3_binding.dart';
import 'package:nsfas_inspect/presentation/inspection_ap_end_screen/inspection_ap_end_screen.dart';
import 'package:nsfas_inspect/presentation/inspection_ap_end_screen/binding/inspection_ap_end_binding.dart';
import 'package:nsfas_inspect/presentation/inspection_end_screen/inspection_end_screen.dart';
import 'package:nsfas_inspect/presentation/inspection_end_screen/binding/inspection_end_binding.dart';
import 'package:nsfas_inspect/presentation/sign_in_mobile_empty_screen/sign_in_mobile_empty_screen.dart';
import 'package:nsfas_inspect/presentation/sign_in_mobile_empty_screen/binding/sign_in_mobile_empty_binding.dart';
import 'package:nsfas_inspect/presentation/twelve_screen/twelve_screen.dart';
import 'package:nsfas_inspect/presentation/twelve_screen/binding/twelve_binding.dart';
import 'package:nsfas_inspect/presentation/screenloader_screen/screenloader_screen.dart';
import 'package:nsfas_inspect/presentation/screenloader_screen/binding/screenloader_binding.dart';
import 'package:nsfas_inspect/presentation/thirtytwo_screen/thirtytwo_screen.dart';
import 'package:nsfas_inspect/presentation/thirtytwo_screen/binding/thirtytwo_binding.dart';
import 'package:nsfas_inspect/presentation/thirtythree_screen/thirtythree_screen.dart';
import 'package:nsfas_inspect/presentation/thirtythree_screen/binding/thirtythree_binding.dart';
import 'package:nsfas_inspect/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:nsfas_inspect/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String sectionEndScreenFilledPage =
      '/section_end_screen_filled_page';

  static const String sectionEndScreenFilledContainerScreen =
      '/section_end_screen_filled_container_screen';

  static const String sectionEndScreen = '/section_end_screen';

  static const String k3Screen = '/k3_screen';

  static const String inspectionApEndScreen = '/inspection_ap_end_screen';

  static const String inspectionEndScreen = '/inspection_end_screen';

  static const String signInMobileEmptyScreen = '/sign_in_mobile_empty_screen';

  static const String twelveScreen = '/twelve_screen';

  static const String fourhundredsevenPage = '/fourhundredseven_page';

  static const String screenloaderScreen = '/screenloader_screen';

  static const String thirtytwoScreen = '/thirtytwo_screen';

  static const String thirtythreeScreen = '/thirtythree_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: sectionEndScreenFilledContainerScreen,
      page: () => SectionEndScreenFilledContainerScreen(),
      bindings: [
        SectionEndScreenFilledContainerBinding(),
      ],
    ),
    GetPage(
      name: sectionEndScreen,
      page: () => SectionEndScreen(),
      bindings: [
        SectionEndBinding(),
      ],
    ),
    GetPage(
      name: k3Screen,
      page: () => K3Screen(),
      bindings: [
        K3Binding(),
      ],
    ),
    GetPage(
      name: inspectionApEndScreen,
      page: () => InspectionApEndScreen(),
      bindings: [
        InspectionApEndBinding(),
      ],
    ),
    GetPage(
      name: inspectionEndScreen,
      page: () => InspectionEndScreen(),
      bindings: [
        InspectionEndBinding(),
      ],
    ),
    GetPage(
      name: signInMobileEmptyScreen,
      page: () => SignInMobileEmptyScreen(),
      bindings: [
        SignInMobileEmptyBinding(),
      ],
    ),
    GetPage(
      name: twelveScreen,
      page: () => TwelveScreen(),
      bindings: [
        TwelveBinding(),
      ],
    ),
    GetPage(
      name: screenloaderScreen,
      page: () => ScreenloaderScreen(),
      bindings: [
        ScreenloaderBinding(),
      ],
    ),
    GetPage(
      name: thirtytwoScreen,
      page: () => ThirtytwoScreen(),
      bindings: [
        ThirtytwoBinding(),
      ],
    ),
    GetPage(
      name: thirtythreeScreen,
      page: () => ThirtythreeScreen(),
      bindings: [
        ThirtythreeBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SectionEndScreenFilledContainerScreen(),
      bindings: [
        SectionEndScreenFilledContainerBinding(),
      ],
    )
  ];
}
