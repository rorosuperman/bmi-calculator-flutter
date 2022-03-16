import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reuseable_card.dart';
import 'iconData.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'results.dart';
import 'bottombutton.dart';
import 'package:bmi_calculator/CalculatorBrain.dart';

enum GenderValue {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderValue SelectedGender;
  int height = 180;
  int weight = 50;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF8F1),
      appBar: AppBar(
        backgroundColor: Color(0xFFFBF8F1),
        shadowColor: Colors.grey,
        // toolbarHeight: 70,
        toolbarOpacity: 1.0,
        elevation: 0,
        //   backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Body Mass Index', style: appbarstyle),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    onpressed: () {
                      setState(() {
                        SelectedGender = GenderValue.male;
                      });
                    },
                    colour: SelectedGender == GenderValue.male
                        ? Selectedcolor
                        : Activecardcolor,
                    cardChild: Gender(
                      icons: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    onpressed: () {
                      setState(() {
                        SelectedGender = GenderValue.female;
                      });
                    },
                    colour: SelectedGender == GenderValue.female
                        ? Selectedcolor
                        : Activecardcolor,
                    cardChild: Gender(
                      icons: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ResuableCard(
                  colour: Activecardcolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Height", style: DefaultStyle),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            height.toString(),
                            style: sliderstyle,
                          ),
                          Text(
                            'cm',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context)
                            .copyWith(thumbColor: Colors.black),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            activeColor: Color(0xFF54BAB9),
                            inactiveColor: Activecardcolor,
                            onChanged: (double newvalue) {
                              setState(() {
                                height = newvalue.round();
                              });
                            }),
                      )
                    ],
                  ),
                ),
                flex: 2,
              ),
            ],
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    colour: Activecardcolor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: DefaultStyle,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          weight.toString(),
                          style: sliderstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                child: Icon(Icons.add),
                                backgroundColor: Color(0xFF54BAB9),
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                }),
                            SizedBox(
                              width: 12,
                            ),
                            FloatingActionButton(
                                child: Icon(Icons.remove),
                                backgroundColor: Color(0xFF54BAB9),
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                })
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                      colour: Activecardcolor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: DefaultStyle,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            age.toString(),
                            style: sliderstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                  icondata: (FontAwesomeIcons.plus),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  }),
                              RoundIconButton(
                                  icondata: (FontAwesomeIcons.minus),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  }),
                            ],
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          bottomButton(
            ontap: () {
              CalculatorBrain calc =
                  CalculatorBrain(weight: weight, height: height);
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => Resultpage(
                    BMInumber: calc.bmiCalculator(),
                    BMIword: calc.getresults(),
                    BMIfeedback: calc.getfeedback(),
                  ),
                ),
              );
            },
            lable: "Calculate my BMI",
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icondata, this.onPressed});

  final IconData icondata;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      //constraints:
      child: Icon(icondata),
      onPressed: onPressed,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
      fillColor: Color(0xFF54BAB9),
    );
  }
}
