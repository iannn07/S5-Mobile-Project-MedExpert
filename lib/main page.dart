import 'package:flutter/material.dart';
import 'package:med_expert/constants.dart';
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
                style:
                    primaryTextStyle.copyWith(fontSize: 40, fontWeight: bold),
              ),
              SizedBox(height: 15),
              Text(
                "Starts your journey being a doctor with us",
                style: primaryTextStyle.copyWith(fontSize: 24),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => context.push('/login'),
                    child: Text('LOGIN'),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => context.push('/signup'),
                    child: Text('SIGN UP'),
                  ),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
