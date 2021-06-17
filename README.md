# getx_binding_localizations

How use getx binding and localization.


## Bindings

 - It gives the opportunity to run controls before which page will be opened.

```dart
 class HomeBinding with Bindings{

     @override
     void dependencies() async{
         Get.put(HomeScreenController());
     }
 }
```
## Route Management

 - We define pages here.

```dart
    class RouteManagement{
        RouteManagement._();

        static const String initialRoute = '/HomeScreen';
        
        static const List<GetPage> routeList = [

            GetPage(
                name: '/HomeScreen',
                page: () => HomeScreen(),
                binding: HomeBinding(),
                transition:
                ..
                ..
                ..
            ),

               GetPage(
                name: '/OtherScreen',
                page: () => OtherScreen(),
                binding: OtherBinding(),
                transition:
                ..
                ..
                ..
            ),
        ];
    }
```

## MaterialApp

```dart
    return GetMaterialApp(
        /// first screen
        initialRoute : RouteManagement.initialRoute,
        /// other screens.
        getPages : RouteManagement.routeList,
    );
```

### how can call pages

 - Get.toNamed('/OtherScreen'),
 - Get.toNamed('/HomeScreen'),


 # Localization

 - Firstly create languages map

```dart

// English
Map<String,String> en={
    'decrease' : 'Decrease',
    'increment' : 'Increment',
}

/// Turkish
Map<String,String> tr ={
    'decrease' :'Arttır',
    'decrease': 'Azalt',
}


```

- Create Localization class extends from [Translations]

```dart
    class Localization extends Transitions{
        @override
        Map<String,Map<String,String>> get keys => {
            'en' : en,
            'tr' : tr,
        }
    }
```

- Create TransitionHelper class

```dart
    class TransitionHelper{
        static String get increment => 'increment'.tr,
        static String get decrease => 'decrease'.tr,
    }
```

## Main

```dart
    GetMaterialApp(
        locale: Get.locale ?? Locale('tr'),
        translations : Localization(),
    );
```
- how calling?
  - Text(TranstionHelper.increment),
  - Text(TransitonHelper.decrease),