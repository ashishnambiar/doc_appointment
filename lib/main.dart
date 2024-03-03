import 'package:doc_appointment/Presentation/Pages/home_page.dart';
import 'package:doc_appointment/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(
                ColorName.primary,
              ),
              foregroundColor: const MaterialStatePropertyAll(
                ColorName.white,
              ),
              textStyle: const MaterialStatePropertyAll(
                TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              shadowColor: const MaterialStatePropertyAll(
                ColorName.primary,
              ),
              elevation: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return 5;
                }
                return 12;
              }),
            ),
          ),
          textTheme: TextTheme(
            bodyLarge: GoogleFonts.poppins().copyWith(
              color: ColorName.text,
              fontWeight: FontWeight.bold,
            ),
            titleMedium: GoogleFonts.poppins().copyWith(
              color: ColorName.text,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}
