import 'package:flutter/material.dart';
List<String> p =['USD',"DOP"];


void main ()=> runApp(

    App()

);

class App extends StatelessWidget {


  TextField txtPrincipal = TextField(

    decoration: InputDecoration(
        hintText: "Enter the principal",
        labelText: "Principal",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        )
    ),

  );

  TextField txtRateInterest = TextField(
    decoration: InputDecoration(
        hintText: "Enter the rate of interest",
        labelText: "Rate of interest",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),

        )

    ),
  );


  TextField txtTerm = TextField(
    decoration: InputDecoration(
        hintText: ("Enter the term"),
        labelText: "Term",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),




        )
    ),

  );

    Text todoText = Text("Todo Text");

    DropdownButton comboBox =  DropdownButton(items: null, onChanged: null);


  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.indigo,
            accentColor: Colors.indigoAccent
        ),

        home: Scaffold(


          //resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            title: Text("Crappy Interest Calculator"),
          ),

          body: Container(
            padding: EdgeInsets.all(5),
            color: Colors.white,


            child: ListView(

              children: <Widget>[

                Container(
                  child: Image.asset("assets/img/iconfinder_Money-Graph_379341.png"),

                ),




                Padding(
                  padding: EdgeInsets.all(5),
                  child:  txtPrincipal,
                ),

                Padding(
                  padding: EdgeInsets.all(5),
                  child:txtRateInterest
                ),

                Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: <Widget>[


                      Expanded(

                        child: txtTerm,
                      ),

                      Container(
                        padding: EdgeInsets.all(5),
                      ),


                      Expanded(
                        child: comboBox

                      ),
                    ],

                  ),

                ),

                Container(
                  margin: EdgeInsets.all(5),
                  child: Row(
                      children: [


                        Expanded(child:RaisedButton(onPressed: (){

                        }
                          , child: Text("Calculate"),
                          elevation: 4.0,
                          color: Colors.red,)),


                        Expanded(

                            child: RaisedButton(
                              onPressed: (){debugPrint("performing clear operation");}
                              , child: Text("Clear"),
                              elevation: 4.0,
                              color: Colors.green,
                            )

                        ),



                      ]
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(7),
                  child: todoText,
                )


              ],


            ),



          ),




        )



    );
  }

}