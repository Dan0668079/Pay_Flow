import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_style.dart';

class LabelButton extends StatelessWidget {
  final String label;
  final VoidCallback onpressed;
  final TextStyle? style;
  const LabelButton({Key? key, required this.label, required this.onpressed, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: TextButton(
        onPressed: onpressed,
        child: Text(
          label,
          style:style ?? TextStyles.buttonHeading,
        ),
      ),
    );
  }
}
