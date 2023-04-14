import 'package:code_competence/component/button.dart';
import 'package:code_competence/component/card.dart';
import 'package:code_competence/component/drawerlist.dart';
import 'package:code_competence/component/teksField.dart';
import 'package:code_competence/style/color.dart';
import 'package:code_competence/style/fontstyle.dart';
import 'package:code_competence/style/validation.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';

class LuxuriateCoffeScreen extends StatefulWidget {
  LuxuriateCoffeScreen({Key? key}) : super(key: key);

  @override
  State<LuxuriateCoffeScreen> createState() => _LuxuriateCoffeScreenState();
}

class _LuxuriateCoffeScreenState extends State<LuxuriateCoffeScreen> {
  final name = TextEditingController();
  final email = TextEditingController();
  final messege = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final sizeBox = SizedBox(height: 10);
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              _scaffoldkey.currentState!.openDrawer();
            },
            icon: Icon(
              Icons.list,
              color: ColorStyle().primaryblack,
              size: 30,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "T'CLOTHES",
          style: TextCustome().primary.copyWith(
              letterSpacing: 2, fontSize: 32, fontWeight: FontWeight.w500),
        ),
      ),
      drawer: Drawer(backgroundColor: ColorStyle().white, child: Drawerlist()),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/header.png',
                  height: 300,
                  width: 400,
                ),
                sizeBox,
                Container(
                  margin: const EdgeInsets.only(right: 20, left: 20),
                  child: Text(
                    textAlign: TextAlign.center,
                    "We provide a variety of your style needs ranging from clothing to accessories that can make your style seem luxurious",
                    style: TextCustome().primary.copyWith(
                          color: ColorStyle().primaryblack,
                          letterSpacing: 2,
                          fontSize: 12,
                        ),
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      textAlign: TextAlign.start,
                      "CONTACT US",
                      style: TextCustome()
                          .primary
                          .copyWith(fontSize: 24, fontWeight: FontWeight.w400)),
                ),
                InputField(
                  hinText: 'name',
                  controler: name,
                ),
                sizeBox,
                InputField(
                  hinText: 'email',
                  controler: email,
                ),
                sizeBox,
                InputField(hinText: "messege", controler: messege),
                sizeBox,
                PrimaryButton(
                    height: 43,
                    width: 180,
                    text: 'Submit',
                    onPressed: () {
                      _showAllterDialog(context);
                    }),
                sizeBox,
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    ItemCard(
                        judul: 'ACCESCORIES',
                        desc: "Find the model of the accescories you want here",
                        pict: 'assets/acces.png'),
                    ItemCard(
                        judul: 'CLOTHES',
                        desc: "Find the model of the clothes you want here",
                        pict: 'assets/clothes.png')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    ItemCard(
                        judul: 'JACKET',
                        desc: "Find the model of the jacket you want here",
                        pict: 'assets/jacket.png'),
                    ItemCard(
                        judul: 'DRESS',
                        desc: "Find the model of the dress you want here",
                        pict: 'assets/dress.png')
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _showAllterDialog(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        margin: EdgeInsets.all(10),
        height: 200.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Your Messege',
                style: TextCustome()
                    .primary
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 18)),
            Text('Name     : ${name.text}', style: TextCustome().primary),
            Text('Email    : ${email.text}', style: TextCustome().primary),
            Text('Messege  : ${messege.text}', style: TextCustome().primary),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SecondaryButton(
                    text: 'back',
                    onPressed: () => Navigator.of(context).pop(),
                    height: 32,
                    width: 100),
                PrimaryButton(
                  height: 32,
                  width: 100,
                  text: "Send",
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            )
          ],
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (context) => alertDialog,
    );
  }
}
