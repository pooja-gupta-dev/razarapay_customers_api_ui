
import 'package:flutter/material.dart';

import 'api_put_customer.dart';


class GetCustomer extends StatefulWidget {
  const GetCustomer({super.key});

  @override
  State<GetCustomer> createState() => _ApiGetState();
}

class _ApiGetState extends State<GetCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return  Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Column(
                    children: [
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                    ],
                  ),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ApuPutCustomer(),));
                  }, icon: const Icon(Icons.edit)),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.delete)),


                ],
              ),
            );
          },
        ));
  }
}