import 'package:flutter/material.dart';

class OptionsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 40, 10, 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          option(Icons.account_balance_wallet, "wallet"),
          option(Icons.local_shipping_outlined, "Delivery"),
          Stack(
            children: [
              Positioned(child: option(Icons.message, "Message")),
              Positioned(
                child: Container(
                    width: 19,
                    height: 19,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius:
                            BorderRadius.all(Radius.circular(100000))),
                    child: Center(
                      child: Text(
                        "2",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    )),
                top: 0,
                right: 0,
              )
            ],
          ),
          option(Icons.settings, "Service")
        ],
      ),
    );
  }

  Widget option(IconData icon, String label) {
    return Column(children: [
      CircleAvatar(
        radius: 23,
        backgroundColor: Colors.grey[200],
        child: Icon(
          icon,
          size: 25,
        ),
      ),
      Text(label)
    ]);
  }
}
