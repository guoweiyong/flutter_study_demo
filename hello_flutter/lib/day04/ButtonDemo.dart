import 'package:flutter/material.dart';


class GYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(onPressed: (){print("FloatingActionButton click");}, child: Text("FloatingActionButton")),

        /**
         * @Deprecated(
            'Use ElevatedButton instead. See the migration guide in flutter.dev/go/material-button-migration-guide). '
            'This feature was deprecated after v1.26.0-18.0.pre.',
            )
            该按钮在v1.26.0-18.0.pre版本后被弃用了， 使用ElevatedButton 来替代RaisedButton
         */
        RaisedButton(onPressed: (){print("RaisedButton click");}, child: Text("RaisedButton")),
        ElevatedButton(onPressed: (){print("ElevatedButton click");}, child: Text("ElevatedButton")),

        /**
         * @Deprecated(
            'Use TextButton instead. See the migration guide in flutter.dev/go/material-button-migration-guide). '
            'This feature was deprecated after v1.26.0-18.0.pre.',
            该按钮在v1.26.0-18.0.pre版本后被弃用了， 使用TextButton 来替代 FlatButton
         */
        FlatButton(onPressed: (){print("FlatButton click");}, child: Text("FlatButton")),
        TextButton(onPressed: (){print("TextButton click");}, child: Text("TextButton")),

        /**
         * @Deprecated(
            'Use OutlinedButton instead. See the migration guide in flutter.dev/go/material-button-migration-guide). '
            'This feature was deprecated after v1.26.0-18.0.pre.',
            )
            该按钮在v1.26.0-18.0.pre版本后被弃用了， 使用OutlinedButton 来替代 OutlineButton
         */
        OutlineButton(onPressed: (){print("OutlineButton click");}, child: Text("OutlineButton")),
        OutlinedButton(onPressed: (){print("OutlinedButton click");}, child: Text("OutlinedButton"))
      ],
    );
  }
}