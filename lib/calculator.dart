import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({ Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
 String textr='';
var input='';
double res=0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200,),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.black,
                      alignment: Alignment.bottomRight,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 5),
                             color: Colors.black,
                              alignment: Alignment.bottomRight,
                            child: Text(input,style: TextStyle(fontSize: 40,color: Color.fromARGB(255, 174, 166, 166)),)
                            ),
                           Container(
                             margin: EdgeInsets.only(right:5),
                      color: Colors.black,
                      alignment: Alignment.bottomRight,
                             child: Text(res.toString(),style: TextStyle(fontSize: 50,color: Colors.white),)),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Wrap(
                    spacing: 10,
                    children: [
                      InkWell(
                        onTap: (){
                           setState(() {
                               input='';
                               res=0;
                             });
                        },
                        child: CircleAvatar(
                          child: Text(textr='AC', style: const TextStyle(color: Colors.black,fontSize: 35)),
                          radius: 45,
                          backgroundColor: Colors.grey),
                      ),
                      InkWell(
                        
                         onTap: (){
                            setState(() {
                               input='';
                             });
                         },
                        child: CircleAvatar(
                          child: Text(textr='C',style: const TextStyle(color: Colors.black,fontSize: 40)),
                          radius: 45,
                          backgroundColor: Colors.grey),
                      ),
                      InkWell(
                        onTap: (){
                           setState(() {
                               input+='%';
                               
                             });
                        },
                        child: CircleAvatar(
                          child: Text(textr='%',style: const TextStyle(color: Colors.black,fontSize: 40)),
                          radius: 45,
                          backgroundColor: Colors.grey),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                               input+='÷';
                             });
                        },
                        child: const CircleAvatar(
                          child: Icon(FontAwesomeIcons.divide,color: Colors.white,size: 35,),
                          radius: 45,
                          backgroundColor: Colors.orange),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: InkWell(
                            onTap: (){
                            setState(() {
                              input+='7';
                            });
                            },
                            child: CircleAvatar(
                              child: Text(textr='7',style: TextStyle(color: Color.fromARGB(255, 231, 227, 227),fontSize: 40)),
                            radius: 45,
                            backgroundColor: const Color.fromARGB(255, 60, 60, 60)),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: InkWell(
                            onTap: (){
                             setState(() {
                               input+='8';
                             });
                            },
                            child: CircleAvatar(
                              child: Text(textr='8',style: const TextStyle(color: Color.fromARGB(255, 231, 227, 227),fontSize: 40)),
                            radius: 45,
                            backgroundColor: const Color.fromARGB(255, 60, 60, 60)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: InkWell(
                            onTap: (){
                               setState(() {
                               input+='9';
                             });
                            },
                            child: CircleAvatar(
                              child: Text(textr='9',style: const TextStyle(color: Color.fromARGB(255, 231, 227, 227),fontSize: 40)),
                            radius: 45,
                            backgroundColor: const Color.fromARGB(255, 60, 60, 60)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                               input+='x';
                             });
                            },
                            child: const CircleAvatar(
                            child: Icon(FontAwesomeIcons.multiply,color: Colors.white,size: 35,),
                            radius: 45,
                            backgroundColor: Colors.orange),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: InkWell(
                            onTap: (){
                               setState(() {
                               input+='4';
                             });
                            },
                            child: CircleAvatar(
                              child: Text(textr='4',style: const TextStyle(color: Color.fromARGB(255, 231, 227, 227),fontSize: 40)),
                            radius: 45,
                            backgroundColor: const Color.fromARGB(255, 60, 60, 60)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: InkWell(
                            onTap: (){
                               setState(() {
                               input+='5';
                             });
                            },
                            child: CircleAvatar(
                              child: Text(textr='5',style: const TextStyle(color: Color.fromARGB(255, 231, 227, 227),fontSize: 40)),
                            radius: 45,
                            backgroundColor: const Color.fromARGB(255, 60, 60, 60)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: InkWell(
                            onTap: (){
                               setState(() {
                               input+='6';
                             });
                            },
                            child: CircleAvatar(
                              child: Text(textr='6',style: const TextStyle(color: Color.fromARGB(255, 231, 227, 227),fontSize: 40)),
                            radius: 45,
                            backgroundColor: const Color.fromARGB(255, 60, 60, 60)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                               input+='-';
                             });
                            },
                            child: const CircleAvatar(
                            child: Icon(FontAwesomeIcons.minus,color: Colors.white,size: 35,),
                            radius: 45,
                            backgroundColor: Colors.orange),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: InkWell(
                            onTap: (){
                               setState(() {
                               input+='1';
                             });
                            },
                            child: CircleAvatar(
                              child: Text(textr='1',style: const TextStyle(color: Color.fromARGB(255, 231, 227, 227),fontSize: 40)),
                            radius: 45,
                            backgroundColor: const Color.fromARGB(255, 60, 60, 60)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: InkWell(
                            onTap: (){
                               setState(() {
                               input+='2';
                             });
                            },
                            child: CircleAvatar(
                              child: Text(textr='2',style: const TextStyle(color: Color.fromARGB(255, 231, 227, 227),fontSize: 40)),
                            radius: 45,
                            backgroundColor: const Color.fromARGB(255, 60, 60, 60)),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: InkWell(
                            onTap: (){
                               setState(() {
                               input+='3';
                             });
                            },
                            child: CircleAvatar(
                              child: Text(textr='3',style: const TextStyle(color: Color.fromARGB(255, 231, 227, 227),fontSize: 40)),
                            radius: 45,
                            backgroundColor: const Color.fromARGB(255, 60, 60, 60)),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                               input+='+';
                             });
                            },
                            child: const CircleAvatar(
                            child: Icon(FontAwesomeIcons.plus,color: Colors.white,size: 35,),
                            radius: 45,
                            backgroundColor: Colors.orange),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: InkWell(
                            onTap: (){
                               setState(() {
                               input+='0';
                             });
                            },
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
                              color: const Color.fromARGB(255, 60, 60, 60),),
                               child: Padding(
                                 padding: const EdgeInsets.all(15),
                                 child: Text(textr='0',style: const TextStyle(color: Color.fromARGB(255, 231, 227, 227),fontSize: 40)),
                               ),
                              height: 80,
                              width: 190,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                               input+='.';
                             });
                            },
                            child: CircleAvatar(
                               child: Text(textr='.',style: const TextStyle(color: Color.fromARGB(255, 231, 227, 227),fontSize: 40)),
                            radius: 45,
                            backgroundColor: const Color.fromARGB(255, 60, 60, 60)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                              //  input+='=';
                               equalPressed();
                             });
                            },
                            child: const CircleAvatar(
                            child: Icon(FontAwesomeIcons.equals,color: Colors.white,size: 35,),
                            radius: 45,
                            backgroundColor: Colors.orange),
                          ),
                        ),
            
                      ],
                      ),
                
                  
                ),
              ],
            ),
          )
      
      );
    
  }
   void equalPressed() {
    String finaluserinput = input;
    finaluserinput = input.replaceAll('x', '*').replaceAll('÷', '/');
 
    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    res = eval;
  }
}
