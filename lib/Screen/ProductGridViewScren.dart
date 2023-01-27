import 'package:crud/Style/Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../RestApi/RestClient.dart';

class ProductGridViewScren extends StatefulWidget {
  const ProductGridViewScren({Key? key}) : super(key: key);

  @override
  State<ProductGridViewScren> createState() => _ProductGridViewScrenState();
}

class _ProductGridViewScrenState extends State<ProductGridViewScren> {

List productList=[];
bool loading=true;
 void initState(){
   CallData();
   super.initState();
 }

CallData() async{
  loading=true;
var data=await ProductgridViewListRequest();
  setState(() {
    productList=data;
    loading=false;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("list product"),),
      body: Stack(
        children: [
          ScreenBackgroun(context),
          Container(
            child: loading?(Center(child: CircularProgressIndicator(),)):(
            GridView.builder(
                gridDelegate: ProductGridViewStyle(),
                itemCount: productList.length,
                itemBuilder: (context,index){
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(child: Image.network(productList[index]["img"],fit:BoxFit.fill))
                      ],
                    ),
                  );

                })
            ),

          )
        ],
      ),
    );
  }
}
