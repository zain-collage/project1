import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project1/models/interstes/interests_model.dart';
import 'package:project1/shared/styes/colors.dart';

Widget defaultButton({
  double width = double.infinity,
  Color backgroundcolor = defaultColor,
  Color textcolor = Colors.white,
  double radius = 28.0,
  double fontSize = 19.0,
  List<BoxShadow>? boxShadow,
  Gradient? gradient,
  FontWeight? fontWeight = FontWeight.w600,
  required Function()? function,
  required String text,
  Color borderColor = defaultColor,
  bool isBorderColor = true,
}) =>
    InkWell(
      onTap: function,
      child: Container(
        width: width,
        height: 48,
        decoration: BoxDecoration(
          gradient: gradient,
          boxShadow: boxShadow,
          borderRadius: BorderRadius.circular(radius),
          color: backgroundcolor,
          border: isBorderColor ? Border.all(color: borderColor) : null,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: fontWeight,
              color: textcolor,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required String? Function(String?)? validate,
  required String label,
  String? hintText,
  double radius = 28,
  bool? filled = true,
  Color? fillColor = formFieldColor,
  IconData? prefix,
  IconData? suffix,
  Function(String)? onChanged,
  Function(String)? onSubmit,
  Function()? onTap,
  bool isbasswors = false,
  Function()? suffixPressed,
  bool isClickable = true,
  bool readOnly = false,
}) =>
    TextFormField(
      readOnly: readOnly,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      onChanged: onChanged,
      onTap: onTap,
      validator: validate,
      controller: controller,
      keyboardType: type,
      obscureText: isbasswors,
      cursorColor: defaultColor,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: filled,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                icon: Icon(suffix),
                onPressed: suffixPressed,
              )
            : null,
        labelText: label,
        // labelStyle: TextStyle(
        //     color: const Color(0xffb6b7b7),
        //     fontWeight: FontWeight.w400,
        //     fontSize: 15.0),
        hintText: hintText,
        hintStyle: TextStyle(
          color: hintFieldColor,
          fontWeight: FontWeight.w400,
          fontSize: 15.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );

Widget defaultDropFormField({
  required String? label,
  required List? list,
  required void Function(Object?)? onchanged,
  FloatingLabelAlignment? floatingLabelAlignment =
      FloatingLabelAlignment.center,
}) {
  return DropdownButtonFormField(
    menuMaxHeight: 250,
    decoration: InputDecoration(
      fillColor: formFieldColor,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
      ),
      labelText: label,
      floatingLabelAlignment: floatingLabelAlignment,
      hintText: "00",
      hintStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
    ),
    items: list!.map((list) {
      return DropdownMenuItem(
        child: Text(list),
        value: list,
      );
    }).toList(),
    onChanged: onchanged,
  );
}

void showToast({required String text, required ToastState state}) =>
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: chooseToastColor(state),
        textColor: Colors.white,
        fontSize: 16.0);

enum ToastState { SUCCESS, ERROR, WORNING }

Color chooseToastColor(ToastState state) {
  Color color;
  switch (state) {
    case ToastState.SUCCESS:
      color = Colors.green;
      break;
    case ToastState.ERROR:
      color = Colors.red;
      break;
    case ToastState.WORNING:
      color = Colors.amber;
      break;
  }
  return color;
}
