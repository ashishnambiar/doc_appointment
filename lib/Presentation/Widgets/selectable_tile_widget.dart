import 'package:doc_appointment/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SelectableTileWidget extends StatelessWidget {
  final bool active;
  final String title;
  final Widget image;
  final VoidCallback onTap;
  const SelectableTileWidget({
    required this.active,
    required this.title,
    required this.image,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          HapticFeedback.vibrate();
          onTap();
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: ColorName.secondary,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                offset: Offset(-15, -15),
                color: ColorName.secondaryHighlight,
                blurRadius: 25,
              ),
              BoxShadow(
                offset: Offset(15, 15),
                color: ColorName.secondaryShadow,
                blurRadius: 25,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2, horizontal: 43 / 2),
                    decoration: BoxDecoration(
                      color: ColorName.secondaryLight,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: ColorName.white.withOpacity(0.2),
                        width: 2,
                      ),
                    ),
                    child: image,
                  ),
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(),
                      gradient: LinearGradient(
                        colors: [
                          ColorName.radioBgShadow,
                          ColorName.radioBgHighlight,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Container(
                      height: 27,
                      width: 27,
                      alignment: Alignment.center,
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(),
                        shadows: [
                          BoxShadow(
                            color: ColorName.radioBg,
                            spreadRadius: -5,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Container(
                        height: 13,
                        width: 13,
                        decoration: ShapeDecoration(
                          color: active
                              ? ColorName.radioActive
                              : ColorName.radioInactive,
                          shape: const CircleBorder(),
                          shadows: [
                            if (active)
                              const BoxShadow(
                                blurRadius: 10,
                                color: ColorName.radioActive,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
