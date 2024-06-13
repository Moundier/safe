import 'package:client_flutter/screens/tab1/tab1.sequence.dart';
import 'package:client_flutter/shared/service/navigation.service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nes_ui/nes_ui.dart';

class CardCustom extends StatelessWidget {
  final String paramImage;
  final VoidCallback onPressed;

  const CardCustom({
    super.key,
    required this.paramImage,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: GestureDetector(
        onTap: () {
          print("Are you stupid? yes");
          NavigationService.push(context, const Tab1Sequence());
        },
        child: NesContainer(
          width: 400,
          label: 'Label',
          padding: const EdgeInsets.all(0.0),
          child: Row(
            children: <Widget>[
              
              Image.asset(
                paramImage,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),

              const Expanded(
                child: Text(
                  'garamoundier.developer@protonmail.com',
                  style: TextStyle(
                    fontFamily: 'minecraftia',
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: NesIconButton(
                    primaryColor: const Color.fromARGB(255, 130, 9, 0),
                    icon: NesIcons.delete,
                    onPress: () => {},
                  ),
                )
              ),
              
            ]
          ),
        ), 
      )
    );
  }
}
