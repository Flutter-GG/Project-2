import 'package:awesome_dialog/awesome_dialog.dart';

//using dialog libary
showSucsessDilog(context) {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.success,
    animType: AnimType.rightSlide,
    title: 'Success Add Item',
    // desc: 'Dialog description here.............',
    btnCancelOnPress: () {},
    btnOkOnPress: () {},
  ).show();
}
