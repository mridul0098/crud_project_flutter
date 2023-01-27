import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_svg/svg.dart';
const colorRed= Color.fromRGBO(231,28,36,1);
const colorgreen= Color.fromRGBO(33,191,115,1);
const colorWhite= Color.fromRGBO(255,255,155,1);
const colorDarkBlue= Color.fromRGBO(44,62,80,1);

SliverGridDelegateWithFixedCrossAxisCount ProductGridViewStyle(){
  return SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 2,
    mainAxisExtent:250,
  );
}

DecoratedBox Appdropdownstyle(child){
return DecoratedBox(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color:Colors.white,width: 1),
      borderRadius: BorderRadius.circular(4)
    ),
        child: child,
);
}

SvgPicture ScreenBackgroun(context){
  return SvgPicture.asset(
    "assect/images/egg.svg",
        alignment: Alignment.center,
        width:MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}

InputDecoration AppInputDecoration(lavel){
  return InputDecoration(
    border: OutlineInputBorder(),
  labelText: lavel,
    hintText: lavel,
  );
}
ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))

  );
}
Ink SuccessButtoChild(ButtonText){
  return Ink(
    decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.circular(6),

    ),
    child: Container(
      height: 45,
      alignment: Alignment.center,
      child: Text(ButtonText, style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),),
    ),
  );
}



void Errortoast(msg){
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
  );
}

void SuccessTost(msg){
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0
  );
}