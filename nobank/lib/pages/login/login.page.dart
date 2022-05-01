import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nobank/pages/home/home.page.dart';
import 'package:nobank/utils/nu_colors.dart';
import 'package:nobank/utils/strings.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(64),
          child: Container(
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 16),
                  child: Image(
                    height: 32,
                    width: 48,
                    image: AssetImage('images/nu_logo_Master_Purple.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18,
                  ),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Spacer(),
                      Text(
                        Strings.loginPageMainText,
                        style: TextStyle(
                          fontFamily: 'Sequel Sans Display Medium',
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                          color: NuColors.nuMainTextColor,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Row(
                        children: [
                          Text(
                            Strings.loginPageSubText,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: NuColors.nuSubTextColor,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Transform.rotate(
                            angle: pi / 4,
                            child: FaIcon(
                              FontAwesomeIcons.arrowUp,
                              size: 14,
                              color: NuColors.nuPurple,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          elevation: 0,
                          minimumSize: Size.fromHeight(52),
                          primary: NuColors.nuPurple,
                        ),
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        ),
                        child: Text(
                          Strings.loginPageButtonText,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          Strings.loginPageButtonHelpText,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: NuColors.nuSubTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 80,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                color: Colors.grey.withOpacity(.1),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(Strings.loginPageOptionText),
                    ),
                    Switch(
                      value: false,
                      onChanged: (_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Switch pressed"),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
