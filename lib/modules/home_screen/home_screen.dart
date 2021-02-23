import 'package:flutter/material.dart';
import 'package:flutter_app/modules/settings_screen/settings_screen.dart';
import 'package:flutter_app/shared/components/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 1;

  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int b = 0;

    return Scaffold(
      backgroundColor: Colors.white,
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        // leading: Icon(
        //   Icons.agriculture,
        // ),
        // title: Text(
        //   'Hello',
        // ),
        actions: [
          // IconButton(
          //   icon: Icon(
          //     Icons.search,
          //   ),
          //   onPressed: () {
          //     print('search clicked');
          //     b++;
          //     print(b);
          //   },
          // ),
          // IconButton(
          //   icon: Icon(
          //     Icons.notifications,
          //   ),
          //   onPressed: () {
          //     print('notifications clicked');
          //   },
          // ),
          MaterialButton(
            onPressed: () {},
            child: Text(
              'SKIP',
            ),
          ),
        ],
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(
                    'https://www.bdaia.com/amr_work/discy/logo.png'),
                height: 70.0,
              ),
              SizedBox(
                height: 40.0,
              ),
              defaultFormField(
                controller: emailController,
                hint: 'Email',
                validate: 'email must not be empty',
                type: TextInputType.emailAddress,
                submit: (value) {
                  emailValidation(value);
                },
              ),
              defaultFormField(
                controller: passwordController,
                hint: 'Password',
                validate: 'password must not be empty',
                type: TextInputType.visiblePassword,
                submit: (value) {
                  if (formKey.currentState.validate()) {
                    showSnackBar(
                      text: value,
                      scaffoldKey: scaffoldKey,
                    );
                  }
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                child: defaultButton(
                  press: () {
                    String value = emailController.text;

                    emailValidation(value);
                  },
                  text: 'login',
                ),
              ),
              // SizedBox(
              //   height: 40.0,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     defaultButton(
              //       press: () {
              //         setState(() {
              //           if (counter == 1)
              //             showSnackBar(
              //               scaffoldKey: scaffoldKey,
              //               text: 'Can\'t be less than 1',
              //               press: () {
              //                 print('1');
              //               },
              //             );
              //           else
              //             counter--;
              //         });
              //       },
              //       text: 'minus',
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(
              //         horizontal: 30.0,
              //       ),
              //       child: Text(
              //         '$counter',
              //         style: TextStyle(
              //           fontSize: 20.0,
              //           fontWeight: FontWeight.w800,
              //         ),
              //       ),
              //     ),
              //     defaultButton(
              //       press: () {
              //         if (counter == 5)
              //           showSnackBar(
              //             scaffoldKey: scaffoldKey,
              //             text: 'Can\'t be more than 5',
              //           );
              //         else
              //           counter++;
              //         setState(() {});
              //       },
              //       text: 'plus',
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  void emailValidation(String value) {
    navigateTo(
      context,
      SettingsScreen(),
    );
    // if (formKey.currentState.validate()) {
    //   if (value.contains('@') && value.contains('.com'))
    //   {
    //     // showSnackBar(
    //     //   text: value,
    //     //   scaffoldKey: scaffoldKey,
    //     // );
    //
    //     navigateTo(
    //       context,
    //       SettingsScreen(),
    //     );
    //   } else {
    //     showSnackBar(
    //       text: 'please enter a valid email!',
    //       scaffoldKey: scaffoldKey,
    //     );
    //   }
    // }
  }
}
