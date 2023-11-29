import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/img/Wallpaper MedExpert v2.png"),
                  alignment: Alignment.bottomLeft),
            ),
          ),
          new Container(
            margin: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Hi Doc!",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text(
                "Starts your journey being a doctor with us",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 75,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          backgroundColor: Color(0xFF1564c0)),
                      onPressed: () => context.push('/login'),
                      child: Text(
                        'LOGIN',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFFfaf9f9)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          backgroundColor: Color(0xFFfaf9f9)),
                      onPressed: () => context.push('/signup'),
                      child: Text(
                        'SIGN UP',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF1564c0)),
                      ),
                    ),
                  )
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
