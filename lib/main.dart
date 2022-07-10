import 'package:flutter/material.dart';
import 'package:my_cv/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCVScreen(),
    );
  }
}

class MyCVScreen extends StatelessWidget {
  const MyCVScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            SizedBox(height: 30),
            CircleAvatar(
              radius: 100,
              foregroundImage: AssetImage('assets/images/my-photo.jpg'),
            ),
            Text(
              'Vlad Kim',
              style: kTitleTextStyle,
            ),
            Text('Flutter Developer'),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Card(
                  child: ListTile(
                leading: Icon(Icons.connect_without_contact_outlined),
                title: Text(
                  'GitHub Profile: VladKim-FD',
                  style: kSmallTextStyle,
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Card(
                  child: ListTile(
                leading: const Icon(Icons.email),
                title: Text(
                  'Email: @gmail.com',
                  style: kSmallTextStyle,
                ),
              )),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 45),
                    child: Column(
                      children: [
                        Text('Education:', style: kBoldTextStyle),
                        Text('High school, Tashkent', textAlign: TextAlign.center, style: kRegularTextStyle,)
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(right: 45),
                  child: Column(
                    children: [
                      Text('Work Experience: ', style: kBoldTextStyle,),
                      Text('Excel Teacher', style: kRegularTextStyle,),
                    ],
                  ),
                )),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
