import 'package:demo_quiz/data/questions.dart';
import 'package:demo_quiz/questionscreen.dart';
import 'package:demo_quiz/result_screen.dart';
import 'package:demo_quiz/startscreen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});


  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activescreen = 'start-screen';


  void switchscreen() {
    setState(() {
      activescreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == question.length){
      setState(() {
        activescreen = 'result-screen';
      });
    }
  }

   void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activescreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenwidget = StartScreen(switchscreen);
    if (activescreen == 'question-screen') {
      screenwidget = QuestionScreen(onSelectAnswer: chooseAnswer,);
    }

    if (activescreen == 'result-screen'){
      screenwidget = ResultsScreen(chosenAnswers: selectedAnswers, onRestart: restartQuiz,);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueGrey),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueGrey, Color.fromARGB(255, 206, 206, 206)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: screenwidget,
        ),
      ),
    );
  }
}
