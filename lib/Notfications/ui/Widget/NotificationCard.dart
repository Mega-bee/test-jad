import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../Control/NotificationCardModel.dart';

class NotificationCard extends StatelessWidget {
   final NotificationCardModel notificationCardModel;

  const NotificationCard(this.notificationCardModel);

  @override
  Widget build(BuildContext context) {
    return  Slidable(
    // Specify a key if the Slidable is dismissible.
    key: const ValueKey(0),
    // The start action pane is the one at the left or the top side.
    endActionPane: ActionPane(
    // A motion is a widget used to control how the pane animates.
    motion: const ScrollMotion(),
    // A pane can dismiss the Slidable.
    dismissible:
    DismissiblePane(onDismissed: () {}),
    children: [
    // A SlidableAction can have an icon and/or a label.
    // SlidableAction(
    // onPressed: (BuildContext context) {},
    // backgroundColor: Color(0xFF126CF2),
    // foregroundColor: Colors.white,
    // icon: Icons.done_rounded,
    // ),
    SlidableAction(
    onPressed: (BuildContext context) {},
    backgroundColor: const Color(0xFFED0B19),
    foregroundColor: Colors.white,
    icon: Icons.close,
    ),
    ],
    ),
    child:Card(
        margin: EdgeInsets.all(0.8),
        elevation:0,
    child:Container(
    height: 110,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(19,35,21,31),
      child: Row(
        crossAxisAlignment:CrossAxisAlignment.center ,
      children: [
      SizedBox(
      width: 52,
      ),
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(
      "${notificationCardModel.name}",
      style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black
      ),
      textAlign: TextAlign.left,
      ),
      Row(
      children: [
      Text(
        "${notificationCardModel.Message}",
      style: TextStyle(
      fontSize:15,
      color: Colors.black
      ),
      ),
      Text(
        "${notificationCardModel.persentage}%",
      style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 17,
      color: Colors.black
      ),
      ),
      ],
      )
      ],
      ),
      Spacer(),
      Column(
      children: [
      SizedBox(height:18),
      Text(
        "${notificationCardModel.date}",
      style: TextStyle(
      fontSize: 13,
      color: Color(0xFF939393)
      ),
      )
      ],
      )
      ],
      ),
    )),));
    }
    }
