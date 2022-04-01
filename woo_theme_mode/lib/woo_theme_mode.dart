library woo_theme_mode;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WooTheme {
  static ThemeData modeDark({
    // principal
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? scaffolBackground = Colors.white,
    Color? errorColor,
    // text button
    ButtonStyle? textButtonStyle,
    // chip
    ChipThemeData? chipTheme,
    // checkbox
    CheckboxThemeData? checkboxTheme,
    // buttonBarTheme
    ButtonBarThemeData? buttonBarTheme,
    // bottomSheetTheme
    BottomSheetThemeData? bottomSheetTheme,
    // dialogTheme
    DialogTheme? dialogTheme,
    // dividerTheme
    DividerThemeData? dividerTheme,
    // drawerTheme
    DrawerThemeData? drawerTheme,
    // elevatedButtonTheme
    ElevatedButtonThemeData? elevatedButtonTheme,
    // floatingActionButtonTheme
    FloatingActionButtonThemeData? floatingActionButtonTheme,
    // navigationRailTheme
    NavigationRailThemeData? navigationRailTheme,
    // navigationBarTheme
    NavigationBarThemeData? navigationBarTheme,
    // bottomNavigationBarTheme
    BottomNavigationBarThemeData? bottomNavigationBarTheme,
    // bottomAppBarTheme
    BottomAppBarTheme? bottomAppBarTheme,
    // bannerTheme
    MaterialBannerThemeData? bannerTheme,
    // appBarTheme
    AppBarTheme? appBarTheme,
    // cardTheme
    CardTheme? cardTheme,
    // inputDecorationTheme
    InputDecorationTheme? inputDecorationTheme,
    // scrollbarTheme
    ScrollbarThemeData? scrollbarTheme,
    // iconTheme
    IconThemeData? iconTheme,
    // dataTableTheme
    DataTableThemeData? dataTableTheme,
    // listTileTheme
    ListTileThemeData? listTileTheme,
    // outlinedButtonTheme
    OutlinedButtonThemeData? outlinedButtonTheme,
    // popupMenuTheme
    PopupMenuThemeData? popupMenuTheme,
    // progressIndicatorTheme
    ProgressIndicatorThemeData? progressIndicatorTheme,
    // radioTheme
    RadioThemeData? radioTheme,
    // sliderTheme
    SliderThemeData? sliderTheme,
    // SnackBarTheme
    SnackBarThemeData? snackBarTheme,
    // switchTheme
    SwitchThemeData? switchTheme,
    // tabBarTheme
    TabBarTheme? tabBarTheme,
    // timePickerTheme
    TimePickerThemeData? timePickerTheme,
    // toggleButtonsTheme
    ToggleButtonsThemeData? toggleButtonsTheme,
    // tooltipTheme
    TooltipThemeData? tooltipTheme,
    // text style
    TextStyle? t1,
    TextStyle? t2,
    TextStyle? t3,
    TextStyle? t4,
    TextStyle? tBoxDialogue,
    TextStyle? tPrincipalBoxDialogue,
    TextStyle? tbodyPrincipal,
    TextStyle? tbodySecondaire,
    TextStyle? tAltImage,
    TextStyle? tButton,
    TextStyle? tsmall,
    TextStyle? tlistTitle,
    TextStyle? tlistSubTitle,
  }) {
    return ThemeData(
      // couleur background scaffol
      scaffoldBackgroundColor: scaffolBackground,
      // tooltipTheme
      tooltipTheme: tooltipTheme,
      // toggleButtonsTheme
      toggleButtonsTheme: toggleButtonsTheme,
      // timePickerTheme
      timePickerTheme: timePickerTheme,
      // tabBarTheme
      tabBarTheme: tabBarTheme,
      // switchTheme
      switchTheme: switchTheme,
      // snackBarTheme
      snackBarTheme: snackBarTheme,
      // sliderTheme
      sliderTheme: sliderTheme,
      // radioTheme
      radioTheme: radioTheme,
      // progressIndicatorTheme
      progressIndicatorTheme: progressIndicatorTheme,
      // popupMenuTheme
      popupMenuTheme: popupMenuTheme,
      // outlinedButtonTheme
      outlinedButtonTheme: outlinedButtonTheme,
      // listTileTheme
      listTileTheme: listTileTheme,
      // dataTableTheme
      dataTableTheme: dataTableTheme,
      // iconTheme
      iconTheme: iconTheme,
      // scrollbarTheme
      scrollbarTheme: scrollbarTheme,
      // input decoration
      inputDecorationTheme: inputDecorationTheme,
      // card theme
      cardTheme: cardTheme,
      // appBar theme
      appBarTheme: appBarTheme,
      // material bar
      bannerTheme: bannerTheme,
      // appBar bottom
      bottomAppBarTheme: bottomAppBarTheme,
      // text theme
      textTheme: TextTheme(
        // Texte extrêmement volumineux.
        headline1: t1,
        // Texte très, très gros.
        headline2: t2,
        // Texte très gros.
        headline3: t3,
        // Gros texte.
        headline4: t4,
        // Utilisé pour le texte de grande taille dans les boîtes de dialogue
        // (par exemple, le mois et l'année dans la boîte de dialogue affichée
        // par showDatePicker ).
        headline5: tBoxDialogue,
        // Utilisé pour le texte principal dans les barres d'application
        // et les boîtes de dialogue (par exemple, AppBar.title
        // et AlertDialog.title ).
        headline6: tPrincipalBoxDialogue,
        // Le style de texte par défaut
        bodyText2: tbodyPrincipal,
        // Utilisé pour mettre en évidence le texte qui serait autrement que
        // bodyText2
        bodyText1: tbodySecondaire,
        // alt de l'image
        caption: tAltImage,
        // text elevatedbutton, textbutton, outlinebutton
        button: tButton,
        // utiliser pour le plus petit text
        overline: tsmall,
        // titre des listes
        subtitle1: tlistTitle,
        // sous titre des listes
        subtitle2: tlistSubTitle,
      ),
      // navigation bar bottom theme
      bottomNavigationBarTheme: bottomNavigationBarTheme,
      // navigation bar
      navigationBarTheme: navigationBarTheme,
      // navigation rail
      navigationRailTheme: navigationRailTheme,
      // bottom modal
      bottomSheetTheme: bottomSheetTheme,
      // btn bar
      buttonBarTheme: buttonBarTheme,
      // checkbox
      checkboxTheme: checkboxTheme,
      // puce
      chipTheme: chipTheme,
      // dialogue box
      dialogTheme: dialogTheme,
      // divider
      dividerTheme: dividerTheme,
      // drawer
      drawerTheme: drawerTheme,
      // text btn
      textButtonTheme: TextButtonThemeData(
        style: textButtonStyle,
      ),
      // elevated btn
      elevatedButtonTheme: elevatedButtonTheme,
      // float btn
      floatingActionButtonTheme: floatingActionButtonTheme,
      // schemas de couleur
      colorScheme: const ColorScheme.dark().copyWith(
        // primary color
        primary: primary,
        // secondary color
        secondary: secondary,
        // tertiary color
        tertiary: tertiary,
        // error color
        error: errorColor,
      ),
    );
  }

  static ThemeData modeClair({
    // principal
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? scaffolBackground = Colors.white,
    Color? errorColor,
    // text button
    ButtonStyle? textButtonStyle,
    // chip
    ChipThemeData? chipTheme,
    // checkbox
    CheckboxThemeData? checkboxTheme,
    // buttonBarTheme
    ButtonBarThemeData? buttonBarTheme,
    // bottomSheetTheme
    BottomSheetThemeData? bottomSheetTheme,
    // dialogTheme
    DialogTheme? dialogTheme,
    // dividerTheme
    DividerThemeData? dividerTheme,
    // drawerTheme
    DrawerThemeData? drawerTheme,
    // elevatedButtonTheme
    ElevatedButtonThemeData? elevatedButtonTheme,
    // floatingActionButtonTheme
    FloatingActionButtonThemeData? floatingActionButtonTheme,
    // navigationRailTheme
    NavigationRailThemeData? navigationRailTheme,
    // navigationBarTheme
    NavigationBarThemeData? navigationBarTheme,
    // bottomNavigationBarTheme
    BottomNavigationBarThemeData? bottomNavigationBarTheme,
    // bottomAppBarTheme
    BottomAppBarTheme? bottomAppBarTheme,
    // bannerTheme
    MaterialBannerThemeData? bannerTheme,
    // appBarTheme
    AppBarTheme? appBarTheme,
    // cardTheme
    CardTheme? cardTheme,
    // inputDecorationTheme
    InputDecorationTheme? inputDecorationTheme,
    // scrollbarTheme
    ScrollbarThemeData? scrollbarTheme,
    // iconTheme
    IconThemeData? iconTheme,
    // dataTableTheme
    DataTableThemeData? dataTableTheme,
    // listTileTheme
    ListTileThemeData? listTileTheme,
    // outlinedButtonTheme
    OutlinedButtonThemeData? outlinedButtonTheme,
    // popupMenuTheme
    PopupMenuThemeData? popupMenuTheme,
    // progressIndicatorTheme
    ProgressIndicatorThemeData? progressIndicatorTheme,
    // radioTheme
    RadioThemeData? radioTheme,
    // sliderTheme
    SliderThemeData? sliderTheme,
    // SnackBarTheme
    SnackBarThemeData? snackBarTheme,
    // switchTheme
    SwitchThemeData? switchTheme,
    // tabBarTheme
    TabBarTheme? tabBarTheme,
    // timePickerTheme
    TimePickerThemeData? timePickerTheme,
    // toggleButtonsTheme
    ToggleButtonsThemeData? toggleButtonsTheme,
    // tooltipTheme
    TooltipThemeData? tooltipTheme,
    // text style
    TextStyle? t1,
    TextStyle? t2,
    TextStyle? t3,
    TextStyle? t4,
    TextStyle? tBoxDialogue,
    TextStyle? tPrincipalBoxDialogue,
    TextStyle? tbodyPrincipal,
    TextStyle? tbodySecondaire,
    TextStyle? tAltImage,
    TextStyle? tButton,
    TextStyle? tsmall,
    TextStyle? tlistTitle,
    TextStyle? tlistSubTitle,
  }) {
    return ThemeData(
      // couleur background scaffol
      scaffoldBackgroundColor: scaffolBackground,
      // tooltipTheme
      tooltipTheme: tooltipTheme,
      // toggleButtonsTheme
      toggleButtonsTheme: toggleButtonsTheme,
      // timePickerTheme
      timePickerTheme: timePickerTheme,
      // tabBarTheme
      tabBarTheme: tabBarTheme,
      // switchTheme
      switchTheme: switchTheme,
      // snackBarTheme
      snackBarTheme: snackBarTheme,
      // sliderTheme
      sliderTheme: sliderTheme,
      // radioTheme
      radioTheme: radioTheme,
      // progressIndicatorTheme
      progressIndicatorTheme: progressIndicatorTheme,
      // popupMenuTheme
      popupMenuTheme: popupMenuTheme,
      // outlinedButtonTheme
      outlinedButtonTheme: outlinedButtonTheme,
      // listTileTheme
      listTileTheme: listTileTheme,
      // dataTableTheme
      dataTableTheme: dataTableTheme,
      // iconTheme
      iconTheme: iconTheme,
      // scrollbarTheme
      scrollbarTheme: scrollbarTheme,
      // input decoration
      inputDecorationTheme: inputDecorationTheme,
      // card theme
      cardTheme: cardTheme,
      // appBar theme
      appBarTheme: appBarTheme,
      // material bar
      bannerTheme: bannerTheme,
      // appBar bottom
      bottomAppBarTheme: bottomAppBarTheme,
      // text theme
      textTheme: TextTheme(
        // Texte extrêmement volumineux.
        headline1: t1,
        // Texte très, très gros.
        headline2: t2,
        // Texte très gros.
        headline3: t3,
        // Gros texte.
        headline4: t4,
        // Utilisé pour le texte de grande taille dans les boîtes de dialogue
        // (par exemple, le mois et l'année dans la boîte de dialogue affichée
        // par showDatePicker ).
        headline5: tBoxDialogue,
        // Utilisé pour le texte principal dans les barres d'application
        // et les boîtes de dialogue (par exemple, AppBar.title
        // et AlertDialog.title ).
        headline6: tPrincipalBoxDialogue,
        // Le style de texte par défaut
        bodyText2: tbodyPrincipal,
        // Utilisé pour mettre en évidence le texte qui serait autrement que
        // bodyText2
        bodyText1: tbodySecondaire,
        // alt de l'image
        caption: tAltImage,
        // text elevatedbutton, textbutton, outlinebutton
        button: tButton,
        // utiliser pour le plus petit text
        overline: tsmall,
        // titre des listes
        subtitle1: tlistTitle,
        // sous titre des listes
        subtitle2: tlistSubTitle,
      ),
      // navigation bar bottom theme
      bottomNavigationBarTheme: bottomNavigationBarTheme,
      // navigation bar
      navigationBarTheme: navigationBarTheme,
      // navigation rail
      navigationRailTheme: navigationRailTheme,
      // bottom modal
      bottomSheetTheme: bottomSheetTheme,
      // btn bar
      buttonBarTheme: buttonBarTheme,
      // checkbox
      checkboxTheme: checkboxTheme,
      // puce
      chipTheme: chipTheme,
      // dialogue box
      dialogTheme: dialogTheme,
      // divider
      dividerTheme: dividerTheme,
      // drawer
      drawerTheme: drawerTheme,
      // text btn
      textButtonTheme: TextButtonThemeData(
        style: textButtonStyle,
      ),
      // elevated btn
      elevatedButtonTheme: elevatedButtonTheme,
      // float btn
      floatingActionButtonTheme: floatingActionButtonTheme,
      // schemas de couleur
      colorScheme: const ColorScheme.light().copyWith(
        // primary color
        primary: primary,
        // secondary color
        secondary: secondary,
        // tertiary color
        tertiary: tertiary,
        // error color
        error: errorColor,
      ),
    );
  }
}

