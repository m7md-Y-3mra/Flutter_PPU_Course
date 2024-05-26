import 'package:flutter/material.dart';

class SettingsItemsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SettingsItem(Icons.location_on, "Address",
              "Ensure your harvesting address", Colors.purple[400]),
          SizedBox(
            height: 22,
          ),
          SettingsItem(Icons.lock, "Privacy", "System permission change",
              Colors.pink[400]),
          SizedBox(
            height: 22,
          ),
          SettingsItem(Icons.layers, "General",
              "Basic functional SettingsItemsList", Colors.yellow[600]),
          SizedBox(
            height: 22,
          ),
          SettingsItem(Icons.notifications, "Notification",
              "Take over the news in time", Colors.greenAccent[400]),
        ],
      ),
    );
  }

  Widget SettingsItem(IconData icon, String firstText, String secondText, bg) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              blurRadius: 20.0, // soften the shadow
              spreadRadius: 0.0, //extend the shadow
              offset: Offset(
                5.0, // Move to right 10  horizontally
                5.0, // Move to bottom 10 Vertically
              ),
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: bg,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    firstText,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    secondText,
                    style: TextStyle(
                        color: Colors.black26, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 15,
          )
        ],
      ),
    );
  }
}
