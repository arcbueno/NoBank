import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:nobank/utils/color_utils.dart';
import 'package:nobank/utils/nu_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showCurrentMoney = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Appbar
                PreferredSize(
                  preferredSize: Size.fromHeight(128),
                  child: Container(
                    color: NuColors.nuPurple,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: lighten(
                                  NuColors.nuPurple,
                                ),
                                radius: 24,
                                child: IconButton(
                                  onPressed: () {
                                    print('aa');
                                  },
                                  icon: FaIcon(
                                    FontAwesomeIcons.user,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      showCurrentMoney = !showCurrentMoney;
                                      setState(() {});
                                    },
                                    icon: FaIcon(
                                      showCurrentMoney
                                          ? FontAwesomeIcons.eyeSlash
                                          : FontAwesomeIcons.eye,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      print('aa');
                                    },
                                    icon: FaIcon(
                                      FontAwesomeIcons.circleQuestion,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      print('aa');
                                    },
                                    icon: FaIcon(
                                      FontAwesomeIcons.userPlus,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 24),
                            child: Text(
                              'Olá, Pedro',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Cabeçalho
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 32, 24, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Conta',
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.black.withOpacity(.6),
                      ),
                    ],
                  ),
                ),
                if (showCurrentMoney)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'R\$ 1000,00',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 28,
                          ),
                    ),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                Container(
                  height: 120,
                  margin: EdgeInsets.symmetric(vertical: 18),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: menuHorizontalList.length,
                    padding: EdgeInsets.only(left: 16, right: 16),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var item = menuHorizontalList[index];
                      return Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.grey.withOpacity(.15),
                              child: item.icon,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              width: 85,
                              child: Text(
                                item.text,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    color: Colors.grey.withOpacity(.15),
                  ),
                  child: ListTile(
                    leading: Transform.rotate(
                      angle: -pi / 2,
                      child: FaIcon(
                        FontAwesomeIcons.creditCard,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      'Meus cartões',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Container(
                  height: 85,
                  margin: EdgeInsets.symmetric(vertical: 18),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 24, right: 24),
                    children: infoList(context),
                  ),
                ),
                categoryDivider(),
                // Cartão de crédito
                Container(
                  margin: EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Transform.rotate(
                        angle: -pi / 2,
                        child: FaIcon(
                          FontAwesomeIcons.creditCard,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cartão de crédito',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.black.withOpacity(.6),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 8),
                        child: Text(
                          'Fatura fechada',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      if (showCurrentMoney)
                        Text(
                          'R\$ 1700,00',
                          style:
                              Theme.of(context).textTheme.headline4!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 28,
                                  ),
                        )
                      else
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          'Vencimento dia 09',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              elevation: 0,
                              primary: Colors.red,
                            ),
                            onPressed: () => print('a'),
                            child: Text(
                              'Pagar fatura',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              elevation: 0,
                              primary: Colors.grey.withOpacity(.15),
                            ),
                            onPressed: () => print('a'),
                            child: Text(
                              'Parcelar',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                categoryDivider(),
                // Empréstimo
                Container(
                  margin: EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.handHoldingDollar,
                        color: Colors.black.withOpacity(.8),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Empréstimo',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.black.withOpacity(.6),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 16,
                          bottom: 8,
                        ),
                        child: Text(
                          'Valor disponível de até ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        'R\$30.000,00',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black.withOpacity(.5),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                categoryDivider(),
                // Investimentos
                Container(
                  margin: EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.signal,
                        color: Colors.black.withOpacity(.8),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Investimentos',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.black.withOpacity(.6),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 16,
                          bottom: 8,
                        ),
                        child: Text(
                          'O jeito Nu de investir: sem asteriscos, linguagem fácil e a partir de R\$1. Saiba mais.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                categoryDivider(),
                // Seguros
                Container(
                  margin: EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.umbrella,
                        color: Colors.black.withOpacity(.8),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Seguros',
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 24,
                          bottom: 24,
                        ),
                        child: Text(
                          'Proteção para você cuidar do que importa',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Colors.grey.withOpacity(.15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.heart,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                'Seguro vida',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'Conhecer',
                                style: TextStyle(
                                  color: NuColors.nuPurple,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Colors.grey.withOpacity(.15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.mobile,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                'Seguro celular',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'Conhecer',
                                style: TextStyle(
                                  color: NuColors.nuPurple,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                categoryDivider(),
                // Shopping
                Container(
                  margin: EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.bagShopping,
                        color: Colors.black.withOpacity(.8),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shopping',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.black.withOpacity(.6),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 16,
                          bottom: 8,
                        ),
                        child: Text(
                          'Vantagens exclusivas das nossas marcas preferidas',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                categoryDivider(),
                // Descubra mais
                Container(
                  margin: EdgeInsets.only(left: 24, top: 16),
                  child: Text(
                    'Descubra mais',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  categoryDivider() {
    return Divider(
      thickness: 2,
      color: Theme.of(context).dividerColor.withOpacity(.1),
    );
  }

  infoList(BuildContext context) {
    return [
      Container(
        margin: EdgeInsets.only(right: 16),
        width: MediaQuery.of(context).size.width / 1.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: Colors.grey.withOpacity(.15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text.rich(
            TextSpan(children: [
              TextSpan(text: 'Chegou o '),
              TextSpan(
                text: 'débito automático da fatura do cartão',
                style: TextStyle(color: NuColors.nuPurple),
              ),
            ]),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(right: 16),
        width: MediaQuery.of(context).size.width / 1.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: Colors.grey.withOpacity(.15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Você tem até '),
                TextSpan(
                  text: 'R\$30.000,00 ',
                  style: TextStyle(color: NuColors.nuPurple),
                ),
                TextSpan(text: 'disponíveis para empréstimo'),
              ],
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(right: 16),
        width: MediaQuery.of(context).size.width / 1.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: Colors.grey.withOpacity(.15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Tem '),
                TextSpan(
                  text: ' SHOPPING ',
                  style: TextStyle(color: NuColors.nuPurple),
                ),
                TextSpan(text: 'no seu bank. Conheça agora.'),
              ],
            ),
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width / 1.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: Colors.grey.withOpacity(.15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Salve seus amigos da burocracia. '),
                TextSpan(
                  text: 'Faça um convite',
                  style: TextStyle(color: NuColors.nuPurple),
                ),
              ],
            ),
          ),
        ),
      ),
    ];
  }

  final menuHorizontalList = [
    HorizontalItem(
      icon: FaIcon(
        FontAwesomeIcons.pix,
        color: Colors.black.withOpacity(.8),
      ),
      text: 'Área Pix',
    ),
    HorizontalItem(
      icon: FaIcon(
        FontAwesomeIcons.barcode,
        color: Colors.black.withOpacity(.8),
      ),
      text: 'Pagar',
    ),
    HorizontalItem(
      icon: FaIcon(
        FontAwesomeIcons.moneyBill,
        color: Colors.black.withOpacity(.8),
      ),
      text: 'Transferir',
    ),
    HorizontalItem(
      icon: FaIcon(
        FontAwesomeIcons.moneyBillTransfer,
        color: Colors.black.withOpacity(.8),
      ),
      text: 'Depositar',
    ),
    HorizontalItem(
      icon: FaIcon(
        FontAwesomeIcons.handHoldingDollar,
        color: Colors.black.withOpacity(.8),
      ),
      text: 'Pegar emprestado',
    ),
    HorizontalItem(
      icon: FaIcon(
        FontAwesomeIcons.mobile,
        color: Colors.black.withOpacity(.8),
      ),
      text: 'Regarga de celular',
    ),
    HorizontalItem(
      icon: FaIcon(
        FontAwesomeIcons.commentDollar,
        color: Colors.black.withOpacity(.8),
      ),
      text: 'Cobrar',
    ),
    HorizontalItem(
      icon: FaIcon(
        FontAwesomeIcons.heart,
        color: Colors.black.withOpacity(.8),
      ),
      text: 'Doação',
    ),
  ];
}

class HorizontalItem {
  final Widget icon;
  final String text;
  HorizontalItem({
    required this.icon,
    required this.text,
  });
}
