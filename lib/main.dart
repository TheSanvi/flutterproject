import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'app : Many Quizzes';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MYQuiz(title: appTitle),
    );
  }
}

//*********************************************
class MYQuiz extends StatefulWidget {
  final String title;
  const MYQuiz({super.key, required this.title});

  @override
  State<MYQuiz> createState() => _MYQuiz();
}

class _MYQuiz extends State<MYQuiz> {
  String quizname = "The Quiz will appear here.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: Text(widget.title),
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ClipOval(child: Image.network(Utilities.imagepath)),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(quizname),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 56,
                    backgroundColor: Colors.teal,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child:
                      ClipOval(child: Image.network(Utilities.imagepath)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Available Quizzes'),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Quiz 1'),
              onTap: () {
                quizname = "Quiz 1";
                setState(() {});
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Quiz 2"),
              onTap: () {
                quizname = "Quiz 2";
                setState(() {});
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Utilities {
  static String imagepath =
      "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjy2x0ON-9WhkLuW8TtHODEummjn9UEX7DLYX-mCQeTANCnLbJHwegljnZoKn3Zz2kFaQ5H_u_EqbbVzDE1wCtFKvUY9haHbZxPWgYCjlEeMMhzkJrP5dhnI-rEDcE950upo45KF_7DxxgO3615YSAGy2FmOuirMgvnUrHFHYo8VcLSaPhgcmgOZBGDNRrh/s320/IMG20230507181718.jpg";
}