import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.result,
      required this.textresult,
      required this.feedback});
  final String result;
  final String textresult;
  final String feedback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATTOR',
          style: klabeltextStyle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  'YOUR RESULT',
                  style: ktitletextstyle,
                ),
              )),
          Expanded(
            flex: 5,
            child: Reusableblock(
              colour: kactivecardcolor,
              Cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    textresult,
                    style: kresultTextStyle,
                  ),
                  Text(
                    result,
                    style: kBMIresult,
                  ),
                  Text(
                    feedback,
                    style: klabeltextStyle.copyWith(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Bottombutton(
            buttonname: 'RE-CALCUlATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
