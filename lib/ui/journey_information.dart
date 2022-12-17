import 'package:flutter/material.dart';
import 'package:specialhire/conts/all_textfield.dart';
import 'package:specialhire/conts/button.dart';
import 'package:specialhire/conts/dropdown.dart';
import 'package:specialhire/conts/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class JourneyInformation extends StatefulWidget {
  const JourneyInformation({Key? key}) : super(key: key);

  @override
  State<JourneyInformation> createState() => _JourneyInformationState();
}

class _JourneyInformationState extends State<JourneyInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.journey_information,
            style: appbarTextStyle),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 40, left: 20, right: 20, bottom: 10),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(AppLocalizations.of(context)!.origin,
                        style: smalltextStyle)),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: AppDropDown(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 10, top: 10),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(AppLocalizations.of(context)!.destination,
                        style: smalltextStyle)),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: AppDropDown(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 10, top: 10),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(AppLocalizations.of(context)!.type,
                        style: smalltextStyle)),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: AppDropDown(),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Text(AppLocalizations.of(context)!.pickup,
                      style: smalltextStyle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: AllTextField(
                  hintText: AppLocalizations.of(context)!.pickup_address,
                  textInputType: TextInputType.text,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Text(AppLocalizations.of(context)!.dropping,
                      style: smalltextStyle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: AllTextField(
                  hintText: AppLocalizations.of(context)!.dropping_address,
                  textInputType: TextInputType.text,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Text(AppLocalizations.of(context)!.j_date,
                      style: smalltextStyle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: AllTextField(
                  hintText: AppLocalizations.of(context)!.date,
                  textInputType: TextInputType.text,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: AppDropDown(),
                ),
              ),
              Button(),
            ],
          ),
        ),
      ),
    );
  }
}
