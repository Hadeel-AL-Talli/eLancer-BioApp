import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final IconData trailingIcon;
  final double marginbottom;
  BioCard(
      {required this.leadingIcon,
      required this.title,
      required this.subTitle,
      required this.trailingIcon,
      this.marginbottom=0
      });
  @override
  Widget build(BuildContext context) {
    return Card(
      
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),
      
      ),
      margin: EdgeInsets.only(bottom:marginbottom ),
      child: ListTile(
        leading: Icon(leadingIcon),
        title: Text(
          title,
          style: TextStyle(fontFamily: 'JannaRegular'),
        ),
        subtitle: Text(
          subTitle,
          style: TextStyle(fontFamily: 'JannaRegular'),
        ),
        trailing: Icon(trailingIcon),
      ),
    );
  }
}
