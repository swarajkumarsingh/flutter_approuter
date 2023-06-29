# Flutter Approuter

- Navigation made easy, now navigate to screens, without BuildContext from pure flutter & dart code.

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):

```yaml
dependencies:
  flutter_approuter:
```

2. Import the package and use it in your Flutter App.

```dart
import 'package:flutter_approuter/flutter_approuter.dart';
```

3. Add NavigatorKey in Material App for routing without BuiltContext

```dart
 MaterialApp(
   navigatorKey: navigatorKey,
   ...
 )
```

## Supported Devices

- Android
- IOS
- Linux
- Windows
- Macos

## Features

- [x] Custom appRouter **without BuiltContext**

  - [x] push
  - [x] pushOffAll
  - [x] pushNamed
  - [x] pop

- [x] Get Context on initMethod also outside of page
  - [x] getContext

## Example

### AppRouter **without BuildContext**

1. getContext()
   ```
       appRouter.getContext();
   ```
2. Push(Page)
   ```
       appRouter.push(HomeScreen());
   ```
3. Pop()
   ```
       appRouter.pop();
   ```
4. pushNamed(String route)
   ```
       appRouter.pushNamed(route);
   ```
5. pushOffAll(Widget page)
   ```
       appRouter.pushOffAll(page);
   ```

## Contributions

If you find a bug or want a feature, but don't know how to fix/implement it, please fill an issue. <br>
<br>
If you fixed a bug or implemented a feature, please send a pull request.
