import 'package:flutter/material.dart';
import 'bottom_button.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResults;
  final String resultText;
  final String interpretation;

  const ResultsPage(
      {required this.bmiResults,
      required this.resultText,
      required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMC CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              backgroundColor: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiResults,
                    style: bmiTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: bodyTextStyle,
                  ),
                ],
              ), onPress: () {  },
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULER',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
