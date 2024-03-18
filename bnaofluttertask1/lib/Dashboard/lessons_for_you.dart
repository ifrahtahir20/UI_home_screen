import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Controller/Homecontroller.dart';
import 'Themes/Themes.dart';

class Lessons_for_you extends StatelessWidget {
  const Lessons_for_you({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    final size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Lessons for you',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 170,
            ),
            Text(
              'View all',
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              Icons.arrow_forward_sharp,
              color: Colors.grey,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.ite.length,
            itemBuilder: (context, index) {
              final data = controller.ite[index];
              return Container(
                margin: const EdgeInsets.only(right: 10),
                height: 200,
                width: size.width * .7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black.withOpacity(.050),
                  ),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 130,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(.1),
                            image: DecorationImage(
                              image: AssetImage(
                                data.thumbnail,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  child: TextFormat.small(
                                      text: data.title,
                                      textAlign: TextAlign.start,
                                      fontWeight: FontWeight.w500,
                                      textColor: Colors.blueAccent),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 8.0, left: 8, right: 8),
                                child: SizedBox(
                                  child: TextFormat.small(
                                    text: data.description,
                                    textAlign: TextAlign.start,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 8.0, left: 8, right: 8),
                                child: SizedBox(
                                  child: Row(
                                    children: [
                                      Text(
                                        "${data.detail}",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 190,
                                      ),
                                      Icon(
                                        Icons.lock_outlined,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
