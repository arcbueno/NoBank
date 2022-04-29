import 'package:flutter/material.dart';
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
                          icon: Icon(Icons.person, color: Colors.white),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              print('aa');
                            },
                            icon: Icon(Icons.visibility, color: Colors.white),
                          ),
                          IconButton(
                            onPressed: () {
                              print('aa');
                            },
                            icon: Icon(Icons.help, color: Colors.white),
                          ),
                          IconButton(
                            onPressed: () {
                              print('aa');
                            },
                            icon: Icon(Icons.person_add, color: Colors.white),
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
            children: [],
          ),
        ),
      ),
    );
  }
}
