import 'package:flutter/material.dart';
List<String> p =['USD',"DOP"];


void main ()=> runApp(

 App()

);

class App extends StatelessWidget {



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
                  child:  TextField(

                    decoration: InputDecoration(
                        hintText: "Enter the principal",
                        labelText: "Principal",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )
                    ),

                  ),

                ),

                Padding(
                  padding: EdgeInsets.all(5),
                  child:TextField(
                    decoration: InputDecoration(
                        hintText: "Enter the rate of interest",
                        labelText: "Rate of interest",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),

                        )

                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: <Widget>[


                      Expanded(

                        child:TextField(
                          decoration: InputDecoration(
                              hintText: ("Enter the term"),
                              labelText: "Term",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),




                              )
                          ),

                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(5),
                      ),


                      Expanded(
                        child: DropdownButton(items: null, onChanged: null),

                      )
                    ],

                  ),

                ),

                Container(
                  margin: EdgeInsets.all(5),
                  child: Row(
                      children: [


                        Expanded(child:RaisedButton(onPressed: (){debugPrint("calculating");}
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
                  child: Text("Todo Text"),
                )


              ],


            ),



          ),




        )



    );
  }

}