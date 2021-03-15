import 'package:flutter/material.dart';
import 'package:flutter_app/modules/settings_screen/settings_screen.dart';
import 'package:flutter_app/shared/components/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{
  int counter = 1;

  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  int count = 0;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      key: scaffoldKey,
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
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: defaultButton(
                        press: ()
                        {
                          // String value = emailController.text;
                          //
                          // emailValidation(value);

                          setState(()
                          {
                            count--;
                            print(count);
                          });
                        },
                        text: 'minus 1',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      child: defaultButton(
                        press: ()
                        {
                          // String value = emailController.text;
                          //
                          // emailValidation(value);
                          setState(()
                          {
                            count++;
                            print(count);
                          });
                        },
                        text: 'plus 1',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                count.toString(),
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              // Container(
              //   width: double.infinity,
              //   child: defaultButton(
              //     press: ()
              //     {
              //       // String value = emailController.text;
              //       //
              //       // emailValidation(value);
              //     },
              //     text: 'result',
              //   ),
              // )
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

  void emailValidation(String value)
  {
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
