import 'package:flutter/material.dart';
import '../utils/routes.dart';

class MyDrawer extends StatelessWidget {
  Function darkModeHandler;

  MyDrawer(@required this.darkModeHandler);

  final imgUrl =
      "https://lh3.googleusercontent.com/uopLSsPLxaZXZMGPIlJeJ_db_ci-R7PB6j5bLCyVsa2QmBK-e-pm3BXZYMwSSbTow8HiFM7Zkjv6UpgmVuHNeD-Ove_fAS-4SAhXFT6rg_6RpUyTOlg_HfgedMC1sEyGWwHRcPKXzGHgpmb5dIX_De-L6z5YWIWY0HbEW1hN8jIdS_cWIEGbnR9age-_R0IOG6wTDmAEXLWJ2_MGK2zno6bA8iDGNFos0bEIXeWn8QxkJw8mpQwKlFO93Kw9jX-RiKt6HqruDhcUjtkkMODIIp_JOhcS13PAGpJzoByKJ5Qyb-p8-jG8bXwcls7QEmkgiaC7595Bk4dfpTuIXunjxpMOtBBSqrWrXIxTDgbsp7r_ZgkUYulcSfdhRXwZQ6gy0BVxmf3ApTxn4tU-Hjs--MY7-obf4fxDNmwycooeFMa56z_n6l-03HJZffs08l8pgZXfb51HhNJVyHdtN7Xnx45ZW2JFor5U4bI4jw1m8baEjc1PTBBOjQ3pCN-5mspfwnubL0jXSfknDURKkdWhbr4wW2UvLrlv_cqeS4sQZe4wvDx7lgVpqXMOh9g4uTpFWr7Dm0a0krlgumegCqpkQyQMCY0HGut7ouuPJnMEbcC4vX2MV0wP9d_Uhxo1hs2j-FhMhP_ePiRQugg7Ybs82OiUwkqc6qd3olM794KZB5SxnuAekdaxr51sKFZSd-mVH0iLFC_cneAosu5mH0VLz03V=w660-h879-no?authuser=0";

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imgUrl),
              ),
              accountName: Text("Sanam"),
              accountEmail: Text("sanam@gmail.com"),
            )),
        ListTile(
          onTap: null,
          leading: Icon(Icons.home,
              color:Colors.black
          ),
        title:Text("Home") ,
        ),
        ListTile(
          leading: Icon(Icons.person,
              color:Colors.black
          ),
          title:Text("Profile") ,
        ),
        ListTile(
          leading: Icon(Icons.email,
              color:Colors.black
          ),
          title:Text("Email Me") ,
        ),
        ListTile(
        onTap: ()=>{darkModeHandler()},
          leading: Icon(Icons.lightbulb_outline_rounded,
              color:Colors.black
          ),
          title:Text("Dark Mode") ,
        ),
        ListTile(
          onTap: () =>
          {Navigator.pushNamed(context, MyRoutes.loginRoute)},
          leading: Icon(Icons.logout,
              color:Colors.black
          ),
          title:Text("Sign Out") ,
        ),

      ],
    ));
  }
}
