import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      Scaffold( 
        
      body: ListView(
        children: <Widget>[
          const Text(
              'Settings',
              semanticsLabel: 'Settings',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          _buildSettingOption(context, 'Brightness', Icons.brightness_high),
          _buildSettingOption(context, 'Battery', Icons.battery_full),
          _buildSettingOption(context, 'Volume', Icons.volume_up),
          _buildSettingOption(context, 'Power Button', Icons.power_settings_new),
        ],
      ),
    )
    );
  }

  Widget _buildSettingOption(BuildContext context, String title, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.keyboard_arrow_right),
      onTap: () {
        // Handle tapping on setting option
        switch (title) {
          case 'Brightness':
            // Handle brightness setting
            break;
          case 'Battery':
            // Handle battery setting
            break;
          case 'Volume':
            // Handle volume setting
            break;
          case 'Power Button':
            // Handle power button setting
            break;
        }
      },
    );
  }
}
