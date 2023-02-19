import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget defaultButton({
  double width = 280.0,
  double height = 64.0,
  String hexColor = '#045255',
  double borderRadius = 15.0,
  required Function()? onPressed,
  required String text,
  Color textColor = Colors.white,
  double fontSize = 25.0,
}) => Container(
  width: width,
  height: height,
  decoration: BoxDecoration(
    color: HexColor(
      hexColor,
    ),
    borderRadius: BorderRadius.circular(
      borderRadius,
    ),
  ),
  child: MaterialButton(
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
      ),
    ),
  ),
);

Widget defaultNoteMessage({
  double margin = 25.0,
  double padding = 20.0,
  double opacity = 0.5,
  double borderRadius = 15.0,
  double titleBoldTextSize = 30.0,
  double titleRegularTextSize = 20.0,
  double bodyTextSize = 20.0,
  double endTextSize = 20.0,
  bool isTransparent = true,
  Color backgroundColor = Colors.white,
  Color? titleBoldTextColor = Colors.black,
  Color? titleRegularTextColor = Colors.black,
  Color? bodyTextColor = Colors.black,
  Color? endTextColor = Colors.black,
  FontWeight titleBoldFontWeight = FontWeight.w700,
  FontWeight? titleRegularFontWeight,
  FontWeight? bodyTextFontWeight,
  FontWeight? endTextFontWeight,
  TextAlign? titleTextAlign,
  TextAlign bodyTextAlign = TextAlign.justify,
  TextAlign endTextAlign = TextAlign.end,
  String? titleBold,
  String? titleRegular,
  String? bodyText,
  String? endText,
  required String buttonText,
  required Function()? onPressed,
}) => Center(
  child: Container(
    margin: EdgeInsets.symmetric(
      horizontal: margin,
    ),
    padding: EdgeInsets.all(
      padding,
    ),
    decoration: BoxDecoration(
      color: isTransparent ? backgroundColor.withOpacity(
        opacity,
      ) : backgroundColor,
      borderRadius: BorderRadius.circular(
        borderRadius,
      ),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        RichText(
          text: TextSpan(
            children:
            [
              TextSpan(
                text: titleBold,
                style: TextStyle(
                  fontSize: titleBoldTextSize,
                  fontWeight: titleBoldFontWeight,
                  color: titleBoldTextColor,
                ),
              ),
              TextSpan(
                text: titleRegular,
                style: TextStyle(
                  fontSize: titleRegularTextSize,
                  fontWeight: titleRegularFontWeight,
                  color: titleRegularTextColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          bodyText!,
          style: TextStyle(
            fontSize: bodyTextSize,
            fontWeight: bodyTextFontWeight,
            color: bodyTextColor,
          ),
          textAlign: bodyTextAlign,
        ),
        SizedBox(
          height: 14.0,
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            endText!,
            style: TextStyle(
              fontSize: endTextSize,
              fontWeight: endTextFontWeight,
              color: endTextColor,
            ),
            textAlign: endTextAlign,
          ),
        ),
        SizedBox(
          height: 27.0,
        ),
        defaultButton(
            onPressed: onPressed,
            text: buttonText,
        ),
      ],
    ),
  ),
);
