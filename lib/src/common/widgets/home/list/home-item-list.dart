import 'package:flutter/material.dart';
import 'package:todo_app/src/common/components/components.dart';
import 'package:todo_app/src/common/extensions/date_time_extension.dart';

class HomeItemList extends StatefulWidget {
  final String title;
  final DateTime date;
  final bool isDone;
  final Function(bool) changeDone;

  const HomeItemList({
    @required this.title,
    @required this.date,
    @required this.isDone,
    @required this.changeDone,
  });
  @override
  _HomeItemListState createState() => _HomeItemListState();
}

class _HomeItemListState extends State<HomeItemList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              KaytaCheckBox(
                value: widget.isDone ?? false,
                onChanged: (value) {},
              ),
              SizedBox(width: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title ?? "",
                    style: TextStyle(
                      fontFamily: 'InterSemiBold',
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    widget.date.formatar("EEEE, dd/MM/yyyy"),
                    style: TextStyle(
                      fontFamily: "InterBold",
                      color: Colors.grey[600],
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            color: Colors.grey[200],
            height: 2,
          ),
        ],
      ),
    );
  }
}
