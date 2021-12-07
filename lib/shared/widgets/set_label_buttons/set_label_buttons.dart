import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_style.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnpressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnpressed;
  final bool enablePrimaryColor; 
  const SetLabelButtons(
      {Key? key,
      required this.primaryLabel,
      required this.primaryOnpressed,
      required this.secondaryLabel,
      required this.secondaryOnpressed, 
       this.enablePrimaryColor = false,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: [
          Expanded(
            child:
                LabelButton(label: primaryLabel, onpressed: primaryOnpressed,
                style: enablePrimaryColor? TextStyles.buttonPrimary: null),
          ),
          DividerVerticalWidget(),
          Expanded(
            child: LabelButton(
                label: secondaryLabel, onpressed: secondaryOnpressed),
          ),
        ],
      ),
    );
  }
}
