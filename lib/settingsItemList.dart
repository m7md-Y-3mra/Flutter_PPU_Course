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
              Colors.pink[300]),
          SizedBox(
            height: 22,
          ),
          SettingsItem(Icons.layers, "General",
              "Basic functional SettingsItemsList", Colors.yellow[600]),
          SizedBox(
            height: 22,
          ),
          SettingsItem(Icons.notifications, "Notification",
              "Take over the news in time", Colors.teal[300]),
        ],
      ),
    );
  }

  Widget SettingsItem(IconData icon, String label, String description, bg) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.indigo.withOpacity(0.4),
            blurRadius: 20.0,
            spreadRadius: 0.0,
            offset: Offset(
              5.0,
              5.0,
            ),
          )
        ],
      ),
      child: Card(
          color: Colors.white,
          shadowColor: Colors.blue[200],
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: bg,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            title: Text(label),
            subtitle: Text(description),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          )),
    );
  }
}
