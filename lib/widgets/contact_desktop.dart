import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/styles/mainContainerStyles.dart';
import 'package:my_portfolio/utils/links.dart';
import 'package:url_launcher/url_launcher.dart';


class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize =
        MediaQuery.of(context).size; // used to get teh current screen size
    final screenWidth = screenSize
        .width; // and then by using screenSize we can fetch width of the screeen
    final screenHeight = screenSize.height;

    return Container(
                        // height: screenHeight,
                        width: screenWidth,
                        // color: CustomColor.black80, // meaning
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            //contact
                            Text(
                              "Contact",
                              style: Maincontainerstyles.piyush(48),
                            ),
                            Container(
                              height: 5,
                              width: 100,
                              //color: CustomColor.red,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: CustomColor.red),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "I am currently seeking employment, so if you have a job\n or project offer, or if you need more information, \n please contact me.",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),

                            SizedBox(
                              height: 80,
                            ),

                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(CustomColor.red)),
                              onPressed: Links.launchEmail,
                              child: Text(
                                "Write Message",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 80,
                            ),

                            // clikable logos

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    await launchUrl(Links.githubUrl);
                                  },
                                  child: ImageIcon(
                                    AssetImage(
                                        "lib/assets/icons/githubicon.png"),
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                  onTap: () async {
                                    await launchUrl(Links.linkedinUrl);
                                  },
                                  child: ImageIcon(
                                    AssetImage(
                                        "lib/assets/icons/linkedinicon.png"),
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 80,
                            ),
                          ],
                        ),
                      );
  }
}