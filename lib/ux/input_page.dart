import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inputs_app/widgets/constanst.dart';
import 'package:inputs_app/widgets/icon_jynys.dart';
import 'package:inputs_app/widgets/my_containers.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String tandalganJynys;
  double tartylganTameki = 3;
  double kylynganSport = 2;
  int boy = 170;
  int kilo = 75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Денсоолук акыбалыңыз',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainers(
                    child: buildRowOutLineButtonum('БОЙ'),
                  ),
                ),
                Expanded(
                  child: MyContainers(
                    child: buildRowOutLineButtonum('Салмак'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainers(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Kанча күн спорт менен машыгасың?',
                    style: bTextStilderi,
                  ),
                  Text(
                    '${kylynganSport.round()}',
                    style: bSandardynStilderi,
                  ),
                  Slider(
                    min: 0,
                    max: 7,
                    divisions: 7,
                    value: kylynganSport,
                    onChangeEnd: (double janyValue) {
                      setState(() {
                        kylynganSport = janyValue;
                      });
                    },
                    onChanged: (double value) {},
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainers(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Канча шт. тамеки тартасың?',
                    style: bTextStilderi,
                  ),
                  Text(
                    '${tartylganTameki.round()}',
                    style: bSandardynStilderi,
                  ),
                  Slider(
                    min: 0,
                    max: 30,
                    value: tartylganTameki,
                    onChangeEnd: (double janyValue) {
                      setState(() {
                        tartylganTameki = janyValue;
                      });
                    },
                    onChanged: (double value) {},
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainers(
                    onPressed: () {
                      setState(() {
                        tandalganJynys = 'Аял';
                      });
                    },
                    tus: tandalganJynys == 'Аял'
                        ? Colors.lightBlue[100]
                        : Colors.white,
                    child: IconJynys(
                      icon: FontAwesomeIcons.venus,
                      jynysy: 'Аял',
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainers(
                    onPressed: () {
                      setState(() {
                        tandalganJynys = 'Эркек';
                      });
                    },
                    tus: tandalganJynys == 'Эркек'
                        ? Colors.lightBlue[100]
                        : Colors.white,
                    child: IconJynys(
                      icon: FontAwesomeIcons.mars,
                      jynysy: 'Эркек',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row buildRowOutLineButtonum(String parametr) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            parametr,
            style: bTextStilderi,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            parametr == 'БОЙ' ? boy.toString() : kilo.toString(),
            style: bSandardynStilderi,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonTheme(
              minWidth: 36,
              child: OutlineButton(
                borderSide: BorderSide(color: Colors.lightBlue),
                child: Icon(FontAwesomeIcons.plus),
                onPressed: () {
                  setState(() {
                    parametr == 'БОЙ' ? boy++ : kilo--;
                  });

                  print('Ustudogu buton basyldy');
                },
              ),
            ),
            ButtonTheme(
              minWidth: 36,
              child: OutlineButton(
                borderSide: BorderSide(color: Colors.lightBlue),
                child: Icon(FontAwesomeIcons.minus),
                onPressed: () {
                  setState(() {
                    parametr == 'БОЙ' ? boy-- : kilo--;
                  });
                  print('Astydagy buton basyldy');
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
