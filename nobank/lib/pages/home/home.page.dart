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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
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
                              print('aa');
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.eye,
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
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'R\$ 1000,00',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.black),
                ),
              ),
              Container(
                height: 115,
                margin: EdgeInsets.symmetric(vertical: 18),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: horizontalList.length,
                  padding: EdgeInsets.only(left: 16, right: 16),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var item = horizontalList[index];
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
                            width: 80,
                            child: Text(
                              item.text,
                              textAlign: TextAlign.center,
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
                  children: [
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
                              TextSpan(
                                  text: 'Salve seus amigos da burocracia. '),
                              TextSpan(
                                text: 'Faça um convite',
                                style: TextStyle(color: NuColors.nuPurple),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: Theme.of(context).dividerColor.withOpacity(.1),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final horizontalList = [
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
