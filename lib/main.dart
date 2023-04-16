import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  basketball_points_counter(),
    );
  }
}

class basketball_points_counter extends StatefulWidget {
  const basketball_points_counter({Key? key}) : super(key: key);

  @override
  State<basketball_points_counter> createState() => _basketball_points_counterState();
}

class _basketball_points_counterState extends State<basketball_points_counter> {
  int currentCountB=0;
  int currentCountA=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Basketball Score Counter"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text("TEAM A",style: TextStyle(
                          fontSize: 25
                      ),),
                      const SizedBox(height: 20,),
                      Text("${currentCountA}",style:const TextStyle(
                          fontSize: 50
                      ),),
                      const SizedBox(height: 20,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(10),
                            minimumSize: const Size(150, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            currentCountA++;
                          });
                        }, child: const Text("+1 POINT",style: TextStyle(
                          fontSize: 20
                      ),),

                      ),
                      const SizedBox(height: 20,),
                      ElevatedButton(
                          onPressed: (){
                            setState(() {
                              currentCountA+=2;
                            });
                          }, style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          minimumSize: const Size(150, 50)
                      ),
                          child: const Text("+2 POINT",style: TextStyle(
                              fontSize: 20
                          ),)),
                      const SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            currentCountA+=3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(10),
                            minimumSize: const Size(150, 50)
                        ),
                        child: const Text("+3 POINT",style: TextStyle(
                            fontSize: 20
                        ),),),
                    ],
                  ),
                  const SizedBox(width: 10,),
                  VerticalDivider(
                    color: Colors.black.withOpacity(0.3),
                    thickness: 2,
                    indent: 5,
                    endIndent:0,
                    width: 20,
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    children: [
                      const Text("TEAM B",style: TextStyle(
                          fontSize: 25
                      ),),
                      const SizedBox(height: 20,),
                      Text("${currentCountB}",style:const TextStyle(
                          fontSize: 50
                      ),),
                      const SizedBox(height: 20,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(10),
                            minimumSize: const Size(150, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            currentCountB++;
                          });
                        }, child: const Text("+1 POINT",style: TextStyle(
                          fontSize: 20
                      ),),

                      ),
                      const SizedBox(height: 20,),
                      ElevatedButton(
                          onPressed: (){
                            setState(() {
                              currentCountB+=2;
                            });
                          }, style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          minimumSize: const Size(150, 50)
                      ),
                          child: const Text("+2 POINT",style: TextStyle(
                              fontSize: 20
                          ),)),
                      const SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            currentCountB+=3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(10),
                            minimumSize: const Size(150, 50)
                        ),
                        child: const Text("+3 POINT",style: TextStyle(
                            fontSize: 20
                        ),),),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40,),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  currentCountB=0;
                  currentCountA=0;
                });
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  backgroundColor: Colors.grey.withOpacity(0.6),
                  minimumSize: const Size(150, 50)
              ),
              child: const Text("Reset",style: TextStyle(
                  fontSize: 20
              ),),),
          ],
        ),
      ),
    );
  }
}