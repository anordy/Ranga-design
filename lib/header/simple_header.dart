import 'package:flutter/cupertino.dart';

class SimpleHeader extends StatelessWidget {
  final String day;
  final double padding;
  final String text;
 
  const SimpleHeader(
      {Key key,
      @required this.day,
      
      @required this.padding,@required this.text,
      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(padding),
        
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                 
                  Text(
                    day,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Text(text)
            ],
          ),
        );
  }
}
