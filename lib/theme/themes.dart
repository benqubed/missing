import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';

// Color _mainColor = Color(0xff363f45);
// Color _compColor = Color(0xfff89520);
// Color _balanceColor = Color(0xff3b3b3b);

Color _mainColorTwo = Color(0xff283856);
Color _compColorTwo = Color(0xffF89520);
Color _balanceColorTwo = Color(0xff3a3a3a);
Color _darkModeColor = const Color(0xff363f45);
Color _primaryColor = const Color.fromRGBO(36, 45, 67, 1);
MaterialColor _primaryColorSwatch = const MaterialColor(
  0xff283856,
  <int, Color>{
    50: Color(0xffe9ebee), //10%
    100: Color(0xffd4d7dd), //20%
    200: Color(0xffbec3cc), //30%
    300: Color(0xffa9afbb), //40%
    400: Color(0xff939baa), //50%
    500: Color(0xff7e8799), //60%
    600: Color(0xff687388), //70%
    700: Color(0xff525f77), //80%
    800: Color(0xff3d4b66), //90%
    900: Color(0xff283856), //100%
  },
);

Color _whiteColor = Colors.white;
Color _blackColor = Colors.black;

Color _lightThemeBackground = Colors.white;
Color _darkThemeBackground = Color(0xff000000);

