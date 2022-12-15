import 'package:flutter/material.dart';
import 'package:specialhire/conts/all_textfield.dart';
import 'package:specialhire/conts/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ContactInformation extends StatefulWidget {
  ContactInformation({Key? key}) : super(key: key);

  // TextEditingController nameController = TextEditingController();
  // TextEditingController phoneController = TextEditingController();

  @override
  State<ContactInformation> createState() => _ContactInformationState();
}

class _ContactInformationState extends State<ContactInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.contact_information,
            style: appbarTextStyle),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(AppLocalizations.of(context)!.company,
                      style: smalltextStyle),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: AllTextField(
                    hintText: AppLocalizations.of(context)!.company,
                    textInputType: TextInputType.text,
                  ),
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Text(AppLocalizations.of(context)!.name,
                      style: smalltextStyle),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: AllTextField(
                    hintText: AppLocalizations.of(context)!.name,
                    textInputType: TextInputType.name,
                  ),
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Text(AppLocalizations.of(context)!.phone,
                      style: smalltextStyle),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: AllTextField(
                    hintText: AppLocalizations.of(context)!.phone,
                    textInputType: TextInputType.phone,
                  ),
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Text(AppLocalizations.of(context)!.email,
                      style: smalltextStyle),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: AllTextField(
                    hintText: AppLocalizations.of(context)!.email,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Text(AppLocalizations.of(context)!.address,
                      style: smalltextStyle),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: AllTextField(
                    hintText: AppLocalizations.of(context)!.address,
                    textInputType: TextInputType.streetAddress,
                  ),
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Text(AppLocalizations.of(context)!.remarks,
                      style: smalltextStyle),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: AllTextField(
                    hintText: AppLocalizations.of(context)!.remarks,
                    textInputType: TextInputType.text,
                  ),
                ),
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return "Please enter name";
                //   }
                //   return null;
                // },

// TextFormField(
//   validator: (value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter some text';
//     }
//     return null;
//   },
// ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
