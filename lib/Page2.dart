import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.black,
              icon: const Icon(Icons.arrow_back_ios_new)),
          backgroundColor: Colors.transparent, // 1
          elevation: 0, // 2
        ),
        body: Container(
          color: const Color(0xfffbece3),
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: const <Widget>[
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('images/picture.jfif'),
                    ),
                    Divider(
                      color: Color(0xfffbece3),
                    ),
                    Text(
                      'Fadhiil Abiyyi Tamsil',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFb7dce5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'About Me',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum labore nulla error deserunt non sapiente, facere ab exercitationem velit pariatur.',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'History',
                      style: 
                        TextStyle(fontSize: 16),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum labore nulla error deserunt non sapiente, facere ab exercitationem velit pariatur.',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Minecraftia',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum labore nulla error deserunt non sapiente, facere ab exercitationem velit pariatur.',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Minecraftia',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.zero, top: Radius.circular(10)),
                        color: Color(0xFFb7dce5),
                      ),
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Skills',
                        style:
                            TextStyle(fontSize: 16, fontFamily: 'Minecraftia'),
                            textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                'HTML',
                                style: TextStyle(
                                    fontSize: 15,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                'CSS',
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'Minecraftia'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                'Javascript',
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'Minecraftia'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                'Laravel',
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'Minecraftia'),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
