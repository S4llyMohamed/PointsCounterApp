import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int TeamAPoints = 0;

  int TeamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xFF850E35),
            title: Text(
              "Points counter",
              style: TextStyle(color: Color(0xFFFFF5E4)),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      Text(
                        "$TeamAPoints",
                        style: TextStyle(color: Colors.black, fontSize: 100),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 7),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF850E35),
                            shape: BeveledRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(2, 2)),
                            ),
                          ),
                          onPressed: () {
                            TeamAPoints++;
                            setState(() {});
                          },
                          child: Text(
                            "Add 1 point",
                            style: TextStyle(
                              color: Color(0xFFFFF5E4),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 7),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF850E35),
                            shape: BeveledRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(2, 2)),
                            ),
                          ),
                          onPressed: () {
                            TeamAPoints += 2;
                            setState(() {});
                          },
                          child: Text(
                            "Add 2 point",
                            style: TextStyle(
                              color: Color(0xFFFFF5E4),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF850E35),
                          shape: BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(2, 2)),
                          ),
                        ),
                        onPressed: () {
                          TeamAPoints += 3;
                          setState(() {});
                        },
                        child: Text(
                          "Add 3 point",
                          style: TextStyle(
                            color: Color(0xFFFFF5E4),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 270,
                    child: VerticalDivider(
                      thickness: 1.5,
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      Text(
                        "$TeamBPoints",
                        style: TextStyle(color: Colors.black, fontSize: 100),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 7),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF850E35),
                            shape: BeveledRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(2, 2)),
                            ),
                          ),
                          onPressed: () {
                            TeamBPoints++;
                            setState(() {});
                          },
                          child: Text(
                            "Add 1 point",
                            style: TextStyle(
                              color: Color(0xFFFFF5E4),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 7),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF850E35),
                            shape: BeveledRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(2, 2)),
                            ),
                          ),
                          onPressed: () {
                            TeamBPoints += 2;
                            setState(() {});
                          },
                          child: Text(
                            "Add 2 point",
                            style: TextStyle(
                              color: Color(0xFFFFF5E4),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF850E35),
                          shape: BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(2, 2)),
                          ),
                        ),
                        onPressed: () {
                          TeamBPoints += 3;
                          setState(() {});
                        },
                        child: Text(
                          "Add 3 point",
                          style: TextStyle(
                            color: Color(0xFFFFF5E4),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Spacer(),
              SizedBox(
                height: 39,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF850E35),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.elliptical(2, 2)),
                    ),
                  ),
                  onPressed: () {
                    TeamAPoints = 0;
                    TeamBPoints = 0;
                    setState(() {});
                  },
                  child: Text(
                    "Reset",
                    style: TextStyle(
                      color: Color(0xFFFFF5E4),
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          )),
    );
  }
}
