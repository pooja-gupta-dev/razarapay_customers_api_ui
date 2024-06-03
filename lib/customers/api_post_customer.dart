import 'package:flutter/material.dart';

import 'api_customers_servises.dart';
import 'api_get_customer.dart';
class ApiPostCustomer extends StatefulWidget {
   ApiPostCustomer({super.key});

  @override
  State<ApiPostCustomer> createState() => _ApiPostCustomerState();
}

class _ApiPostCustomerState extends State<ApiPostCustomer> {
 TextEditingController nameController=TextEditingController();
 TextEditingController contectController=TextEditingController();
 TextEditingController emailController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Data"),
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

          FloatingActionButton(
              onPressed:() {
                ApiCustomer().postData(nameController.text,emailController.text,contectController.text);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> GetCustomer()));
              }, child: Icon(Icons.add)),
        ],
      ),
    );
  }
}

