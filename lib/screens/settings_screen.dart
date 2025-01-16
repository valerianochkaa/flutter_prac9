import 'package:flutter/material.dart';
import '../ThemeService.dart';
import 'main.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late final ThemeService themeService;

  @override
  void initState() {
    super.initState();
    themeService = getIt<ThemeService>();
  }

  void _toggleTheme() {
    setState(() {
      themeService.toggleTheme();
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentTheme = themeService.theme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Текущая тема: $currentTheme',
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 26),
            ElevatedButton(
              onPressed: _toggleTheme,
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(256, 56),
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Переключить тему'),
            ),
          ],
        ),
      ),
    );
  }
}

// class SettingsInheritedWidget extends InheritedWidget {
//   final String theme;
//
//   const SettingsInheritedWidget({
//     super.key,
//     required this.theme,
//     required super.child,
//   });
//
//   static SettingsInheritedWidget? of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<SettingsInheritedWidget>();
//   }
//
//   @override
//   bool updateShouldNotify(SettingsInheritedWidget oldWidget) {
//     return theme != oldWidget.theme;
//   }
// }
//
// class SettingsScreen extends StatefulWidget {
//   const SettingsScreen({super.key});
//   @override
//   State<SettingsScreen> createState() => _SettingsScreenState();
// }
//
// class _SettingsScreenState extends State<SettingsScreen> {
//   String _theme = 'Светлая тема';
//
//   void _toggleTheme() {
//     setState(() {
//       _theme = _theme == 'Светлая тема' ? 'Темная тема' : 'Светлая тема';
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SettingsInheritedWidget(
//       theme: _theme,
//       child: Builder(
//         builder: (context) {
//           final currentTheme =
//               SettingsInheritedWidget.of(context)?.theme ?? '';
//
//           return Scaffold(
//             appBar: AppBar(
//               title: const Text('Настройки'),
//             ),
//             body: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Текущая тема: $currentTheme',
//                     style: const TextStyle(
//                       fontSize: 24,
//                       color: Colors.black,
//                     ),
//                   ),
//                   const SizedBox(height: 26),
//                   ElevatedButton(
//                     onPressed: _toggleTheme,
//                     style: ElevatedButton.styleFrom(
//                       fixedSize: const Size(256, 56),
//                       backgroundColor: Colors.indigo,
//                       foregroundColor: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                     child: const Text('Переключить тему'),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }





