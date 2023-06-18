import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/app_color.dart';

class MainButton extends StatelessWidget {
  IconData? icon;
  var title;
  Color color;


  MainButton({this.icon,this.title,this.color= AppColor.main});
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
            ),

            minimumSize:Size(250, 50),
            backgroundColor: color,
          ),
          child:
              Text(title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'font',
                    color: Colors.white,
                    fontSize:15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1
                ),
          ),

        ),
      );
  }
}
