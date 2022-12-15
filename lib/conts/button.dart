import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:specialhire/conts/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Button extends StatefulWidget {
  Button({super.key, this.buttonText});
  String? buttonText;
  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            AppLocalizations.of(context)!.save,
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
