# woopear_package_dart

## construction des themes  
 
1. creer un fichier `themes.dart` à l'intérieur
2. ajouter le code ci-dessous dans le fichier `themes.dart`

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
> ainsi qu'un bouton switch basique que l'on détail ci-dessous 
> il faut cependant l'instancier dans votre projet  
> et il vous faudra le ManagerState [flutter_riverpod](https://pub.dev/packages/flutter_riverpod)  
> pour l'exemple je vais utilise `ProviderScope` du package  
> l'écriture me semble plus clean  
> vous pouvez bien sur utiliser la méthode que vous voulez.  

- ajout du `ProviderScope` du package **flutter_riverpod**    

```dart
void main() async {
    const ProviderScope(child: App());
}
```  
*oui c'est simpel ;-)*  

## fonction changeTheme()  

1. ajouter la fonction à votre bouton switch

```dart
// implementation
void changeTheme(bool value) {
    themeMode = value ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

// exemple d'utilisation  
Widget build(BuildContext context) {
    return Switch.adaptive(
        value: ref.watch(wooThemeChange).isDarkMode,
        onChanged: (value) =>
            ref.watch(wooThemeChange).changeTheme(!value),);
  }
```  
> passez en argument la valeur de votre bouton switch  
> et la fonction modifiera le theme pour vous.  
> dans l'exemple j'utilise ref.watch qui permet d'utiliser  
> la fonction. encore une fois vous pouvez faire autrement  
> `wooThemeChange` est le provider creer par `riverpod`  

2. utilisation du bouton switch fournis par le package  

```dart
/// fournisser les icons que vous souhaitez utiliser
child: WooThemeSwitch(
  iconTrue: Icon(Icons.votreicon), /// si le mode dark est activer (true)
  iconFalse: Icon(Icons.votreicon), /// si le mode dark est désactivé (false)
)
```  

> le bouton utilise en interne la fonction `changeTheme`  
> et utilise le provider `wooThemeChange`

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
      themeMode: ref.watch(themeState).themeMode,
      // nom de votre variable dans le fichier themes.dart
      theme: themeClair,
      // nom de votre variable dans le fichier themes.dart
      darkTheme: themeDark,
      home: const Test(),
    );
```  







