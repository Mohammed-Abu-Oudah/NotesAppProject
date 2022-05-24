import 'package:flutter/material.dart';
import 'package:notes_app/routes/route_generator.dart';
import 'package:notes_app/screens/home.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            // AssetImage(),
            Container(
              width: double.infinity,
              height: 200,
              child: Image.asset(
                'images/img.png',
                fit: BoxFit.fill,
              ),
            ),
            Spacer(
              flex: 2,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  Home();
                },));},
              child: Text('Get Started'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 60),
                primary: Color(0xff1321E0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
