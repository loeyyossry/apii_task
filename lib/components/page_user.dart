import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cardd extends StatelessWidget {
  String image;
  String email;
  String name ;
  String lname ;
  String gender ;
  String number ;
  Cardd({required this.email,required this.image,required this.name,required this.lname,required this.gender,required this.number});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(width: double.infinity,color: Colors.black,height: 30,),
                  Image.asset("lib/images/img.png"),
                  Padding(
                    padding: const EdgeInsets.only(top: 160,left: 100),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(image),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name,style: TextStyle(fontSize: 25),),
                  SizedBox(width: 10,),
                  Text(lname,style: TextStyle(fontSize: 25),),
                ],
              ),
              Text(email,style: TextStyle(fontSize: 18),),
              SizedBox(height: 20,),
              Container(
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.g_mobiledata),
                    Padding(
                      padding: const EdgeInsets.only(right: 55),
                      child: Text(gender),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 190,
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.phone,),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(number),
                    )
                  ],
                ),
              ),
              SizedBox(height: 90,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: Size(140, 50)
                      ),
                      onPressed: (){},
                      child: Text("Edit Profile",style: TextStyle(color: Colors.white),)
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          minimumSize: Size(140, 50)
                      ),
                      onPressed: (){},
                      child: Text("Upload Pin",style: TextStyle(color: Colors.black),)
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}



