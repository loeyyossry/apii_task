import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/page_user.dart';
import '../providers/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<myp>(
            builder: (context, value, child) {
              final user=value.p;
              if(user==null)
              {
                value.fech();
                return Center(child: CircularProgressIndicator(color: Colors.black,),);
              }
              else
              {
                var fname=user.firstName;
                var lname=user.lastName;
                var image=user.picture;
                var email=user.email;
                var gender=user.gender;
                var number=user.phone;
                return  Column(
                  children: [
                    Cardd(
                        number: number,
                        gender: gender,
                        lname:lname ,
                        name: fname,
                        email:email ,
                        image: image
                    )
                  ],
                );
              }
            }
        )
    );
  }
}

