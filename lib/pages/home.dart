import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List quiz = [];
  List answers = [];
  List random = [];
  var counter = 0;

  @override
  void initState() {
    super.initState();
    quiz = ([
      'Who plays the role of Sherlock Holmes in the TV series Sherlock?',
      'Who painted the famous artwork The Starry Night?',
      'What is the main ingredient in guacamole?',
      'In which year did World War I begin?',
      'What was the name of the company in the UK version of The Office?',
      'Who was the leader of the Soviet Union during World War II?',
      'In which decade did the Berlin Wall fall, symbolising the end of the Cold War?',
      'What is the capital city of Canada?',
      'What is the chemical symbol for hydrogen?',
      'Which country is known as the Land of the Rising Sun?',
      'Which African country has the highest population?',
      'Which cricket ground is known as the Home of Cricket?',
      'What is the capital city of New Zealand?',
      'Who painted the Mona Lisa?',
      'Which country invented the sport of cricket?',
      'Which continent is the largest in terms of land area?',
      'How many players are there in a basketball team?',
      'Who is the most successful British Formula One driver in history?',
      'Who is the Greek god of thunder?',
      'Who is missing from this line-up Bruno Tonioli, Amanda Holden, Alesha Dixon, ______?'
    ]);
    answers = (['Benedict Cumberbatch',
      'Vincent van Gogh',
      'Avocado',
      '1914',
      'Wernham Hogg',
      'Joseph Stalin',
      'The 1980s (1989)',
      'Ottawa',
      'H',
      'Japan',
      'Nigeria',
      "Lord's",
      'Wellington',
      'Leonardo da Vinci',
      'England',
      'Asia',
      '5',
      'Lewis Hamilton',
      'Zeus',
      'Simon Cowell']);
    random = (['Lewis G. Wilson',
      'Leonardo da Vinci',
      'Apple',
      '1945',
      'Word Weave',
      'Vladimir Lenin',
      'The 1990s (1991)',
      'Portland',
      'Hg',
      'China',
      'Egypt',
      'Adelaide',
      'Auckland',
      'Vincent van Gogh',
      'Germany',
      'Europa',
      '7',
      "Nigel Mansell's",
      'Tor',
      'Taylor Swift']);
    counter = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          shadowColor: Colors.lightBlue,
          title: const Text('Quiz'),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: quiz.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                key: Key(quiz[index]),
                child: Card(
                  child: ListBody(
                    children: <Widget>[
                        ListTile(
                          title: Text(quiz[index]),
                        ),
                      TextButton(
                        child: Text(answers[index]),
                        onPressed: () {
                          setState(() => counter++);
                          print(counter);
                          quiz.removeAt(index);
                          answers.removeAt(index);
                          random.removeAt(index);
                        },),
                      TextButton(
                        child: Text(random[index]),
                        onPressed: () {
                          setState(() => counter);
                          print(counter);
                          quiz.removeAt(index);
                          answers.removeAt(index);
                          random.removeAt(index);
                        },),
                      ])
              ),);
            }),
    );
  }
}




