import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:tourism_app/components/information_itens.dart';
import 'package:tourism_app/screens/home/popular_row.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InformationItens(FontAwesomeIcons.mapMarked, Colors.red,
            'Rua 11 de Outubro, 893700-150 São João Da Madeira'),
        InformationItens(FontAwesomeIcons.phone, Colors.orange,
            '+351 256 827 783 pacosdacultura@cm-sjm.pt'),
        InformationItens(FontAwesomeIcons.toolbox, Colors.yellow[700],
            'www.cm-sjm.pt/pt/equipamentos-pacos-da-cultura'),
        InformationItens(FontAwesomeIcons.calendar, Colors.green[700],
            '10h30 - 13h00 | 14h00 - 18h30 (Monday to Saturday) Closed on Sundays'),
        InformationItens(
            FontAwesomeIcons.wheelchair, Colors.blue[500], 'Disability Access'),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Popular',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        PopularRow(),
      ],
    );
  }
}
