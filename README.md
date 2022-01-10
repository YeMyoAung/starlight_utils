# Starlight Utils

The easiest way to use navigation, context less and useful methods.

## Features
| Name |  Status |
|------|------|
| Context Less Navigation Service | ✅ |
| Context Less Dialog | ✅ |
| Context Less Bottom Sheet | ✅ |
| Context Less Snackbar | ✅ |
| Context Less DatePicker | ✅ |
| Context Less TimePicker | ✅ |
| Time Difference In String | ✅ |
| Currency Format | ✅ |
| Password Validate | ✅ |
| Email Validate | ✅ |
| White Space Remove | ✅ |
| To Validate | ✅ |
| MediaQuery | ✅ |
| Theme | ✅ |


## ScreenShots
<a href="#ScreenShotsAndroid">
  <img src="https://user-images.githubusercontent.com/26484667/148670446-19de5ca0-6ba7-4ace-9baf-ee1340e73a38.png" width="200px">
</a>&nbsp;&nbsp;
<a href="#ScreenShotsAndroid">
  <img src="https://user-images.githubusercontent.com/26484667/148670438-65072a92-b88a-4628-b733-55b3b1b7bbcc.png" width="200px">
</a>&nbsp;&nbsp;
<a href="#ScreenShotsAndroid">
  <img src="https://user-images.githubusercontent.com/26484667/148670423-8875a98d-eb3d-4e2f-bd2a-1ebdb08adea3.png" width="200px">
</a>&nbsp;&nbsp;
<a href="#ScreenShotsAndroid">
  <img src="https://user-images.githubusercontent.com/26484667/148670455-6fd51427-cfa3-4e5a-b51d-bdc151e967b8.png" width="200px">
</a>&nbsp;&nbsp;
<a href="#ScreenShotsAndroid">
  <img src="https://user-images.githubusercontent.com/26484667/148670501-f8e7ad97-2d76-4f0c-8bb0-70afb8432d53.png" width="200px">
</a>&nbsp;&nbsp;
<a href="#ScreenShotsAndroid">
  <img src="https://user-images.githubusercontent.com/26484667/148670465-720b4179-8e6f-49f2-89aa-c49425d3ffb4.png" width="200px">
</a>&nbsp;&nbsp;
<a href="#ScreenShotsAndroid">
  <img src="https://user-images.githubusercontent.com/26484667/148670629-40842497-1772-45c1-839d-c87fc249bbe6.png" width="200px">
</a>&nbsp;&nbsp;
<a href="#ScreenShotsAndroid">
  <img src="https://user-images.githubusercontent.com/26484667/148670901-01169586-5b36-49d3-a589-30b11a852dd5.png" width="200px">
</a>&nbsp;&nbsp;


## Installation

Add starlight_utils as dependency to your pubspec file.

```
   starlight_utils: 
    git:
      url: https://github.com/YeMyoAung/starlight_utils.git
```
## Setup

No additional integration steps are required for Android and Ios.

## Usage

First of all you need to import our package.

```dart
import 'package:starlight_utils/starlight_utils.dart';
```

And then you can use easily.

## Note
If you want to use context less navigation service
you need to set navigation key.
If you want to use context less dialog,bottomsheet,...
you need to inovke StarlightUtils

## Context Less Navigation
```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    StarlightUtils.push(MyHome());///`Navigation.pushNamed()` shortcut.
  
    StarlightUtils.pushNamed('home');///`Navigation.pushNamed()` shortcut.
  	
    StarlightUtils.pushNamedAndRemoveUntil('home');///`Navigation.pushNamedAndRemoveUntil()` shortcut.
    
    StarlightUtils.pushAndRemoveUntil(MyHome());///`Navigation.pushAndRemoveUntil()` shortcut.
    
    StarlightUtils.pushReplacement(MyHome());///`Navigation.pushReplacement()` shortcut.
    
    StarlightUtils.pushReplacement('home');///`Navigation.popAndPushNamed()` shortcut.
    
    StarlightUtils.popAndPushNamed('home');///`Navigation.pop()` shortcut.
    
    StarlightUtils.conPop();///`Navigation.pop()` shortcut.
  
    return MaterialApp(
        navigatorKey: StarlightUtils.navigatorKey,///important
    );
  }
}


```

