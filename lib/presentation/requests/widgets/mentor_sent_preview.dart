import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/requests/widgets/slots.dart';
import 'package:helloworld/presentation/requests/widgets/status.dart';

class MentorSentPreview extends StatelessWidget {
  final String name;
  final List<Slots> booked;
  final Status status;
  final double cost; //NEEDS TO BE COMPUTED (DURATION X HOURLY-RATES)

  const MentorSentPreview(
      {Key key,
      @required this.name,
      @required this.booked,
      @required this.status,
      @required this.cost})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
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
              ),
              title: Row(
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("COST",
                          style: TextStyle(
                              color: Palette.secondaryColor,
                              fontSize: 16,
                              fontFamily: 'Martel Sans',
                              fontWeight: FontWeight.w900)),
                      Text('       \$$cost SGD',
                          style: TextStyle(
                              color: Palette.primaryColor,
                              fontSize: 16,
                              fontFamily: 'Martel Sans',
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("STATUS",
                              style: TextStyle(
                                  color: Palette.secondaryColor,
                                  fontSize: 16,
                                  fontFamily: 'Martel Sans',
                                  fontWeight: FontWeight.w900))),
                      status,
                    ],
                  ),
                ],
              )),
        ]));
  }
}