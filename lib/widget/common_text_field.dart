import 'package:flutter/material.dart';

enum TextFieldType {
  userName,
  phoneNumber,
  emailAddress,
  subject,
  styleThrough,
  name,
  title,
  organization,
  emailAddress2,
  eventDate,
  attendess,
  desired,
  topics,
  additional,
  userName2,
  phoneNumber2,
  emailAddress3,
  subject2,
  styleThrough2,
  search,
}

class CustomTextField extends StatelessWidget {
  final TextFieldType textFieldType;
  final TextEditingController? textEditingController;
  final Widget? clearTextWidget;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;
  const CustomTextField({
    Key? key,
    this.validator,
    this.textEditingController,
    required this.textFieldType,
    this.clearTextWidget,
    this.obscureText = false,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextFormField(
        style: style,
        textAlignVertical: TextAlignVertical.center,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        //maxLength: maxLength,
        //maxLines: maxLines,
        obscureText: obscureText,
        controller: textEditingController,
        validator:
            validator ?? (val) => val!.trim().isEmpty ? "field required" : null,
        decoration: InputDecoration(
          errorBorder: errorBorder,
          focusedErrorBorder: focusedBorder,
          focusedBorder: focusedBorder,
          enabledBorder: border,
          hintStyle: hintStyle,
          fillColor: fillColor,
          filled: true,
          contentPadding: const EdgeInsets.only(top: 10, left: 15),
          suffixIcon: suffix,
          hintText: hintText,
        ),
      ),
    );
  }

  Widget? get suffix {
    switch (textFieldType) {
      case TextFieldType.search:
        return Container(
          height: 40,
          width: 50,
          decoration: BoxDecoration(
              color: Color(0xff002343),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(5),
              )),
          child: Icon(
            Icons.search,
            color: Colors.white,
            size: 21,
          ),
        );
      default:
        return null;
    }
  }

  TextStyle get hintStyle {
    switch (textFieldType) {
      case TextFieldType.userName2:
      case TextFieldType.phoneNumber2:
      case TextFieldType.emailAddress3:
      case TextFieldType.subject2:
      case TextFieldType.styleThrough2:
        return TextStyle(color: Colors.black);
      case TextFieldType.search:
        return TextStyle(color: Color(0xff002343));
    }
    return TextStyle(color: Colors.white);
  }

  TextStyle get style {
    switch (textFieldType) {
      case TextFieldType.userName2:
      case TextFieldType.phoneNumber2:
      case TextFieldType.emailAddress3:
      case TextFieldType.subject2:
      case TextFieldType.styleThrough2:
      case TextFieldType.search:
        return TextStyle(fontSize: 15, fontWeight: FontWeight.w400);
    }
    return TextStyle(
        color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400);
  }

  Color get fillColor {
    switch (textFieldType) {
      case TextFieldType.userName2:
      case TextFieldType.phoneNumber2:
      case TextFieldType.emailAddress3:
      case TextFieldType.subject2:
      case TextFieldType.styleThrough2:
      case TextFieldType.search:
        return Colors.white;
    }
    return Color(0xff003057);
  }

  TextInputType? get textInputType {
    switch (textFieldType) {
      case TextFieldType.phoneNumber:
      case TextFieldType.phoneNumber2:
        return TextInputType.number;
    }
    return null;
  }

  TextInputAction? get textInputAction {
    switch (textFieldType) {
      case TextFieldType.userName:
      case TextFieldType.phoneNumber:
      case TextFieldType.emailAddress:
      case TextFieldType.subject:
      case TextFieldType.styleThrough:
      case TextFieldType.name:
      case TextFieldType.title:
      case TextFieldType.organization:
      case TextFieldType.emailAddress2:
      case TextFieldType.eventDate:
      case TextFieldType.attendess:
      case TextFieldType.desired:
      case TextFieldType.topics:
      case TextFieldType.additional:
      case TextFieldType.userName2:
      case TextFieldType.phoneNumber2:
      case TextFieldType.emailAddress3:
      case TextFieldType.subject2:
      case TextFieldType.styleThrough2:
      case TextFieldType.search:
        return TextInputAction.next;
      default:
        return null;
    }
  }

  InputBorder get focusedErrorBorder {
    switch (textFieldType) {
      case TextFieldType.userName2:
      case TextFieldType.phoneNumber2:
      case TextFieldType.emailAddress3:
      case TextFieldType.subject2:
      case TextFieldType.styleThrough2:
      case TextFieldType.search:
        return OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.black),
        );
      default:
        return OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.white),
        );
    }
  }

  InputBorder get errorBorder {
    switch (textFieldType) {
      case TextFieldType.userName2:
      case TextFieldType.phoneNumber2:
      case TextFieldType.emailAddress3:
      case TextFieldType.subject2:
      case TextFieldType.styleThrough2:
      case TextFieldType.search:
        return OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.black),
        );
      default:
        return OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.white),
        );
    }
  }

  InputBorder get focusedBorder {
    switch (textFieldType) {
      case TextFieldType.userName2:
      case TextFieldType.phoneNumber2:
      case TextFieldType.emailAddress3:
      case TextFieldType.subject2:
      case TextFieldType.styleThrough2:
      case TextFieldType.search:
        return OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.black),
        );
      default:
        return OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.white),
        );
    }
  }

  InputBorder get border {
    switch (textFieldType) {
      case TextFieldType.userName2:
      case TextFieldType.phoneNumber2:
      case TextFieldType.emailAddress3:
      case TextFieldType.subject2:
      case TextFieldType.styleThrough2:
      case TextFieldType.search:
        return OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.black),
        );
      default:
        return OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.white),
        );
    }
  }

  String? get hintText {
    switch (textFieldType) {
      case TextFieldType.emailAddress:
      case TextFieldType.emailAddress3:
        return "your Email Address";
      case TextFieldType.userName:
      case TextFieldType.userName2:
        return "your full name";
      case TextFieldType.phoneNumber:
      case TextFieldType.phoneNumber2:
        return "your phone number";
      case TextFieldType.subject:
      case TextFieldType.subject2:
        return "subject / inquiry";
      case TextFieldType.styleThrough:
      case TextFieldType.styleThrough2:
        return "i Found Signature Style Through...";
      case TextFieldType.name:
        return "your full name";
      case TextFieldType.title:
        return "Title";
      case TextFieldType.organization:
        return "Organization";
      case TextFieldType.emailAddress2:
        return "Email Address";
      case TextFieldType.eventDate:
        return "event date";
      case TextFieldType.attendess:
        return "# of attendess";
      case TextFieldType.desired:
        return "Desired Presantation Length";
      case TextFieldType.topics:
        return "Topics That Spark Your Interest";
      case TextFieldType.additional:
        return "Additional Comments Or Questions";
      case TextFieldType.search:
        return "search";
      default:
        return null;
    }
  }
}
