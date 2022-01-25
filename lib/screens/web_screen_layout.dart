import 'package:flutter/material.dart';
import 'package:whatsappclone/colors.dart';
import 'package:whatsappclone/widgets/contact_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [

                  ContactsList()
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.75,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(color: dividerColor),

              ),
              image: DecorationImage(
                image: AssetImage(
                  "assets/backgroundImage.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      )
    );
  }
}
