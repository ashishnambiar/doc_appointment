import 'package:doc_appointment/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSize {
  final Widget profileImage;
  final String strapLine;
  final String title;
  final Widget trailing;
  final Color color;
  const CustomAppbar({
    required this.profileImage,
    required this.strapLine,
    required this.title,
    required this.trailing,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  height: 50,
                  width: 50,
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(),
                  ),
                  child: profileImage,
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      strapLine,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: ColorName.white),
                    ),
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: ColorName.white),
                    ),
                  ],
                ),
                const Spacer(),
                trailing,
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget get child => Container(
        height: 100,
        width: 100,
        color: Colors.red,
      );

  @override
  Size get preferredSize => const Size(double.maxFinite, 108);
}
