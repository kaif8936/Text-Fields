import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Sheet',
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://image.freepik.com/free-vector/summer-background-with-beach-view_23-2147821949.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 700, left: 30),
          height: 70,
          width: 70,
          child: FloatingActionButton(
            backgroundColor: Colors.black,
            child: Icon(
              Icons.album,
            ),
            onPressed: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(35.0),
                  ),
                ),
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.all(25),
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Surfing',
                          style: GoogleFonts.courierPrime(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '6 Calsses With sustainable topic and example',
                          style: GoogleFonts.courierPrime(
                            textStyle: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Surfing is an habit to explore with your moving ability towards the water. Most importantly it is helpful to keep breath and to fresh mind',
                          style: GoogleFonts.courierPrime(
                            textStyle: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 27,
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          elevation: 0,
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(0.0),
                          child: Container(
                            color: Colors.lightBlue.withOpacity(0.7),
                            height: 60,
                            width: double.infinity,
                            child: Container(
                              child: Center(
                                child: Text(
                                  'CLOSE',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        )
      ],
    );
  }
}

