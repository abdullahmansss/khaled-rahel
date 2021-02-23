import 'package:flutter/material.dart';

void showSnackBar({
  @required String text,
  Function press,
  @required GlobalKey<ScaffoldState> scaffoldKey,
}) {
  scaffoldKey.currentState.showSnackBar(
    SnackBar(
      content: Text(
        text,
      ),
      backgroundColor: Colors.grey,
      duration: Duration(
        seconds: 2,
      ),
      behavior: SnackBarBehavior.fixed,
      elevation: 0.0,
      action: press != null ? SnackBarAction(
        label: 'UNDO',
        onPressed: press,
      ) : null,
    ),
  );
}

Widget defaultButton({
  @required Function press,
  @required String text,
}) =>
    MaterialButton(
      color: Colors.blue,
      height: 40.0,
      onPressed: press,
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );

void navigateTo(BuildContext context, Widget widget,) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (BuildContext context) => widget,
  ),
);

Widget buildDivider({
  double height = 1.0,
}) =>
    Container(
      height: height,
      width: double.infinity,
      color: Colors.grey[300],
    );

Widget defaultFormField({
  @required TextEditingController controller,
  @required String hint,
  @required String validate,
  @required TextInputType type,
  @required Function submit,
}) => TextFormField(
  controller: controller,
  decoration: InputDecoration(
    hintText: hint,
  ),
  keyboardType: type,
  onFieldSubmitted: submit,
  validator: (value)
  {
    if(value.isEmpty)
    {
      return validate;
    }

    return null;
  },
);