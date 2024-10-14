import 'package:flutter/material.dart';
// imports the core Flutter library which provides the building blocks for creating user interfaces.

void main() {
  runApp(const MainApp());
}
// This is the entry point of the application.
//It calls the runApp function with an instance of MainApp class
//essentially starting the app with that widget.

class MainApp extends StatelessWidget {
  //StatelessWidget: the UI it builds will not change dynamically based on user interaction
  const MainApp({super.key});
  //he super.key argument is required for all StatelessWidget
  @override
  Widget build(BuildContext context) {
    //@override Widget build(BuildContext context) {...}:
    //This method is responsible for building the UI of the app.
    return MaterialApp(
      //This widget is the root of the application.
      // It sets up various aspects like the app's title, theme, and the home screen

      debugShowCheckedModeBanner: false, //hides the red debug banner

      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 250, 255, 186),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            //This sets padding of 20.0 pixels around all sides of the content within the widget.
            child: Column(
              //arranges content vertically
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        // First Circular Image.
                        ClipOval(
                          child: Container(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            child: Image.asset(
                              'assets/images/animal1.jpg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        // First Text
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 227, 245, 255),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 25),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name: Saqoor Alalawy',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(221, 0, 119, 255),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Age: 3 mounths',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(136, 58, 133, 255),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Gender: Male',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(137, 138, 171, 255),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        // Second Circular Image
                        ClipOval(
                          child: Container(
                            color: Colors.white,
                            child: Image.asset(
                              'assets/images/animal2.jpg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Second Text
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 248, 241, 251),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 25),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name: Maymona Alalawy',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(221, 212, 0, 255),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Age: 3 mounths',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(165, 215, 37, 255),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Gender: Female',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(70, 217, 0, 255),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                // Additional Text Container below both images
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 253, 255, 241),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(179, 0, 0, 0)
                                  .withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'FYI:',
                              style: TextStyle(
                                fontSize: 18, // Increased font size
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(202, 65, 65, 65),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'I have official adoption papers for these children, making them legally mine',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(137, 100, 100, 100),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
