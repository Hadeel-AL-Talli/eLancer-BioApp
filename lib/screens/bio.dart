import 'package:bio_app/widgets/bio_card.dart';
import 'package:flutter/material.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'BIO',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 50),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
                  Colors.blue.shade200,
                  Colors.white,
                ]),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                CircleAvatar(
                    radius: 70.0,
                    backgroundColor: Colors.blueAccent,
                    backgroundImage: AssetImage(
                      'images/profile.jpg',
                    )),
                SizedBox(height: 10.0),
                Text(
                  'Hadeel Tali',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontFamily: 'JannaRegular',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'eLancer- Flutter Course',
                  style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'JannaRegular',
                      fontSize: 15),
                ),
                Divider(
                    color: Colors.white,
                    thickness: 0.7,
                    indent: 30.0,
                    endIndent: 30.0,
                    height: 50.0),
                BioCard(
                  leadingIcon: Icons.email,
                  title: 'Hadeel Tali',
                  subTitle: 'hadeeltali@gmai.com',
                  trailingIcon: Icons.send,
                  marginbottom: 10,
                ),
                BioCard(
                  leadingIcon: Icons.phone_android,
                  title: 'Phone',
                  subTitle: '972-594490-780',
                  trailingIcon: Icons.call,
                ),
                Spacer(),
                Text('eLancer- Flutter'),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ));
  }
}
