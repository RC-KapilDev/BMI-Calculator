import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_icon.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'round_button_icon.dart';
import 'calculator_brain.dart';

enum Gender { Male, Female }

class Inputpage extends StatefulWidget {
  const Inputpage({Key? key}) : super(key: key);

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Gender? Selectedgender;
  int height = 180;
  int weight = 60;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusableblock(
                      onPress: () {
                        setState(() {
                          Selectedgender = Gender.Male;
                        });
                      },
                      colour: Selectedgender == Gender.Male
                          ? kactivecardcolor
                          : kinactivecardcolor,
                      Cardchild: const cardicon(
                          iconsy: FontAwesomeIcons.mars, name: 'MALE')),
                ),
                Expanded(
                  child: Reusableblock(
                    onPress: () {
                      setState(() {
                        Selectedgender = Gender.Female;
                      });
                    },
                    colour: Selectedgender == Gender.Female
                        ? kactivecardcolor
                        : kinactivecardcolor,
                    Cardchild: const cardicon(
                        iconsy: FontAwesomeIcons.venus, name: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Reusableblock(
                    colour: kcolorofthereusablecard,
                    Cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'HEIGHT',
                          style: klabeltextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: klablenumberstyle,
                            ),
                            const Text(
                              'cm',
                              style: klabeltextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 15),
                            overlayColor: const Color(0x29EB1555),
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 30),
                            activeTrackColor: Colors.grey,
                            inactiveTrackColor: const Color(0xFF8D8E98),
                            thumbColor: const Color(0xFFEB1555),
                          ),
                          child: Slider(
                              value: height.toDouble(),
                              min: 120,
                              max: 240,
                              onChanged: (double newvalue) {
                                setState(() {
                                  height = newvalue.round();
                                });
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusableblock(
                    colour: kcolorofthereusablecard,
                    Cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'WEIGHT',
                          style: klabeltextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: klablenumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            RoundButtonIcon(
                              iconname: FontAwesomeIcons.plus,
                              onpressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            RoundButtonIcon(
                              iconname: FontAwesomeIcons.minus,
                              onpressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusableblock(
                    colour: kcolorofthereusablecard,
                    Cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'AGE',
                          style: klabeltextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: klablenumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            RoundButtonIcon(
                                iconname: FontAwesomeIcons.plus,
                                onpressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                            RoundButtonIcon(
                                iconname: FontAwesomeIcons.minus,
                                onpressed: () {
                                  setState(() {
                                    age--;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Bottombutton(
            buttonname: 'CALCULATE',
            onTap: () {
              CalculatorBrain cacl =
                  CalculatorBrain(weight: weight, height: height);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            result: cacl.BMIcalculator(),
                            textresult: cacl.resultBMI(),
                            feedback: cacl.resulttextBMI(),
                          )));
            },
          )
        ],
      ),
    );
  }
}
