import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
  ));
}

class Creditspage extends StatelessWidget {
  const Creditspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg3.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            'Credits',
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.teal,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                  child: Text(
                    "Made by - Priyanshu Kanojia",
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                color: Colors.grey[600],
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Ohh! You really did open the credits section.\nNever thought anybody would open this!\n\n\nAnyways, Welcome to the credits section!\n\nI am Priyanshu Kanojia currently learning web and app development and all the credit of making this app goes to me.\n\nYeah, i know you are a big fan. It's okay.\n\nNow go and play the game.",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg3.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 100),
                child: Text(
                  'Tic Tac Toe',
                  style: TextStyle(
                    fontSize: 60,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 250, height: 100),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PlayerNames()),
                      );
                    },
                    child: Text(
                      'Play',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 250, height: 100),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Creditspage()),
                      );
                    },
                    child: Text(
                      'Credits',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 250, height: 100),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                    ),
                    onPressed: () {
                      exit(0);
                    },
                    child: Text(
                      'Quit',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlayerNames extends StatefulWidget {
  const PlayerNames({Key? key}) : super(key: key);

  @override
  _PlayerNamesState createState() => _PlayerNamesState();
}

class _PlayerNamesState extends State<PlayerNames> {
  String player1 = 'Player X';
  String player2 = 'Player O';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg3.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            'PLAYER INFO',
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 45),
              child: Text(
                'Enter player names',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
            Text(
              'Player X Name',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Player X',
                  hintStyle: TextStyle(fontSize: 22.0, color: Colors.grey),
                ),
                onChanged: (text) {
                  player1 = text;
                },
              ),
            ),
            Text(
              'Player O Name',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Player O',
                  hintStyle: TextStyle(fontSize: 22.0, color: Colors.grey),
                ),
                onChanged: (text) {
                  player2 = text;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Gamepage(p1: player1, p2: player2)),
                      );
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(fontSize: 40),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Gamepage extends StatefulWidget {
  final String p1;
  final String p2;

  const Gamepage({required this.p1, required this.p2});

  @override
  _GamepageState createState() => _GamepageState();
}

class _GamepageState extends State<Gamepage> {
  List<String> gridvalues = ['', '', '', '', '', '', '', '', ''];
  String lastmove = 'X';
  String currentmove = '';
  int filledboxes = 0;
  String winnerAnnouncement = '';

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg3.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            'Tic Tac Toe',
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: GridView.builder(
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                      ),
                      onPressed: () {
                        if (lastmove == 'X') {
                          currentmove = 'O';
                        } else {
                          currentmove = 'X';
                        }
                        _tapped(index, widget.p1, widget.p2);
                      },
                      child: Center(
                        child: Text(
                          gridvalues[index],
                          style: TextStyle(color: Colors.white, fontSize: 100),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                winnerAnnouncement,
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                ),
                onPressed: () {
                  _cleargrid();
                },
                child: Text(
                  'Reset',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _tapped(int index, String p1, String p2) {
    setState(() {
      if (gridvalues[index] == '') {
        lastmove = currentmove;
        gridvalues[index] = currentmove;
        filledboxes++;
        _checkWin(widget.p1, widget.p2);
      }
    });
  }

  void _checkWin(String p1, String p2) {
    // Checking rows
    if (gridvalues[0] == gridvalues[1] &&
        gridvalues[0] == gridvalues[2] &&
        gridvalues[0] != '') {
      _showWinDialog(gridvalues[0], widget.p1, widget.p2);
    } else if (gridvalues[3] == gridvalues[4] &&
        gridvalues[3] == gridvalues[5] &&
        gridvalues[3] != '') {
      _showWinDialog(gridvalues[3], widget.p1, widget.p2);
    } else if (gridvalues[6] == gridvalues[7] &&
        gridvalues[6] == gridvalues[8] &&
        gridvalues[6] != '') {
      _showWinDialog(gridvalues[6], widget.p1, widget.p2);
    }

    // Checking Column
    else if (gridvalues[0] == gridvalues[3] &&
        gridvalues[0] == gridvalues[6] &&
        gridvalues[0] != '') {
      _showWinDialog(gridvalues[0], widget.p1, widget.p2);
    } else if (gridvalues[1] == gridvalues[4] &&
        gridvalues[1] == gridvalues[7] &&
        gridvalues[1] != '') {
      _showWinDialog(gridvalues[1], widget.p1, widget.p2);
    } else if (gridvalues[2] == gridvalues[5] &&
        gridvalues[2] == gridvalues[8] &&
        gridvalues[2] != '') {
      _showWinDialog(gridvalues[2], widget.p1, widget.p2);
    }

    // Checking Diagonal
    else if (gridvalues[0] == gridvalues[4] &&
        gridvalues[0] == gridvalues[8] &&
        gridvalues[0] != '') {
      _showWinDialog(gridvalues[0], widget.p1, widget.p2);
    } else if (gridvalues[2] == gridvalues[4] &&
        gridvalues[2] == gridvalues[6] &&
        gridvalues[2] != '') {
      _showWinDialog(gridvalues[2], p1, p2);
    } else if (filledboxes == 9) {
      _showDrawDialog();
    }
  }

  void _showWinDialog(String winner, String p1, String p2) {
    setState(() {
      if (winner == 'X') {
        winnerAnnouncement = '$p1 won!';
      } else if (winner == 'O') {
        winnerAnnouncement = '$p2 won!';
      }
    });
  }

  void _showDrawDialog() {
    setState(() {
      winnerAnnouncement = "It's a Draw!";
    });
  }

  void _cleargrid() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        gridvalues[i] = '';
      }
      filledboxes = 0;
      winnerAnnouncement = '';
    });
  }
}
