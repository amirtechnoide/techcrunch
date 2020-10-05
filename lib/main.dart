import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'src/welcomePage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => FirstScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => SecondScreen(),
      // '/third': (context) => ThirdScreen(),
    },
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("images/1.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: IconButton(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            splashColor: CupertinoColors.activeOrange,
            padding: const EdgeInsets.all(25.0),
            iconSize: 50.0,
            // tooltip: 'Increment Counter',
            // child: Text('Skip'),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            }),
      ),
    );
  }
}

//second screen
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("images/2.jpg"), fit: BoxFit.cover)),
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              // margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
              IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  splashColor: CupertinoColors.activeOrange,
                  padding: const EdgeInsets.all(40.0),
                  iconSize: 50.0,
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  }),
            ],
          ),
          backgroundColor: Colors.transparent,
          floatingActionButton: IconButton(
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              splashColor: CupertinoColors.activeOrange,
              padding: const EdgeInsets.all(25.0),
              iconSize: 50.0,
              onPressed: () {
                // Navigator.pushNamed(context, '/third');
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => WelcomePage()));
              }),
        )

        // iconbuttonleft
        );
  }
}

// Sign In Screen
// class ThirdScreen extends StatelessWidget {
//   final formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.lightGreen,
//         title: Text("SIGN IN"),
//       ),
//       body: SafeArea(
//         child: Form(
//           key: formKey,
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.all(25.0),
//                   child: TextFormField(
//                     decoration: InputDecoration(hintText: "Email"),
//                     validator: (value) {
//                       if (value.trim().isEmpty) {
//                         return "Email required";
//                       }
//                     },
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(25.0),
//                   child: TextFormField(
//                     decoration: InputDecoration(hintText: "Password"),
//                     validator: (value) {
//                       if (value.trim().isEmpty) {
//                         return "Email required";
//                       }
//                       if (value.length < 8) {
//                         return "Password needs to be atleat 7 characters";
//                       }
//                     },
//                     obscureText: true,
//                   ),
//                 ),
//                 RaisedButton(
//                   onPressed: () {
//                     if (formKey.currentState.validate()) {
//                       print(" The Form is valid");
//                     }
//                   },
//                   child: Text("Sign In"),
//                 ),
//               ]),
//         ),
//       ),
//     );
//   }
// }

// Register Screen

// class FourScreen extends StatelessWidget {
//   final formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.lightGreen,
//         title: Text("REGISTER"),
//       ),
//       body: SafeArea(
//         child: Form(
//           key: formKey,
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.all(25.0),
//                   child: TextFormField(
//                     decoration: InputDecoration(hintText: "Campus"),
//                     validator: (value) {
//                       if (value.trim().isEmpty) {
//                         return "Campus required";
//                       }
//                     },
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(25.0),
//                   child: TextFormField(
//                     decoration: InputDecoration(hintText: "Email"),
//                     validator: (value) {
//                       if (value.trim().isEmpty) {
//                         return "Email required";
//                       }
//                     },
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(25.0),
//                   child: TextFormField(
//                     decoration: InputDecoration(hintText: "Username"),
//                     validator: (value) {
//                       if (value.trim().isEmpty) {
//                         return "Username required";
//                       }
//                     },
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(25.0),
//                   child: TextFormField(
//                     decoration: InputDecoration(hintText: "Password"),
//                     validator: (value) {
//                       if (value.trim().isEmpty) {
//                         return "Email required";
//                       }
//                       if (value.length < 8) {
//                         return "Password needs to be atleat 7 characters";
//                       }
//                     },
//                     obscureText: true,
//                   ),
//                 ),
//                 RaisedButton(
//                   onPressed: () {
//                     if (formKey.currentState.validate()) {
//                       print(" The Form is valid");
//                     }
//                   },
//                   child: Text("Sign In"),
//                 ),
//               ]),
//         ),
//       ),
//     );
//   }
// }
