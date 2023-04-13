import 'package:code_competence/component/button.dart';
import 'package:code_competence/component/card.dart';
import 'package:code_competence/component/drawerlist.dart';
import 'package:code_competence/component/teksField.dart';
import 'package:code_competence/style/color.dart';
import 'package:code_competence/style/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';

class LuxuriateCoffeScreen extends StatefulWidget {
  LuxuriateCoffeScreen({Key? key}) : super(key: key);

  @override
  State<LuxuriateCoffeScreen> createState() => _LuxuriateCoffeScreenState();
}

class _LuxuriateCoffeScreenState extends State<LuxuriateCoffeScreen> {
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
      drawer: Drawer(
          backgroundColor: ColorStyle().white, child: Drawerlist()),
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
                const InputField(hinText: 'name'),
                sizeBox,
                const InputField(hinText: 'email'),
                sizeBox,
                const InputField(hinText: "messege"),
                sizeBox,
                const PrimaryButton(text: 'Submit'),
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
}
