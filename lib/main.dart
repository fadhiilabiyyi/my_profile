import 'package:flutter/material.dart';
import 'Page2.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(), // Halaman awal ketika program pertama kali dijalankan
    ));

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context)
              .size
              .width, // Sesuaiakan lebar dengan lebar layar
          height: MediaQuery.of(context)
              .size
              .height, // Sesuaikan tinggi dengan tinggi layar
          decoration: new BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.jpg"),
              fit: BoxFit.cover,
            ),
            boxShadow : [
              new BoxShadow(
                color: Colors.black,
                blurRadius: 55.0,
            ),
          ],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context)
                    .size
                    .shortestSide, // Tinggi menyesuaikan isi konten di dalam container
                padding: EdgeInsets.all(20.0),
                alignment: Alignment.center,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color(0xfffbece3),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 100.0,
                          backgroundImage: AssetImage('images/picture.jfif'),
                        ),
                        Text(
                          "Fadhiil Abiyyi Tamsil",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        Text(
                          "Vocational High School Student at SMK Wikrama Bogor",
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Page2()),
                              );
                            },
                            child: Text('See More'))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
