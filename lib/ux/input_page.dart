import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inputs_app/widgets/icon_jynys.dart';
import 'package:inputs_app/widgets/my_containers.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String tandalganJynys;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainers(),
                ),
                Expanded(
                  child: MyContainers(),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainers(),
          ),
          Expanded(
            child: MyContainers(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        tandalganJynys = "Ayal";
                      });
                    },
                    child: MyContainers(
                      child: IconJynys(
                        icon: FontAwesomeIcons.venus,
                        jynysy: 'Ayal',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        tandalganJynys = "Ayal";
                      });
                    },
                    child: MyContainers(
                      child: IconJynys(
                        icon: FontAwesomeIcons.mars,
                        jynysy: 'Erkek',
                      ),
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
}
