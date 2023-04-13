import 'package:code_competence/style/color.dart';
import 'package:code_competence/style/fontstyle.dart';
import 'package:flutter/material.dart';

class Drawerlist extends StatelessWidget {
  const Drawerlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Hallo T'CLOTHES",
              style: TextCustome()
                  .primary
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 12)),
          accountEmail: Text("Silahkan login",
              style: TextCustome()
                  .primary
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 12)),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/drawer.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://static.vecteezy.com/system/resources/thumbnails/005/545/335/small/user-sign-icon-person-symbol-human-avatar-isolated-on-white-backogrund-vector.jpg")),
        ),
        listtilewidget(
            leading: Icon(Icons.contact_mail),
            title: "Contact us",
            ontap: () {
              Navigator.pop(context);
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
        style: TextCustome().primary,
      ),
      onTap: ontap,
    );
  }
}
