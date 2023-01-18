import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Style/Style.dart';
class ProductCrateScreen extends StatefulWidget {
  const ProductCrateScreen({Key? key}) : super(key: key);

  @override
  State<ProductCrateScreen> createState() => _ProductCrateScreenState();
}

class _ProductCrateScreenState extends State<ProductCrateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("create product"),),
      body: Stack(
        children: [
          ScreenBackgroun(context),
        Container(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(25),
      child: Column(
        children: [
          TextFormField(
            onChanged: (value){},
            decoration: AppInputDecoration("product name"),
          ),
          SizedBox(height:20,),
          TextFormField(
            onChanged: (value){},
            decoration: AppInputDecoration("prduct code"),
          ),
          SizedBox(height:20,),

          TextFormField(
            onChanged: (value){},
            decoration: AppInputDecoration("product imaage"),
          ),
          SizedBox(height:20,),

          TextFormField(
            onChanged: (value){},
            decoration: AppInputDecoration("Unit price"),
          ),
          SizedBox(height:20,),

          TextFormField(
            onChanged: (value){},
            decoration: AppInputDecoration("total price"),
          ),

          SizedBox(height:20,),

          Appdropdownstyle(
              DropdownButton(
                value: "",
                  items:[
                    DropdownMenuItem(child: Text("select Qt"),value: "",),
                    DropdownMenuItem(child: Text("one"),value: "one",),
                    DropdownMenuItem(child: Text("two"),value: "two",),
                    DropdownMenuItem(child: Text("three"),value: "three",),
                    DropdownMenuItem(child: Text("four"),value: "four",),
                  ],
                  onChanged:(value){},
              isExpanded: true,
                underline: Container(),
              )
          ),
          SizedBox(height:20,),

          ElevatedButton(
            style: AppButtonStyle(),
              onPressed:(){},
              child:SuccessButtoChild("submit") ,
          )


        ],
      ),
    ))
      ],
      ),
    );
  }
}
