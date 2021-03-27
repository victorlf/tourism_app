import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tourism_app/components/information_itens.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InformationItens(
          FontAwesomeIcons.phone,
          Colors.red,
          '+351 256 827 783 pacosdacultura@cm-sjm.pt',
        ),
        InformationItens(
          Icons.web,
          Colors.orange[700],
          'www.cm-sjm.pt/pt/equipamentos-pacos-da-cultura',
        ),
        InformationItens(
          Icons.restaurant,
          Colors.yellow[700],
          'www.cm-sjm.pt/pt/equipamentos-pacos-da-cultura',
        ),
        InformationItens(
          FontAwesomeIcons.wallet,
          Colors.green,
          '€ 20,00',
        ),
        InformationItens(
          FontAwesomeIcons.binoculars,
          Colors.blue,
          'Garden',
        ),
        InformationItens(
          FontAwesomeIcons.ccVisa,
          Colors.red,
          'Cash, Visa, Check',
        ),
        InformationItens(
          FontAwesomeIcons.houseUser,
          Colors.orange,
          'Take away, Air conditioning, Home delivery',
        ),
        InformationItens(
          FontAwesomeIcons.wheelchair,
          Colors.blue[500],
          'Disability Access',
        ),
        InformationItens(
          FontAwesomeIcons.couch,
          Colors.green,
          'Traditional, Rustic, Typical',
        ),
        InformationItens(
          FontAwesomeIcons.handshake,
          Colors.red,
          'Business, Sophisticated, Typical',
        ),
        InformationItens(
          FontAwesomeIcons.smoking,
          Colors.orange,
          'Smoking Areas',
        ),
        SizedBox(
          height: 10.0,
        )
      ],
    );
  }
}
