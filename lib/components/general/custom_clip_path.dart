import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0,size.height*0.0100000);
    path_0.lineTo(0,size.height);
    path_0.lineTo(size.width*1.0013854,size.height);
    path_0.lineTo(size.width*0.9989549,size.height*0.4960000);
    path_0.quadraticBezierTo(size.width*0.8892157,size.height*1.0440000,size.width*0.5881924,size.height*0.4200000);
    path_0.quadraticBezierTo(size.width*0.3886445,size.height*-0.0975000,0,size.height*0.0100000);
   
    path_0.close();
    return path_0;
  }
  
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}