class WooThemeState extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  /// fonction qui modifie la valeur du theme
  void changeTheme(bool value) {
    themeMode = value ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

/// provider class wooThemeState
final themeChange = ChangeNotifierProvider((ref) => WooThemeState());

/// btn switch pour activer désactiver le mode dark
class WooThemeSwitch extends ConsumerStatefulWidget {
  final Icon iconTrue;
  final Icon iconFalse;

  const WooThemeSwitch({Key? key, required this.iconFalse, required this.iconTrue})
      : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WooThemeSwitchState();
}

class _WooThemeSwitchState extends ConsumerState<WooThemeSwitch> {
  Icon? _iconTrue;
  Icon? _iconFalse;

  @override
  void initState() {
    super.initState();
    _iconTrue = widget.iconTrue;
    _iconFalse = widget.iconFalse;
  }

  @override
  Widget build(BuildContext context) {
    /// on recupere si modedark est activer ou pas
    final trueDark = ref.watch(themeChange).isDarkMode;

    return IconButton(
      onPressed: () => ref.watch(themeChange).changeTheme(!trueDark),
      /// si il y a le mode dark ou si il y a le mode dark system
      /// on affiche un icontrue sinon on affiche iconfalse
      icon: ref.watch(themeChange).themeMode == ThemeMode.light ||
              MediaQuery.platformBrightnessOf(context) == Brightness.light
          ? _iconTrue!
          : _iconFalse!,
    );
  }
}
