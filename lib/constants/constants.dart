import 'package:flutter/material.dart';

const height4 = SizedBox(height: 4);
const height8 = SizedBox(height: 8);
const height16 = SizedBox(height: 16);
const height24 = SizedBox(height: 24);
const height32 = SizedBox(height: 32);
const height48 = SizedBox(height: 48);
const height56 = SizedBox(height: 56);
const height64 = SizedBox(height: 64);
const height96 = SizedBox(height: 96);
const height112 = SizedBox(height: 112);
const height200 = SizedBox(height: 200);

const width4 = SizedBox(width: 4);
const width8 = SizedBox(width: 8);
const width16 = SizedBox(width: 16);
const width24 = SizedBox(width: 24);
const width32 = SizedBox(width: 32);
const width48 = SizedBox(height: 48);
const width56 = SizedBox(height: 56);

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}