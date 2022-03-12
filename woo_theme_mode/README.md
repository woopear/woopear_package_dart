# woopear_package_dart

## construction des themes  

1. creer un dossier `theme_data`  
2. creer un fichier `themes.dart` à l'intérieur
3. ajouter le code ci-dessous dans le fichier `themes.dart`

```dart
// proprieter pour theme claire
final themeClair = WooTheme.modeClair();

// proprieter pour theme dark
final themeDark = WooTheme.modeDark();
```  

## ajout de proprieter  

> si les proprietés sont dite principal (voir partir propsPrincipal)  
> vous devez les renseigner directement dans les fonctions  
> fournis ci-dessus, sinon creer des fichiers séparer et creer les class  
> de themeData des widget ciblé.  

- ajouter proprieter principal  

```dart
// proprieter pour theme claire
final themeClair = WooTheme.modeClair(
    // props principal
    primary: Colors.red // ici votre couleur custom
);
```  

- ajouter une proprieter de themeData  

1. creer un fichier du themeData du widget ciblé  
ex: `app_bar_themedata.dart`  
2. puis creer votre variable contenant le themedata  

```dart
// fichier => app_bar_themedata.dart
import 'package:flutter/material.dart';

final appBarTheme = AppBarTheme(
    backgroundColor: Colors.red,
    elevation: 5.0,
),
```  

3. ensuite affecter votre variable à la fonction dans le fichier `themes.dart`  

```dart
// fichier => themes.dart  
import 'package:nomdeprojet/theme_data/app_bar_themedata.dart';

// proprieter pour theme claire
final themeClair = WooTheme.modeClair(
    // props principal
    primary: Colors.red, // ici votre couleur custom
    appBarTheme: appBarTheme, // votre themeData d'un widget
);
```  

## instancier les providers  

> ce package fournis un provider prêt à l'emploi  
> il faut cependant l'instancier dans votre projet  
> pour utiliser sa fonction changeTheme()  
> dans votre bouton switch de votre application  
> le changement de theme se fait automatiquement  
> vous aurez besoin du package provider [ici](https://pub.dev/packages?q=provider)  
> pour l'exemple je vais utilise `Multiprovider` du package  
> l'écriture me semble plus clean  
> vous pouvez bien sur utiliser la méthode que vous voulez.  

- ajout du `WooProvider`  

```dart
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => WooThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}
```

- fonction changeTheme()  

> ajouter la fonction à votre bouton switch

```dart
// implementation
void changeTheme(bool value) {
    themeMode = value ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

// exemple d'utilisation  
Widget build(BuildContext context) {
    return Switch.adaptive(
        value: context.watch<WooThemeProvider>().isDarkMode,
        onChanged: (value) =>
            context.read<WooThemeProvider>().changeTheme(value),);
  }
```  
> passez en argument la valeur de votre bouton switch  
> et la fonction modifiera le theme pour vous.  
> dans l'exemple j'utilise context.read qui permet d'utiliser  
> la fonction. encore une fois vous pouvez faire autrement  

## ajout des themes à votre application  

> une fois tous mis en place  
> ajoutons nos themes à l'application  
> tous ce passe dans le `MaterialApp()`  

```dart
return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      // utilisation du context pour recuperer
      // le themeMode qui ce charge de modifier votre theme
      // via votre bouton switch ou du theme du systeme 
      themeMode: context.watch<WooThemeProvider>().themeMode,
      // nom de votre variable dans le fichier themes.dart
      theme: themeClair,
      // nom de votre variable dans le fichier themes.dart
      darkTheme: themeDark,
      home: const Test(),
    );
```  







