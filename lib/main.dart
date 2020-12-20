import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'flutterCalculation',
      home: Calculation(),
    );
  }
}



class CalculationState extends State<Calculation>{
  String result = '0';
  Widget build(BuildContext context){
    void input(String number){
      if(result == '0'){
        result = number;
      }else{
        result += number;
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('flutterCalculation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
           child: Text('$result'),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('9'),
              color: Colors.green,
              textColor: Colors.white,
              onPressed: (){
                setState(() {
                 input('9');
                });
              },
            ),
            RaisedButton(
              child: Text('8'),
              color: Colors.green,
              textColor: Colors.white,
              onPressed: (){
                setState(() {
                  input('8');
                });
              },
            ),
            RaisedButton(
              child: Text('7'),
              color: Colors.green,
              textColor: Colors.white,
              onPressed: (){
                setState(() {
                  input('7');
                });
              },
            )
          ],
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('6'),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    input('6');
                  });
                },
              ),
              RaisedButton(
                child: Text('5'),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    input('5');
                  });
                },
              ),
              RaisedButton(
                child: Text('4'),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    input('4');
                  });
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('3'),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    input('3');
                  });
                },
              ),
              RaisedButton(
                child: Text('2'),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    input('2');
                  });
                },
              ),
              RaisedButton(
                child: Text('1'),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    input('1');
                  });
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('0'),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    input('0');
                  });
                },
              ),
              RaisedButton(
                child: Text('C'),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: (){
                  setState(() {
                    result = '0';
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

class Calculation extends StatefulWidget{
  CalculationState createState() => new CalculationState();
}

