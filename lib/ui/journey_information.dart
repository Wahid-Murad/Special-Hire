import 'package:flutter/material.dart';
import 'package:specialhire/conts/all_textfield.dart';
import 'package:specialhire/conts/styles.dart';

class JourneyInformation extends StatefulWidget {
  const JourneyInformation({Key? key}) : super(key: key);

  @override
  State<JourneyInformation> createState() => _JourneyInformationState();
}

class _JourneyInformationState extends State<JourneyInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text("Origin"),
                AllTextField(
                  hintText: "Select district",
                ),
                Text("Destination", style: smalltextStyle),
                AllTextField(
                  hintText: "Select district",
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return "Please enter name";
                  //   }
                  //   return null;
                  // },
                ),

// TextFormField(
//   validator: (value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter some text';
//     }
//     return null;
//   },
// ),

                Text("Phone", style: smalltextStyle),
                AllTextField(
                  hintText: "Phone",
                ),

                Text("Email", style: smalltextStyle),
                AllTextField(
                  hintText: "Email",
                ),

                Text("Address", style: smalltextStyle),
                AllTextField(
                  hintText: "Address",
                ),
                Text("Remark", style: smalltextStyle),
                AllTextField(
                  hintText: "Remark",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
