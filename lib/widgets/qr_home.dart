import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'body.dart';


class QRHome extends StatefulWidget {
  QRHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _QRHomeState createState() => _QRHomeState();
}

class _QRHomeState extends State<QRHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: const ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(12.0),
        ),
       /* child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Theme.of(context).primaryColor,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Builder(
                builder: (context) => IconButton(
                  tooltip: 'Visiter le restaurant',
                  icon: Icon(
                    Icons.info,
                    color: Theme.of(context).cardColor,
                  ),
                  onPressed: () {
                    showAboutDialog(
                      context: context,
                      applicationIcon: const Image(
                        image: AssetImage('assets/ic_launcher_round.png'),
                        fit: BoxFit.scaleDown,
                        height: 64,
                        width: 64,
                      ),
                      applicationName: AppStrings["AppName"],
                      applicationVersion: AppStrings["EDITION"],
                      applicationLegalese: 'Pierre Agana',
                    );
                  },
                ),
              ),
            ],
          ),
        ),*/
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
