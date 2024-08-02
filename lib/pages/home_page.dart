// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/styles/mainContainerStyles.dart';
import 'package:my_portfolio/utils/links.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'package:my_portfolio/widgets/contact_desktop.dart';
import 'package:my_portfolio/widgets/contact_mobile.dart';
import 'package:my_portfolio/widgets/footer.dart';
import 'package:my_portfolio/widgets/header.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/mainContainer.dart';
import 'package:my_portfolio/widgets/mainContainer_mobile.dart';
import 'package:my_portfolio/widgets/mobile_drawer.dart';
import 'package:my_portfolio/widgets/project_card.dart';
import 'package:my_portfolio/widgets/skillItem_container_widget.dart';
import 'package:my_portfolio/widgets/skill_desktop.dart';
import 'package:my_portfolio/widgets/skill_mobile.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarkeys = List.generate(
    4,
    (index) => GlobalKey(),
  );
  @override
  Widget build(BuildContext context) {
    final screenSize =
        MediaQuery.of(context).size; // used to get teh current screen size
    final screenWidth = screenSize
        .width; // and then by using screenSize we can fetch width of the screeen
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          endDrawer: MobileDrawer(
            onNavItemTap: (value) {
              //call method
              scaffoldKey.currentState?.closeEndDrawer();
              scrollToSection(value);
            },
          ),
          backgroundColor: CustomColor.black80,
          body: Column(
            children: [
              // HEADER
              if (constraints.maxWidth > mobileWidth)
                HeaderDesktop(
                  onNavItemTap: (value) {
                    //call method
                    scrollToSection(value);
                  },
                )
              else
                //HEADER MOBILE
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    //scrollDirection: Axis.vertical,
                    children: [
                      // HEADER
                      // if (constraints.maxWidth > mobileWidth)
                      //   HeaderDesktop()
                      // else
                      //   //HEADER MOBILE
                      //   HeaderMobile(
                      //     onLogoTap: () {},
                      //     onMenuTap: () {
                      //       scaffoldKey.currentState?.openEndDrawer();
                      //     },
                      //   ),
                      SizedBox(
                        key: navbarkeys.first,
                      ),
                      //MAIN
                      if (constraints.maxWidth > mobileWidth)
                        MainContainer()
                      else
                        MaincontainerMobile(),

                      SizedBox(
                        key: navbarkeys[1],
                      ),
                      //SKILLS
                      if (constraints.maxWidth > mobileWidth)
                        SkillDesktop()
                      else
                        SkillMobile(),

                      // //PROJECTS
                      Container(
                        key: navbarkeys[2],
                        //we dont set height becoz we want to set height according to our content
                        width: screenWidth,
                        height: screenHeight, // meaning
                        color: CustomColor.black88,
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Text(
                              "PROJECTS",
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
                              height: 40,
                            ),
                            //projects card
                            Expanded(
                              flex: 5,
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 500,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: projectsList.length,
                                      itemBuilder: (context, index) {
                                        return ProjectCard(
                                            image: projectsList[index].image,
                                            title: projectsList[index].title,
                                            subtitle:
                                                projectsList[index].subtitle,
                                            tags: projectsList[index].tags);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //CONTACTS
                      SizedBox(
                        key: navbarkeys[3],
                      ),
                      if (constraints.maxWidth > mobileWidth)
                        ContactDesktop()
                      else
                        ContactMobile(),
                    ],
                  ),
                ),
              ),
              //FOOTER
              Container(
                child: Footer(),
                color: CustomColor.black88,
              )
            ],
          ));
    });
  }

  // jump to section method

  void scrollToSection(int navIndex) {
    final key = navbarkeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }
}
