import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/screen/profilescreen.dart';

import '../style/colorsstyle.dart';
import '../style/fontstyle.dart';

class Drawerlist extends StatefulWidget {
  const Drawerlist({Key? key}) : super(key: key);

  @override
  State<Drawerlist> createState() => _DrawerlistState();
}

class _DrawerlistState extends State<Drawerlist> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Thiyara Al-Mawaddah",
              style: TextCustome()
                  .regular
                  .copyWith(fontWeight: FontWeight.bold, color: ColorStyle().white)),
          accountEmail: Text("Silahkan login",
              style: TextCustome()
                  .medium
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 12)),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "assets/image/drawer.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "assets/image/profile.png")),
        ),
        listtilewidget(
            leading: Icon(Icons.contact_mail),
            title: "Contact us",
            ontap: () {
               Navigator.push(context, MaterialPageRoute(builder: (_) => Profile()));
            }),
        listtilewidget(
            leading: Icon(Icons.people_alt),
            title: "About us",
            ontap: () {
              Navigator.pop(context);
            }),
        listtilewidget(
            leading: Icon(
              Icons.login_sharp,
            ),
            title: "login",
            ontap: () {
              Navigator.pop(context);
            })
      ],
    );
  }

  Widget listtilewidget(
      {required Icon leading,
      required String title,
      required Function()? ontap}) {
    return ListTile(
      leading: leading,
      iconColor: ColorStyle().primarypink,
      title: Text(
        title,
        style: TextCustome().light,
      ),
      onTap: ontap,
    );
  }
}
