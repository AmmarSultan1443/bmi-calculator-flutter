import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const childCardTextColor = Color(0xFF8D8E98);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                      cardChild: GenderCard(gender: 'male'),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(colour: activeCardColor, cardChild: GenderCard(gender: 'female',),),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(colour: activeCardColor),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(colour: activeCardColor),
                  ),
                  Expanded(
                    child: ReusableCard(colour: activeCardColor),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              height: bottomContainerHeight,
              width: double.infinity,
              color: bottomContainerColor,
            )
          ],
        ));
  }
}

class GenderCard extends StatelessWidget {

  final String gender;

  GenderCard({required this.gender});

  IconData getGenderIcon(String gender) {
    if (gender == 'male') {
      return FontAwesomeIcons.mars;
    } else if (gender == 'female') {
      return FontAwesomeIcons.venus;
    } else {
      return FontAwesomeIcons.exclamation;
    }
  }

  String getCorrespondantGenderText(String gender) {
    if (gender == 'male') {
      return 'MALE';
    } else if (gender == 'female') {
      return 'FEMALE';
    } else {
      return 'UNKNOWN';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          getGenderIcon(gender),
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          getCorrespondantGenderText(gender),
          style: TextStyle(
              fontSize: 18.0,
              color: childCardTextColor
          ),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final cardChild;

  // the constructor
  ReusableCard({required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
