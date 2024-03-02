import 'package:doc_appointment/Presentation/Pages/home_page.dart';
import 'package:doc_appointment/gen/colors.gen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        theme: ThemeData(
          //
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: ColorName.whiteFg,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          ),
          scaffoldBackgroundColor: ColorName.white,
          elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                ColorName.primary,
              ),
              foregroundColor: MaterialStatePropertyAll(
                ColorName.white,
              ),
              textStyle: MaterialStatePropertyAll(
                TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              shadowColor: MaterialStatePropertyAll(
                ColorName.primary,
              ),
              elevation: MaterialStatePropertyAll(12),
            ),
          ),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(
              color: ColorName.text,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}
