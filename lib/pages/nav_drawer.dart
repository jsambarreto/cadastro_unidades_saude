import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/_logo2011.png',
                  height: 100,
                ),
                // Text(
                //   'Unidades de saúde',
                //   style: TextStyle(color: Colors.blue[900], fontSize: 25),
                // ),
              ],
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => Navigator.pushNamed(context, '/'),
          ),
          ListTile(
            leading: const Icon(Icons.health_and_safety),
            title: const Text('Cadastro de unidade'),
            onTap: () => Navigator.pushNamed(context, '/cadastro'),
          ),
          ListTile(
            leading: const Icon(Icons.healing),
            title: const Text('Unidades cadastradas'),
            onTap: () =>
                Navigator.popAndPushNamed(context, '/unidades_cadastradas'),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