class AppThemes {
  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: _primaryColor,
      primaryColorBrightness: Brightness.light,
      colorScheme: ColorScheme.fromSwatch(primarySwatch: _primaryColorSwatch),
      backgroundColor: _lightThemeBackground,
      scaffoldBackgroundColor: _lightThemeBackground,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: _primaryColor,
          ),
          actionsIconTheme: IconThemeData(
            color: _primaryColor,
          ),
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: _primaryColor,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: _primaryColor,

            // Status bar brightness (optional)
            statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          elevation: 0.0),
      bannerTheme: MaterialBannerThemeData(),
      bottomAppBarColor: _whiteColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(),
      bottomSheetTheme: BottomSheetThemeData(),
      buttonBarTheme: ButtonBarThemeData(),
      buttonTheme: ButtonThemeData(),
      canvasColor: _whiteColor,
      cardColor: _whiteColor,
      cardTheme: CardTheme(),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all<Color>(_primaryColor),
      ),
      // chipTheme: ChipThemeData(),
      cupertinoOverrideTheme: NoDefaultCupertinoThemeData(),
      dataTableTheme: DataTableThemeData(),
      dialogBackgroundColor: _primaryColor,
      dialogTheme: DialogTheme(
          backgroundColor: const Color(0xffffffff),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          titleTextStyle: TextStyle(color: _primaryColor, fontWeight: FontWeight.w400, fontSize: 24.0, letterSpacing: 0.0),
          contentTextStyle: TextStyle(color: Colors.black)),
      disabledColor: Colors.grey,
      dividerTheme: const DividerThemeData(color: Colors.grey, thickness: 1),
      // drawerTheme : DrawerThemeData(),
      elevatedButtonTheme: ElevatedButtonThemeData(),
      errorColor: Colors.red,
      floatingActionButtonTheme: FloatingActionButtonThemeData(),
      focusColor: Colors.blue.shade500,
      highlightColor: Colors.grey.shade50,
      hintColor: _primaryColor,
      hoverColor: _primaryColor,
      iconTheme: const IconThemeData(color: Colors.grey, size: 28, opacity: 1.0),
      indicatorColor: _primaryColor,
      inputDecorationTheme: InputDecorationTheme(),
      // listTileTheme: ListTileThemeData(),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      navigationRailTheme: NavigationRailThemeData(),
      outlinedButtonTheme: OutlinedButtonThemeData(),
      pageTransitionsTheme: PageTransitionsTheme(),
      platform: TargetPlatform.android,
      popupMenuTheme: PopupMenuThemeData(),
      primaryIconTheme: IconThemeData(),
      primaryTextTheme: TextTheme(),
      progressIndicatorTheme: ProgressIndicatorThemeData(),
      radioTheme: RadioThemeData(),
      scrollbarTheme: ScrollbarThemeData(),
      // selectedRowColor: _primaryColor,
      shadowColor: _primaryColor,
      sliderTheme: SliderThemeData(),
      snackBarTheme: SnackBarThemeData(),
      // splashColor: _primaryColor,
      // splashFactory : InteractiveInkFeatureFactory(),
      switchTheme: SwitchThemeData(),
      tabBarTheme: TabBarTheme(),
      textButtonTheme: TextButtonThemeData(),
      textSelectionTheme: TextSelectionThemeData(),
      textTheme: TextTheme(
        headline1: TextStyle(color: _blackColor, fontWeight: FontWeight.w300, fontSize: 96.0, letterSpacing: -1.5),
        headline2: TextStyle(color: _blackColor, fontWeight: FontWeight.w300, fontSize: 60.0, letterSpacing: -0.5),
        headline3: TextStyle(color: _blackColor, fontWeight: FontWeight.w400, fontSize: 48.0, letterSpacing: 0.0),
        headline4: TextStyle(color: _blackColor, fontWeight: FontWeight.w400, fontSize: 34.0, letterSpacing: 0.25),
        headline5: TextStyle(color: _blackColor, fontWeight: FontWeight.w400, fontSize: 24.0, letterSpacing: 0.0),
        headline6: TextStyle(color: _blackColor, fontWeight: FontWeight.w500, fontSize: 20.0, letterSpacing: 0.15),
        subtitle1: TextStyle(color: _blackColor, fontWeight: FontWeight.w400, fontSize: 16.0, letterSpacing: 0.15),
        subtitle2: TextStyle(color: _blackColor, fontWeight: FontWeight.w500, fontSize: 14.0, letterSpacing: 0.1),
        bodyText1: TextStyle(color: _blackColor, fontWeight: FontWeight.w400, fontSize: 16.0, letterSpacing: 0.5),
        bodyText2: TextStyle(color: _blackColor, fontWeight: FontWeight.w400, fontSize: 14.0, letterSpacing: 0.25),
        button: TextStyle(color: _blackColor, fontWeight: FontWeight.w500, fontSize: 14.0, letterSpacing: 1.25),
        caption: TextStyle(color: _blackColor, fontWeight: FontWeight.w400, fontSize: 12.0, letterSpacing: 0.4),
        overline: TextStyle(color: _blackColor, fontWeight: FontWeight.w400, fontSize: 10.0, letterSpacing: 1.5),
      ).apply(fontFamily: 'Poppins'),
      timePickerTheme: TimePickerThemeData(),
      // toggleableActiveColor: _primaryColor,
      toggleButtonsTheme: ToggleButtonsThemeData(),
      tooltipTheme: TooltipThemeData(),
      // typography: Typography(),
      // unselectedWidgetColor: _primaryColor,
      visualDensity: VisualDensity());

  static final darkTheme = ThemeData(
      //brightness: Brightness.dark,
      primaryColor: _primaryColor,
      // primaryColorBrightness: Brightness.dark,
      colorScheme: ColorScheme.fromSwatch(primarySwatch: _primaryColorSwatch),
      backgroundColor: _darkThemeBackground,
      scaffoldBackgroundColor: _darkThemeBackground,
      appBarTheme: const AppBarTheme(titleTextStyle: TextStyle(fontFamily: 'Azonix', fontSize: 18), elevation: 0.0),
      bannerTheme: MaterialBannerThemeData(),
      bottomAppBarColor: _whiteColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(),
      bottomSheetTheme: BottomSheetThemeData(),
      buttonBarTheme: ButtonBarThemeData(),
      buttonTheme: ButtonThemeData(),
      canvasColor: _whiteColor,
      cardColor: _whiteColor,
      cardTheme: CardTheme(),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all<Color>(_primaryColor),
      ),
      // chipTheme: ChipThemeData(),
      cupertinoOverrideTheme: NoDefaultCupertinoThemeData(),
      dataTableTheme: DataTableThemeData(),
      dialogBackgroundColor: _primaryColor,
      dialogTheme: DialogTheme(
          backgroundColor: const Color(0xffffffff),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          titleTextStyle: TextStyle(color: _primaryColor, fontWeight: FontWeight.w400, fontSize: 24.0, letterSpacing: 0.0),
          contentTextStyle: TextStyle(color: Colors.black)),
      disabledColor: Colors.grey,
      dividerTheme: const DividerThemeData(color: Colors.grey, thickness: 1),
      // drawerTheme : DrawerThemeData(),
      elevatedButtonTheme: ElevatedButtonThemeData(),
      errorColor: Colors.red,
      floatingActionButtonTheme: FloatingActionButtonThemeData(),
      focusColor: Colors.blue.shade500,
      highlightColor: Colors.blue.shade900,
      hintColor: _primaryColor,
      hoverColor: _primaryColor,
      iconTheme: const IconThemeData(color: Colors.grey, size: 28, opacity: 1.0),
      indicatorColor: _primaryColor,
      inputDecorationTheme: InputDecorationTheme(),
      // listTileTheme: ListTileThemeData(),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      navigationRailTheme: NavigationRailThemeData(),
      outlinedButtonTheme: OutlinedButtonThemeData(),
      pageTransitionsTheme: PageTransitionsTheme(),
      platform: TargetPlatform.android,
      popupMenuTheme: PopupMenuThemeData(),
      primaryIconTheme: IconThemeData(),
      primaryTextTheme: TextTheme(),
      progressIndicatorTheme: ProgressIndicatorThemeData(),
      radioTheme: RadioThemeData(),
      scrollbarTheme: ScrollbarThemeData(),
      // selectedRowColor: _primaryColor,
      shadowColor: _primaryColor,
      sliderTheme: SliderThemeData(),
      snackBarTheme: SnackBarThemeData(),
      // splashColor: _primaryColor,
      // splashFactory : InteractiveInkFeatureFactory(),
      switchTheme: SwitchThemeData(),
      tabBarTheme: TabBarTheme(),
      textButtonTheme: TextButtonThemeData(),
      textSelectionTheme: TextSelectionThemeData(),
      textTheme: TextTheme(
        headline1: TextStyle(color: _whiteColor, fontWeight: FontWeight.w300, fontSize: 96.0, letterSpacing: -1.5),
        headline2: TextStyle(color: _whiteColor, fontWeight: FontWeight.w300, fontSize: 60.0, letterSpacing: -0.5),
        headline3: TextStyle(color: _whiteColor, fontWeight: FontWeight.w400, fontSize: 48.0, letterSpacing: 0.0),
        headline4: TextStyle(color: _whiteColor, fontWeight: FontWeight.w400, fontSize: 34.0, letterSpacing: 0.25),
        headline5: TextStyle(color: _whiteColor, fontWeight: FontWeight.w400, fontSize: 24.0, letterSpacing: 0.0),
        headline6: TextStyle(color: _whiteColor, fontWeight: FontWeight.w500, fontSize: 20.0, letterSpacing: 0.15),
        subtitle1: TextStyle(color: _whiteColor, fontWeight: FontWeight.w400, fontSize: 16.0, letterSpacing: 0.15),
        subtitle2: TextStyle(color: _whiteColor, fontWeight: FontWeight.w500, fontSize: 14.0, letterSpacing: 0.1),
        bodyText1: TextStyle(color: _whiteColor, fontWeight: FontWeight.w400, fontSize: 16.0, letterSpacing: 0.5),
        bodyText2: TextStyle(color: _whiteColor, fontWeight: FontWeight.w400, fontSize: 14.0, letterSpacing: 0.25),
        button: TextStyle(color: _whiteColor, fontWeight: FontWeight.w500, fontSize: 14.0, letterSpacing: 1.25),
        caption: TextStyle(color: _whiteColor, fontWeight: FontWeight.w400, fontSize: 12.0, letterSpacing: 0.4),
        overline: TextStyle(color: _whiteColor, fontWeight: FontWeight.w400, fontSize: 10.0, letterSpacing: 1.5),
      ).apply(fontFamily: 'OpenSans'),
      timePickerTheme: TimePickerThemeData(),
      // toggleableActiveColor: _primaryColor,
      toggleButtonsTheme: ToggleButtonsThemeData(),
      tooltipTheme: TooltipThemeData(),
      // typography: Typography(),
      // unselectedWidgetColor: _primaryColor,
      visualDensity: VisualDensity());
}
