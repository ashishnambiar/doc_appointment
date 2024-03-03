import 'package:doc_appointment/Presentation/Widgets/common_form_field_widget.dart';
import 'package:doc_appointment/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BookingFormView extends StatelessWidget {
  const BookingFormView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            'Appointment Booking',
            style: Theme.of(context) //
                .textTheme
                .bodyLarge!
                .copyWith(
                  color: ColorName.white,
                ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(25),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: ColorName.whiteFg,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              const CommonFormFieldWidget(
                labelText: 'Enter Name',
              ),
              const CommonFormFieldWidget(
                labelText: 'Choose Date & Time',
              ),
              const CommonFormFieldWidget(
                labelText: 'Choose Problem',
              ),
              const CommonFormFieldWidget(
                labelText: 'Choose Test',
              ),
              const CommonFormFieldWidget(
                labelText: 'Choose Consultation',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    HapticFeedback.vibrate();
                  },
                  child: const Text('Book Appointment'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
