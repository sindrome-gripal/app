import 'package:flutter/material.dart';


extension TextWithButtonRedirect on Widget {
  Widget createTextWithButtonRedirect ({
    String labelTextButton = '',
    String labelTextDescription = '',
    onPressed
  })
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(labelTextDescription),
        TextButton(
          onPressed: onPressed,
          child: Text(
              labelTextButton,
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w600,
                fontSize: 18
              ),
          ),
        ),
      ],
    );
  }
}