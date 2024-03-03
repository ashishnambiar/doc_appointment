import 'package:doc_appointment/Presentation/Widgets/selectable_tile_widget.dart';
import 'package:doc_appointment/gen/assets.gen.dart';
import 'package:doc_appointment/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class SelectableItemsGridView extends StatefulWidget {
  const SelectableItemsGridView({
    super.key,
  });

  @override
  State<SelectableItemsGridView> createState() =>
      _SelectableItemsGridViewState();
}

class _SelectableItemsGridViewState extends State<SelectableItemsGridView> {
  int? selected;

  set select(int i) => setState(() {
        selected = i;
      });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 360 + 24 + 20,
          child: PageView(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          SelectableTileWidget(
                            title: 'Dental Braces',
                            image: Assets.images.braces.svg(),
                            active: 0 == selected,
                            onTap: () => select = 0,
                          ),
                          SelectableTileWidget(
                            title: 'Dental Crown',
                            image: Assets.images.dentalCrown.svg(),
                            active: 1 == selected,
                            onTap: () => select = 1,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Expanded(
                      child: Row(
                        children: [
                          SelectableTileWidget(
                            title: 'Dental Filling',
                            image: Assets.images.dentalFilling.svg(),
                            active: 2 == selected,
                            onTap: () => select = 2,
                          ),
                          SelectableTileWidget(
                            title: 'Anesthesia',
                            image: Assets.images.dental.svg(),
                            active: 3 == selected,
                            onTap: () => select = 3,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            'Choose Problems',
            style: Theme.of(context) //
                .textTheme
                .bodyLarge,
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(2),
              height: 10,
              width: 50,
              decoration: const ShapeDecoration(
                color: ColorName.white,
                shape: StadiumBorder(),
              ),
              child: Row(
                children: [
                  Container(
                    height: 6,
                    width: 20,
                    decoration: const ShapeDecoration(
                      color: ColorName.secondary,
                      shape: StadiumBorder(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
