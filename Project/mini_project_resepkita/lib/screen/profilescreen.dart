import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/component/generalcomponet/Tekswidget.dart';

import '../component/profile/profile_menu.dart';
import '../style/colorsstyle.dart';
import '../style/fontstyle.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorStyle().backogrundbody,
        appBar: AppBar(
            backgroundColor: ColorStyle().card,
          elevation: 0.0,
          title: Text(
            "Profile",
            style: TextCustome().mediumpink.copyWith(
                letterSpacing: 2, fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              SizedBox(
                height: 115,
                width: 115,
                child: Stack(
                  fit: StackFit.expand,
                  clipBehavior: Clip.none,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/image/profile.png"),
                    ),
                    Positioned(
                      right: -6,
                      bottom: 0,
                      child: SizedBox(
                          height: 32,
                          width: 32,
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60),
                                    side: BorderSide(color: Colors.white),
                                  ),
                                  // primary: Colors.white,
                                  backgroundColor: ColorStyle().primaryblack),
                              onPressed: () {},
                              child: Icon(Icons.edit,
                                  color: ColorStyle().backogrundbody))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                child: Text(
                  'Thiyara Al- Mawaddah',
                  style: TextCustome().medium.copyWith(fontSize: 18),
                ),
              ),
              Text(
                "thiyaraal@gmail.com",
                style: TextCustome().light,
              ),
              const SizedBox(height: 20),
              ProfileMenu(
                text: "Tentang",
                icons: Icons.info,
                press: () => {},
              ),
              ProfileMenu(
                text: "Bantuan",
                icons: Icons.help_outlined,
                press: () {},
              ),
              ProfileMenu(
                text: "Settings",
                icons: Icons.settings,
                press: () {},
              ),
              ProfileMenu(
                text: "Preferensi",
                icons: Icons.room_preferences_outlined,
                press: () {},
              ),
              ProfileMenu(
                text: "Keluar",
                icons: Icons.logout,
                press: () {},
              ),
            ],
          ),
        ));
  }
}