## About Dialog
```dart
class MyApp xtends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StarlightUtils.of(context);///important
    return SizedBox(
      width: context.width - 20,
      height: 45,
      child: ElevatedButton(
        onPressed: StarlightUtils.aboutDialog,
        child: const Text(
          "aboutDialog",
        ),
      ),
    );
  }
}
```

## Dialog
```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StarlightUtils.of(context);///important
    return SizedBox(
      width: context.width - 20,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          StarlightUtils.dialog(AlertDialog(
            title: Text("hello"),
          ));
        },
        child: const Text(
          "dialog",
        ),
      ),
    );
  }
}
```

## Bottomsheet
```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StarlightUtils.of(context);///important
    return SizedBox(
      width: context.width - 20,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          StarlightUtils.bottomSheet(Container(
            width: context.width,
            height: 100,
            child: Text("bottom sheet"),
          ));
        },
        child: const Text(
          "bottomSheet",
        ),
      ),
    );
  }
}
```

## Snackbar
```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StarlightUtils.of(context);///important
    return SizedBox(
      width: context.width - 20,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          StarlightUtils.snackbar(SnackBar(content: Text('hello')));
        },
        child: const Text(
          "snackbar",
        ),
      ),
    );
  }
}

```

## Date Picker
```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StarlightUtils.of(context);///important
    return SizedBox(
      width: context.width - 20,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          StarlightUtils.datePicker(
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2100),
          );
        },
        child: const Text(
          "datePicker",
        ),
      ),
    );
  }
}
```

## TimePicker
```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StarlightUtils.of(context);///important
    return SizedBox(
      width: context.width - 20,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          StarlightUtils.timePicker(
            initialTime: TimeOfDay.fromDateTime(
              DateTime.now(),
            ),
          );
        },
        child: const Text(
          "timePicker",
        ),
      ),
    );
  }
}
```

## dateRangePicker
```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StarlightUtils.of(context);///important
    return SizedBox(
      width: context.width - 20,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          StarlightUtils.dateRangePicker(
      		firstDate: DateTime(2000),
      		lastDate: DateTime(2100),
  	 );
        },
        child: const Text(
          "dateRangePicker",
        ),
      ),
    );
  }
}
```

## Menu
```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StarlightUtils.of(context);///important
    return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  StarlightUtils.menu(
                    position: RelativeRect.fromLTRB(10, 0, 0, 0),
                        items: [
                            PopupMenuItem(child: Text('item 1')),
                            PopupMenuItem(child: Text('item 2')),
                            PopupMenuItem(child: Text('item 3')),
                        ],
                    );
                },
                icon: Icon(Icons.more_vert),
              )
            ],
          ),
         
        );
  }
}
```


## Useful
```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(DateTime.now().differenceTimeInString(DateTime(2021, 12, 12)));///4w
    print(12850.648);///12,850.64
    print("password".isStrongPassword);///false
    print("a@".isEmail);///false
    print("a b c".withoutWhiteSpace);///abc
    print("Hello World".toValidate);///helloworld
    
    return Container();
  }
}
```

## MediaQuery
```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.with;///device width
    context.height;///device height
    context.devicePixelRatio;///device pixel ratio
    context.textScaleFactor;///text scale factor
    context.topSafe;///Appbar height
    context.bottomSafe;///bottom navigationbar height
    context.orientation;///Device orientation
    context.invertColors;///is inverting Colors or not
    context.highContrast;///is highContrast or not
    context.gestureSettings;///gesture settings
    context.boldText;///is bold text or not
    context.alwaysUse24HourFormat;///is using 24 hour format or not
    context.accessibleNavigation;///is accessible navigation or not
    return Container();
  }
}
```

## Theme
```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.theme;///ThemeData
    return Container();
  }
}
```

## Contact Us

[Starlight Studio](https://www.facebook.com/starlightstudio.of/)
	
