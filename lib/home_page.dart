import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int noCount = 0;
  bool yesPressed = false;

  double get yesFontSize => 16 + noCount * 5.0;

  final List<String> phrases = [
    "No",
    "Are you sure?",
    "What if I asked really nicely?",
    "Pretty please",
    "With a chocolate rice cake on top",
    "What about a matcha frostie",
    "PLEASE POOKIE",
    "But :*(",
    "I am going to die",
    "Yep im dead",
    "ok ur talking to my ghost",
    "please babe",
    ":((((",
    "PRETTY PLEASE",
    "Estoy muerto [I'm dead]",
    "No :(",
    "Don't break my heart 💔",
    "I'll cry for real 😢",
    "Is that your final answer?",
    "What about next week?",
    "I made cookies though 🍪",
    "Je t'en prie [I beg you]",
    "Maybe reconsider? 🤔",
    "Not even for ice cream? 🍦",
    "My grandma will be disappointed",
    "You're killing me 💀",
    "Por favor? [Please?]",
    "I'll write you a love poem ✍️",
    "That's so mean! 😭",
    "Ich flehe dich an [I implore you]",
    "But look at my puppy eyes 🥺",
    "We can watch your favorite movie",
    "I already told my mom you said yes",
    "Nein? Wirklich? [No? Really?]",
    "What if I do the dishes for a week?",
    "My heart can't take this 💔💔💔",
    "我求你了 [I'm begging you]",
    "I'm literally on my knees 🧎",
    "Onegai shimasu? [Please?]",
    "You've crushed my soul 👻",
    "I'll buy you tacos 🌮",
    "Per favore? [Please?]",
    "This is so sad, Alexa play Despacito",
    "Consider this a formal petition 📝",
    "The teddy bears are crying 🧸",
    "Я умоляю [I'm begging]",
    "I'm running out of things to say",
    "This is my last attempt... jk",
    "Fine, I'll ask your pet instead",
    "You're breaking the internet 😱",
    "부탁해요 [Please]",
    "I won't survive this rejection",
    "This button is getting tired",
    "Really? After all we've been through?",
  ];

  String get noButtonText =>
      phrases[noCount < phrases.length ? noCount : phrases.length - 1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child:
              yesPressed
                  ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://media.tenor.com/gUiu1zyxfzYAAAAi/bear-kiss-bear-kisses.gif',
                        height: 200,
                      ),
                      SizedBox(height: 24),
                      Text(
                        'I know you would say yes!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                  : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("lib/assets/bear.gif"),
                      SizedBox(height: 24),
                      Text(
                        'Will you be my girlfriend?',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                yesPressed = true;
                              });
                            },
                            child: Text(
                              'Yes',
                              style: TextStyle(
                                fontSize: yesFontSize,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                noCount++;
                              });
                            },
                            child: Text(
                              noButtonText,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
        ),
      ),
    );
  }
}
