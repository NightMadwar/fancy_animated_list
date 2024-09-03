# Fancy Animated List 📱🎨

Welcome to **Fancy Animated List**, a Flutter package that allows you to create beautiful, customizable, and animated list views with smooth transitions and vibrant colors. Perfect for creating dynamic and interactive UIs in your Flutter applications.

## Fancy Animated List

## ✨ Features

- 🌈 **Customizable Colors**: Easily adjust the background and text colors for each item in the list.
- 🔄 **Smooth Animations**: Enjoy elegant, built-in animations that make your UI look polished and professional.
- 🔗 **Navigation**: Handle tap events on list items to seamlessly navigate to other pages.
- 🎨 **Custom Styling**: Each list item can have its own unique style, allowing for a diverse and visually appealing list.

## 🚀 Getting Started

To start using **Fancy Animated List** in your Flutter project, simply follow these steps:

### Prerequisites

Make sure you have Flutter installed. You can follow the instructions [here](https://flutter.dev/docs/get-started/install) to set up Flutter on your development machine.

### Installation

Add the following line to your `pubspec.yaml` file under `dependencies`:

```yaml
dependencies:
  fancy_animated_list: ^1.0.0
```

Then, run the command:

```bash
flutter pub get
```

## 📖 Usage

Here’s a quick example to get you started:

```dart
import 'package:flutter/material.dart';
import 'package:fancy_animated_list/fancy_animated_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<FancyListItem> items = [
    FancyListItem(
      title: 'Item 1',
      backgroundColor: Colors.red,
      textColor: Colors.white,
      destinationPage: DetailPage(title: 'Item 1 Detail'),
    ),
    FancyListItem(
      title: 'Item 2',
      backgroundColor: Colors.green,
      textColor: Colors.white,
      destinationPage: DetailPage(title: 'Item 2 Detail'),
    ),
    FancyListItem(
      title: 'Item 3',
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      destinationPage: DetailPage(title: 'Item 3 Detail'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fancy Animated List')),
      body: FancyAnimatedList(items: items),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;

  DetailPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(title, style: TextStyle(fontSize: 24))),
    );
  }
}
```

### Example

Check out the complete example in the `/example` folder to see how to integrate and use this package effectively in your projects.

## 🌟 Additional Information

- **Contributing**: Contributions are welcome! If you have suggestions, bug reports, or want to contribute code, feel free to open a pull request or issue on [GitHub](https://github.com/nightmadwar).
- **Issues**: Encountered a problem? Please report it in the [issue tracker](https://github.com/nightmadwar/issues).
- **Future Plans**: Stay tuned for more features and improvements. We are continuously working to make this package even better.

If you find this package helpful, consider giving it a ⭐ on GitHub and spreading the word!
