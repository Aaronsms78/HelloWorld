import 'dart:io';

import 'package:flutter/material.dart';
import 'package:helloworld/infrastructure/common/io_utils.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/requests/widgets/slots.dart';
import 'package:helloworld/presentation/requests/widgets/request_button.dart';

class LearnerReceivedPreview extends StatelessWidget {
  final String name;
  final List<Slots> booked;
  final String userId;

  const LearnerReceivedPreview({
    Key key,
    @required this.name,
    @required this.booked,
    this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Palette.primaryColor,
                  width: 3.0,
                ),
              ),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
//              child: FutureBuilder<File>(
//                future: _getProfilePic(),
//                builder: (context, snapshot) {
//                  if (snapshot.hasData) {
//                    return CircleAvatar(
//                      backgroundImage: FileImage(snapshot.data),
//                    );
//                  }
//
//                  return Container();
//                },
//              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(name,
                    style: TextStyle(
                        color: Palette.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Martel Sans')),
                Container(
                    padding: const EdgeInsets.only(left: 20, bottom: 8),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(
                              width: 2, color: Palette.secondaryColor)),
                      onPressed: () {},
                      child: Text("View Profile",
                          style: TextStyle(
                            color: Palette.secondaryColor,
                            fontFamily: 'Martel Sans',
                            fontWeight: FontWeight.w900,
                          )),
                    ))
              ],
            ),
            subtitle: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("SLOTS",
                        style: TextStyle(
                            color: Palette.secondaryColor,
                            fontSize: 16,
                            fontFamily: 'Martel Sans',
                            fontWeight: FontWeight.w900)),
                    Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: booked)),
                  ],
                ),
                RequestButton()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<File> _getProfilePic() async {
    final path = await localPath;
    return File('$path/$userId');
  }
}
