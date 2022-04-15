import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rabegn/widgets/custombutton.dart';

import '../services/auth_services.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authSercice = Provider.of<AuthService>(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                ProfileInfoWidget(context),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 370,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Options',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleSettingItem(
                        'Notification',
                        Switch.adaptive(
                          value: false,
                          onChanged: (value) {},
                        ),
                      ),
                      SingleSettingItem(
                        'Dark Theme',
                        Switch.adaptive(
                          value: true,
                          onChanged: (value) {},
                        ),
                      ),
                      SingleSettingItem(
                        'Language',
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward,
                          ),
                        ),
                      ),
                      SingleSettingItem(
                        'Favorites',
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward,
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.white,
                      ),
                      SingleSettingItem(
                        'Feedback',
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward,
                          ),
                        ),
                      ),
                      SingleSettingItem(
                        'About',
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                    onTap: () async {
                      await authSercice.signOut();
                    },
                    buttonText: 'Log out'),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        height: 20,
        width: MediaQuery.of(context).size.width,
        color: Colors.blue,
        child: const Text(
          'rabegn = version: 1.0.0 , channel = alpha',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Row SingleSettingItem(String settingItemName, Widget actionswitch) {
    return Row(
      children: [
        Expanded(
          child: Text(settingItemName),
        ),
        actionswitch,
      ],
    );
  }

  Container ProfileInfoWidget(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'name',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'email@email.com',
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(onTap: () {}, buttonText: 'Edit Profile')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
