import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:secure_storage_example/page/user_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Secure Storage';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          colorScheme: ColorScheme.dark(),
          scaffoldBackgroundColor: Colors.black87,
          accentColor: Colors.amberAccent,
          unselectedWidgetColor: Colors.white12,
          switchTheme: SwitchThemeData(
            thumbColor: MaterialStateProperty.all(Colors.black),
          ),
        ),
        home: UserPage(),
      );
}
