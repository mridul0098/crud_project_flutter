import 'package:crud/RestApi/RestClient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Style/Style.dart';
class ProductCrateScreen extends StatefulWidget {
  const ProductCrateScreen({Key? key}) : super(key: key);

  @override
  State<ProductCrateScreen> createState() => _ProductCrateScreenState();
}

class _ProductCrateScreenState extends State<ProductCrateScreen> {

  Map<String,String> FormValue={"Img": "", "ProductCode": "", "ProductName": "", "Qty": "", "TotalPrice": "", "UnitPrice": ""};
  bool loding=false;


  InputOnChange(MapKey, Textvalue)
  {
    setState(() {
      FormValue.update(MapKey, (Value) => Textvalue);

    });
  }

  FormOnSubmit()async{
    if(FormValue['img']!.length==0){
      Errortoast('img code required');
    }
    else if(FormValue['ProductCode']!.length==0){
      Errortoast("ProductCode code required");

    }
    else if(FormValue['ProductName']!.length==0){
      Errortoast("ProductName code required");

    }
    else if(FormValue['TotalPrice']!.length==0){
      Errortoast("TotalPrice code required");

    }
    else if(FormValue['TotalPrice']!.length==0){
      Errortoast("TotalPrice code required");

    }
    else if(FormValue['UnitPrice']!.length==0){
      Errortoast("UnitPrice code required");

    }
    else{
      setState(() {
        loding=true;
      });
      await ProductCreateRequest(FormValue);
      setState(() {
        loding=false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("create product"),),
      body: Stack(
        children: [
          ScreenBackgroun(context),
          Container(
              child: loding?(Center(child: CircularProgressIndicator(),)):(SingleChildScrollView(
                padding: EdgeInsets.all(25),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (Textvalue){
                        InputOnChange("Img",Textvalue);
                      },
                      decoration: AppInputDecoration("Img"),
                    ),

                    SizedBox(height:20,),
                    TextFormField(
                      onChanged: (Textvalue){
                        InputOnChange("ProductCode",Textvalue);

                      },
                      decoration: AppInputDecoration("prduct code"),
                    ),
                    SizedBox(height:20,),

                    TextFormField(
                      onChanged: (Textvalue){
                        InputOnChange("ProductName",Textvalue);

                      },
                      decoration: AppInputDecoration("ProductName"),
                    ),
                    SizedBox(height:20,),

                    TextFormField(
                      onChanged: (Textvalue){
                        InputOnChange("TotalPrice",Textvalue);

                      },
                      decoration: AppInputDecoration("TotalPrice"),
                    ),
                    SizedBox(height:20,),

                    TextFormField(
                      onChanged: (Textvalue){
                        InputOnChange("UnitPrice",Textvalue);

                      },
                      decoration: AppInputDecoration("UnitPrice"),
                    ),

                    SizedBox(height:20,),

                    Appdropdownstyle(
                        DropdownButton(
                          value: FormValue["Qty"],
                          items:[
                            DropdownMenuItem(child: Text("select Qt"),value: "",),
                            DropdownMenuItem(child: Text("one"),value: "one",),
                            DropdownMenuItem(child: Text("two"),value: "two",),
                            DropdownMenuItem(child: Text("three"),value: "three",),
                            DropdownMenuItem(child: Text("four"),value: "four",),
                          ],
                          onChanged:(Textvalue){
                            InputOnChange("Qty",Textvalue);

                          },
                          isExpanded: true,
                          underline: Container(),
                        )
                    ),
                    SizedBox(height:20,),

                    Container(
                      child: ElevatedButton(
                        style: AppButtonStyle(),

                        onPressed:(){
                          FormOnSubmit();
                        },
                        child:SuccessButtoChild("submit") ,
                      ),
                    )


                  ],
                ),
              ))

          )
        ],
      ),
    );
  }
}
