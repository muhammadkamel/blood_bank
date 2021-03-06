import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SharedUI {
  static const Color red = Color(0xffD22E2B);
  static const Color white = Colors.white;
  static const Color gray = Color(0xff8FA0B3);
  static const Color lightGray = Color(0xff718096);

  static TextStyle textStyle(Color textColor) {
    return TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
        color: textColor,
        fontSize: 24);
  }

  static InputDecoration inputDecoration(String hint, {Widget suffix}) {
    return InputDecoration(
        hintText: hint,
        suffixIcon: suffix,
        counterText: "",
        errorStyle: TextStyle(fontSize: 16),
        hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            color: Color(0xff8FA0B3),
            fontSize: 20),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0xffCBD5E0), width: 1.5)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: SharedUI.red, width: 1.5)));
  }

  static InputDecoration profileInputDecoration(String helper) {
    return InputDecoration(
        counterText: "",
        labelText: helper,
        labelStyle: TextStyle(
          color: Color(0xff8FA0B3),
        ),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0xffCBD5E0), width: 1.5)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: SharedUI.red, width: 1.5)));
  }

  static TextStyle textFormFieldStyle = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      color: Colors.black,
      fontSize: 20);

  static TextFormField input(String hint) {
    return TextFormField(
      style: SharedUI.textFormFieldStyle,
      cursorColor: SharedUI.red,
      decoration: SharedUI.inputDecoration(hint),
    );
  }

  static Widget myBackgroundImage = Stack(
    children: [
      SizedBox.expand(
          child: Image.asset(
        'assets/images/stock.jpg',
        fit: BoxFit.cover,
        alignment: Alignment(-0.4, 0),
      )),
      Opacity(
        opacity: 0.3,
        child: Container(
          color: red,
        ),
      ),
    ],
  );

  static Widget drawButton(double width, double height, String text,
      {Color textColor = white, Color bgColor = red, Function event}) {
    return SizedBox(
      width: width * 0.85,
      height: height * 0.1,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: Text(
          text,
          style: textStyle(textColor),
        ),
        color: bgColor,
        onPressed: (event) != null ? event : () {},
      ),
    );
  }

  static SnackBar updatingSnackBar(String text, double height) {
    return SnackBar(
      backgroundColor: SharedUI.lightGray,
      content: Container(
        height: height * 0.03,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    textBaseline: TextBaseline.alphabetic),
              ),
              Center(
                child: TyperAnimatedTextKit(
                  text: ['...'],
                  speed: Duration(milliseconds: 100),
                  textStyle: TextStyle(fontSize: 20.0, color: SharedUI.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static SnackBar successSnackBar(String text, double height) {
    return SnackBar(
      backgroundColor: Colors.green.shade400,
      content: Container(
        height: height * 0.03,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    textBaseline: TextBaseline.alphabetic),
              ),
            ],
          ),
        ),
      ),
      duration: const Duration(seconds: 2),
    );
  }

  static SnackBar failedSnackBar(String text, double height) {
    return SnackBar(
      backgroundColor: SharedUI.red,
      content: Container(
        height: height * 0.03,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    textBaseline: TextBaseline.alphabetic),
              ),
            ],
          ),
        ),
      ),
      duration: const Duration(seconds: 2),
    );
  }
}
