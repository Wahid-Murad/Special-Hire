import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:specialhire/conts/default_container.dart';
import 'package:specialhire/conts/styles.dart';
import 'package:specialhire/ui/contact_information.dart';
import 'package:specialhire/ui/journey_information.dart';

class QuotationAdd extends StatefulWidget {
  const QuotationAdd({Key? key}) : super(key: key);

  @override
  State<QuotationAdd> createState() => _QuotationAddState();
}

class _QuotationAddState extends State<QuotationAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.quotation_add),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [

            Container(
            height: 150,
            child: Row(
                children: [
            Center(
            child: Text(
            AppLocalizations.of(context)!.contact_information,
            style: titleTextStyle),
      ),
      Align(
        alignment: Alignment.bottomRight,
        child: InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ContactInformation()));
          },
          child: Text(AppLocalizations.of(context)!.add,
              style: smallTextStyle),
        ),
      ),
        ],
      ),
    ),
            Container(
              height: 150,
              child: Row(
                children: [
                  Center(
                    child: Text(
                        AppLocalizations.of(context)!.journey_information,
                        style: titleTextStyle),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>JourneyInformation()));
                      },
                      child: Text(AppLocalizations.of(context)!.add,
                          style: smallTextStyle),
                    ),
                  ),
                ],
              ),
            ),


        Container(
              height: 150,
              child: Row(
                children: [
                  Center(
                    child: Text(
                        AppLocalizations.of(context)!.fleet_details,
                        style: titleTextStyle),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DefaultContainer()));
                      },
                      child: Text(AppLocalizations.of(context)!.add,
                          style: smallTextStyle),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
