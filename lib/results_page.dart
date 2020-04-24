import 'package:flutter/material.dart';
import 'ReusableCard.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  final String bmiNumber;
  final String bmiNote;
  final String bmiResult;

  ResultsPage(
      {@required this.bmiNumber,
      @required this.bmiNote,
      @required this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'مؤشر كتلة الجسم',
              style: TextStyle(fontFamily: 'SamimBold', fontSize: 25.0),
            ),
          ),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                  child: Text(
                    'النتيجة',
                    style: TextStyle(
                      fontSize: 50.0,
                      fontFamily: 'samimBold',
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 5,
                  child: ReusableCard(
                    colour: KActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          bmiResult,
                          style: TextStyle(
                            fontFamily: 'samimBold',
                            fontSize: 30,
                            color: Color(0XFF24D876),
                          ),
                        ),
                        Text(
                          bmiNumber,
                          style: TextStyle(
                              fontSize: 90.0, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          bmiNote,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'samimBold', fontSize: 25.0),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  color: KBottomContainerColour,
                  child: Center(
                    child: Text(
                      'إعادة الحساب',
                      style: TextStyle(fontFamily: 'samimBold', fontSize: 30.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ))
            ],
          ),
        ));
  }
}
