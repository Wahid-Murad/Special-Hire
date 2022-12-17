import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:specialhire/conts/button.dart';
import 'package:specialhire/conts/dropdown.dart';
import 'package:specialhire/conts/styles.dart';

class FleetDetails extends StatefulWidget {
  const FleetDetails({super.key});

  @override
  State<FleetDetails> createState() => _FleetDetailsState();
}

class _FleetDetailsState extends State<FleetDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.fleet_details,
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
                    child: Text(AppLocalizations.of(context)!.fleet_types,
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
                    child: Text(AppLocalizations.of(context)!.makers,
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
                    child: Text(AppLocalizations.of(context)!.seat_temp,
                        style: smalltextStyle)),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
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
