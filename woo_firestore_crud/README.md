# woo_firestore_crud  

> package qui représente les fonctions élémentaire  
> du crud firestore  

## class d'accès du package  

- implementation

```dart
class WooFirestore {}
```  

- utilisation  

```dart
class ClassTest {
    final Woofirestore woofirestore = Woofirestore.instance;
}
```  
**utiliser votre variable pour appeller les différentes fonctions**

## fonction / utilisation  

- `set` creer un document deja existant  
- `add` ajouter un document à une collection  
- `update` modifie un document  
- `delete` supprime un document  
- `getCol` recupere des documents d'une collection  
- `getDoc` recupere un document  
- `streamCol` ecouteur sur une collection  
- `streamDoc` ecouteur sur un docmuent  

**pour chaque fonction vous devrez fournir des arguments  
utiliser l'intellisense afin de voir les arguments demandés**