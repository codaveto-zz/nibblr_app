import
'package:flutter/material.dart';

class CustomInfoTextField extends StatelessWidget {
  final String name, value;
  final Widget widgetValue;

  const CustomInfoTextField({Key key, @required this.name, this.value, this.widgetValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(
          name,
          style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.grey),
        ),
        SizedBox(width: 32,),
        Flexible(
          child: widgetValue ?? Text(
          value ?? '-',
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        )
      ],
    );
  }
}
