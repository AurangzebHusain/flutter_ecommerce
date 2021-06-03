import 'package:flutter/material.dart';
import '../utils/routes.dart';

class MyDrawer extends StatelessWidget {
  Function darkModeHandler;

  MyDrawer(@required this.darkModeHandler);

  final imgUrl =
      "https://lh3.googleusercontent.com/LtTHAI-IjObYwWmR3J1wQQJuwfDteIaHmkEOs8W1wd-9Btvm7NDmWRO3UfZ6SZC7ojkjpLbarnHYWBGr4o09q0GLZZplpsj4uDtcXe3yTAQLsfvAKZ0YvyiWbJkhlzaFBGaTqF9bU8IH1fbrN5Hr2oNNgK-DXT3AambYDP86w7D1zN5Ys0FIXBXDmBceRB5QPF3wbAMhtw_Loy2_jUddvG-yUtXQDKJ4Y0IiAHsRb-Ni-k6H5RJNhp4dj9IsaQhjdSWEVrxsPUqXOdZv6VCZjqf20xgejC8IYIBaLyTdrqrDmMj6_j5zjpv5_dWsGB-qcSNxr7zey7A37c0xFnPzdbMO3R5R74906GsKUwH-fLVK7XBK-CUdMq8PN31ANRQ8TbJ3ui2j9y6NFUssd_ZrhM0MYn10vVhgJPwZrMDwLL_wjmGJ23__PqqsZ2LoHrvDLWkqUtEQ1umpZx41xtGKvoabw0o8oDpAeIZIqKkSGiUQmoyIGOc9ckce_xQODfRhLkV8JBbPRAjgY2O1nFzzgxUj5O4SCJXl1YGtFk77av8Fwy5jx5fQ1xAKGMF0OF9C9eYDGiuh3ZG7Wnpp55Zq02Zm42sXSyIV5SlHyobDkl10_Sl76QcX08PBenps5tPTf8dMYjmIIWVBnXgkMBLzDiNyXuHM1vEXzMf33moqOa2PpISY_gslbh9ro-0jr_sjwmDZ9gvliZK7ZWH38sol0Eux=w696-h927-no?authuser=0";

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
