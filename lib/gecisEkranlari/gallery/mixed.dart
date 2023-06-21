import 'package:flutter/material.dart';
import 'package:kirmizi_defter/functions/navigationFunction.dart';

class Mixed extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: NavigationFunction().geriNavigasyon(context),
      ),

      body: Container(

        decoration: BoxDecoration(
            color: Colors.pinkAccent),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child:Container(
                    child: Image.asset('assets/images/IslakKurabiye.jpg')))
              ],
            ),
            SizedBox(height:200,),
            Row(
              children: [
                Expanded(child:
                GestureDetector(
                  onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Text("data"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context); // Dialog kapatma
                            },
                            child: Text("Tamam"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: IconButton(
                    onPressed: () {
                      // İşlevsellik ekleyin
                    },
                    icon: Icon(Icons.question_mark),
                  ),
                ),



                ),
                Expanded(child: GestureDetector(
                  onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Text("data"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context); // Dialog kapatma
                            },
                            child: Text("Tamam"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: IconButton(
                    onPressed: () {
                      // İşlevsellik ekleyin
                    },
                    icon: Icon(Icons.question_mark),
                  ),
                ),),]),
                Row(children: [
                Expanded(child: GestureDetector(
                  onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Text("data"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context); // Dialog kapatma
                            },
                            child: Text("Tamam"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: IconButton(
                    onPressed: () {
                      // İşlevsellik ekleyin
                    },
                    icon: Icon(Icons.question_mark),
                  ),
                ),),
                Expanded(child: GestureDetector(
                  onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Text("data"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context); // Dialog kapatma
                            },
                            child: Text("Tamam"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: IconButton(
                    onPressed: () {
                      // İşlevsellik ekleyin
                    },
                    icon: Icon(Icons.question_mark),
                  ),
                ),),
                ]),
            Row(
              children: [Expanded(child: GestureDetector(
                  onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Text("data"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context); // Dialog kapatma
                            },
                            child: Text("Tamam"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: IconButton(
                    onPressed: () {
                      // İşlevsellik ekleyin
                    },
                    icon: Icon(Icons.question_mark),
                  ),
                ),),

              ],
            )
          ],
        ),
      ) ,



    );
  }
}



