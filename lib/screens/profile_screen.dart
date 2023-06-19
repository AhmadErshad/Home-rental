import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.blueAccent),
        toolbarHeight: 80.0,
        title: Container(
          margin: const EdgeInsets.only(left: 100),
          child: const Text(
            " Profile",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: const Image(
                  image: AssetImage("./images/profile.jpg"),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Ahmad Ahmadi",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Text(
              "ahmad.ahmadi@example.com",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade600,
                    side: BorderSide.none,
                    shape: const StadiumBorder()),
                child: const Text(
                  "Edit Profile",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),

            // Menu
            ProfileMenuWidget(
              title: "Settings",
              icon: Icons.settings_outlined,
              onPressed: () {},
            ),
            ProfileMenuWidget(
              title: "Billing Details",
              icon: Icons.wallet,
              onPressed: (){},
            ),
            ProfileMenuWidget(
              title: "User Management",
              icon: CupertinoIcons.check_mark,
              onPressed: () {},
            ),
            const Divider(),
            const SizedBox(height: 10,),
            ProfileMenuWidget(
              title: "Information",
              icon: Icons.info,
              onPressed: () {},
            ),
            ProfileMenuWidget(
              title: "Logout",
              icon: Icons.logout,
              textColor: Colors.red,
              endIcon: false,
              onPressed: () {},),
          ],
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  final bool endIcon;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: Container(
        margin: const EdgeInsets.only(
          left: 30,
        ),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(24, 240, 240, 0.1),
        ),
        child: Icon(
          icon,
          color: Colors.blueAccent,
          size: 30,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: endIcon == true ?Colors.black : textColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: endIcon
          ? Container(
              margin: const EdgeInsets.only(
                left: 30,
              ),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color.fromRGBO(158, 158, 158, 0.1),
              ),
              child: const Icon(
                CupertinoIcons.right_chevron,
                color: Colors.grey,
                size: 18.0,
              ),
            )
          : null,
    );
  }
}
