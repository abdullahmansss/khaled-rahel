import 'package:flutter/material.dart';
import 'package:flutter_app/modules/countries_screen/countries_screen.dart';
import 'package:flutter_app/shared/components/constants.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            size: 18.0,
            color: Colors.grey,
          ),
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            buildDivider(
              height: 30.0,
            ),
            buildSettingsItem(
              icon: Icons.settings,
              text: 'Change Language',
              function: ()
              {
                navigateTo(context, CountriesScreen(),);
              },
            ),
            buildDivider(
              height: 30.0,
            ),
            buildSettingsItem(
              icon: Icons.settings,
              text: 'Change Language',
              function: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: buildDivider(),
            ),
            buildSettingsItem(
              icon: Icons.settings,
              text: 'Change Language',
              function: () {},
            ),
            buildDivider(
              height: 30.0,
            ),
            buildSettingsItem(
              icon: Icons.settings,
              text: 'Change Language',
              function: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: buildDivider(),
            ),
            buildSettingsItem(
              icon: Icons.settings,
              text: 'Change Language',
              function: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: buildDivider(),
            ),
            buildSettingsItem(
              icon: Icons.settings,
              text: 'Change Language',
              function: () {},
            ),
            buildDivider(
              height: 30.0,
            ),
            buildSettingsItem(
              icon: Icons.settings,
              text: 'Change Language',
              function: () {},
            ),
            buildDivider(
              height: 30.0,
            ),
            buildSettingsItem(
              icon: Icons.settings,
              text: 'Change Language',
              function: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: buildDivider(),
            ),
            buildSettingsItem(
              icon: Icons.settings,
              text: 'Change Language',
              function: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: buildDivider(),
            ),
            buildSettingsItem(
              icon: Icons.settings,
              text: 'Change Language',
              function: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSettingsItem({
    @required IconData icon,
    @required String text,
    @required Function function,
  }) =>
      ListTile(
        onTap: function,
        tileColor: Colors.white,
        leading: Icon(
          icon,
        ),
        title: Text(
          text,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_outlined,
          size: 18.0,
          color: Colors.grey,
        ),
      );
}
