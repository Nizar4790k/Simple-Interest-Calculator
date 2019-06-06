import 'package:flutter/material.dart';

void main ()=> runApp(

  MaterialApp(



    home: Scaffold(

      appBar: AppBar(
      title: Text("Crappy Interst Calculator"),
      ),

      body: Container(


        child: Column(

        children: <Widget>[

         TextField(
           decoration: InputDecoration(
             labelText: "Enter the principal"
           ),
         ),

          TextField(
            decoration: InputDecoration(
                labelText: "Enter the rate of interest"
            ),
          ),



          /*

          Row(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter the term"
                ),

              )



            ],
          ),


          Row(
            children: <Widget>[

              RaisedButton(
                child: Text("Calculate"),
              ),

              RaisedButton(
                child: Text("Delete!"),

            ),



            ],


          )

*/





        ],
        ),


      ),




    )



  )

);