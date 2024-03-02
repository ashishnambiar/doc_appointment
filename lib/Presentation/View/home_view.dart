import 'package:doc_appointment/Presentation/View/booking_form_view.dart';
import 'package:doc_appointment/Presentation/Widgets/custom_appbar.dart';
import 'package:doc_appointment/gen/assets.gen.dart';
import 'package:doc_appointment/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        color: ColorName.primary,
        strapLine: 'Welcome',
        title: 'Misty Simon',
        profileImage: Assets.images.photo.image(),
        trailing: IconButton(
          onPressed: () {},
          icon: Assets.images.setting.svg(),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const Positioned(
              top: -421 - 108,
              left: -303,
              child: CircleAvatar(
                backgroundColor: ColorName.primary,
                radius: 408,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search doctor',
                      suffixIcon: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 11,
                          horizontal: 20,
                        ),
                        child: Assets.images.search.svg(),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: ColorName.primaryBorder,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: ColorName.primaryBorder,
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: ColorName.primaryBorder,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const BookingFormView(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
