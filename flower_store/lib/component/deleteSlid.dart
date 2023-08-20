import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// using slidable libary
deleteSlid(index) {
  Slidable(
    endActionPane: ActionPane(
      motion: ScrollMotion(),
      children: [
        SlidableAction(
          onPressed: (index) {},
          backgroundColor: Color(0xFFFE4A49),
          foregroundColor: Colors.white,
          icon: Icons.delete,
          label: 'Delete',
        ),
      ],
    ),
    child: const Text("data"),
  );
}
