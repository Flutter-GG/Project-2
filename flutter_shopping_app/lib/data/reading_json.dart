import 'dart:io';
import 'dart:convert';

var jsonData = json.decode(File(
        '/Users/mohammedalsahli/Desktop/Desktop - Mohammed’s Macbook air/Project-2/flutter_shopping_app/lib/data/products.json')
    .readAsStringSync());
