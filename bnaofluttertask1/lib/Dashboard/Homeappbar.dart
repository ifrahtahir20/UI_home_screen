import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Themes/Themes.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, right: 10),
                  width: 320,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Priya!",
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      TextFormat.extraSmall(
                        text: " What do you wanna learn today?",
                        fontWeight: FontWeight.w400,
                        textColor: Colors.grey.shade700,
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ],
        )
      ],
    );
  }
}
