import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
            title: Text("Arif firmansyah"),
            subtitle: Text(
              "besok kita jadi makan ngga soalnya aku harus bilang dlu sama ortu ku kan jadinya kapan??",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            leading: CircleAvatar(),
            trailing: Text("10:10 wib"),
            // tileColor: Colors.amber,
            // dense: true,
            // onTap: () {
            //   return;
            // },
          ),
          Divider(),
          ListTile(
            title: Text("Arif firmansyah"),
            subtitle: Text("Road Full FRONT END"),
            leading: CircleAvatar(),
            trailing: Text("10:10 wib"),
          ),
          Divider(),
          ListTile(
            title: Text("Arif firmansyah"),
            subtitle: Text("Road Full FRONT END"),
            leading: CircleAvatar(),
            trailing: Text("10:10 wib"),
          ),
          Divider(),
          ListTile(
            title: Text("Arif firmansyah"),
            subtitle: Text("Road Full FRONT END"),
            leading: CircleAvatar(),
            trailing: Text("10:10 wib"),
          ),
          Divider(),
        ],
      ),
    );
  }
}
