import 'package:flutter/material.dart';

import 'api_customers_servises.dart';
class ApuPutCustomer extends StatefulWidget {
  const ApuPutCustomer({super.key});

  @override
  State<ApuPutCustomer> createState() => _ApuPutCustomerState();
}
TextEditingController nameController=TextEditingController();
TextEditingController contectController=TextEditingController();
TextEditingController emailController=TextEditingController();
class _ApuPutCustomerState extends State<ApuPutCustomer> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Put Data"),
        ),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(15),
              child: TextField(
                controller:nameController,
                decoration: InputDecoration(
                    hintText: "Enter your name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),Padding(padding: EdgeInsets.all(15),
              child: TextField(
                controller:nameController,
                decoration: InputDecoration(
                    hintText: "Enter your contect",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),Padding(padding: EdgeInsets.all(15),
              child: TextField(
                controller:nameController,
                decoration: InputDecoration(
                    hintText: "Enter your email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
      ElevatedButton(onPressed: (){
             Navigator.pop(context);
         }, child:  Text("UPDATA ") )
         ],),
            // ElevatedButton(
            //     onPressed:() {
            //       ApiCustomer().postData(nameController.text,emailController.text,contectController.text);
            //       //Navigator.push(context, MaterialPageRoute(builder: (context)=>GetCustomer));
            //     }, child: Text("put data")),


      );
    }
  }


