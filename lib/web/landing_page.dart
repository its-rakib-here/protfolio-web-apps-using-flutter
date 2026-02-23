import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        title: Row(
          children: [
            Spacer(flex: 1),
            LandingPageWebTabs("Home"),
            Spacer(),
            LandingPageWebTabs("Blogs"),
            Spacer(),
            LandingPageWebTabs("Work"),
            Spacer(),
            LandingPageWebTabs("About"),
          ],
        ),
      ),
      body: ListView(
        children: [
          //first page
          Container(
            height: heightDevice - 56,
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.tealAccent,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          child: sansBoldText(15,"Hello I'm" ),
                        ),
                        SizedBox(height: 15),
                        sansBoldText(55, "Rakibul Islam Rakib"),
                        sansText("Flutter Developer",18 ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Icon(Icons.email),
                            SizedBox(width: 18),
                            sansText("mdrakibr883@gmail.com", 15)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.phone),
                            SizedBox(width: 18),
                            sansText("0160225765", 15)
                          ],
                        )
                        ,Row(
                          children: [
                            Icon(Icons.location_city),
                            SizedBox(width: 18),
                            sansText("Dhaka,Bangladesh", 15)
                          ],
                        )
                      ],
                    ),
                  ),

                  Flexible(
                    child: CircleAvatar(
                      radius: 147,
                      child: CircleAvatar(
                        radius: 143,
                        backgroundColor: Colors.tealAccent,
                        child: CircleAvatar(
                          radius: 140,
                          backgroundImage: AssetImage("assets/rakib.jpg"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //second page

          Container(
            height: heightDevice/1.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                sansBoldText(40, "About me"),
                SizedBox(height: 15,),
                sansText("Hi, I’m Rakib—a passionate developer creating clean, functional, and engaging digital experiences. I love turning ideas into apps and solving problems with code. Explore my work and let’s build something amazing!",15.0),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.tealAccent,
                      style: BorderStyle.solid,
                      width: 2,

                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  padding: EdgeInsets.all(7.0),
                  child: sansText("Flutter", 15)
                ),
                SizedBox(height: 7.0,),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.tealAccent,
                        style: BorderStyle.solid,
                        width: 2,

                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    padding: EdgeInsets.all(7.0),
                    child: sansText("Firebase", 15)
                ),
                SizedBox(height: 7.0,),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.tealAccent,
                        style: BorderStyle.solid,
                        width: 2,

                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    padding: EdgeInsets.all(7.0),
                    child: sansText("Android", 15)
                ),
                SizedBox(height: 7.0,),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.tealAccent,
                        style: BorderStyle.solid,
                        width: 2,

                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    padding: EdgeInsets.all(7.0),
                    child: sansText("IOS", 15)
                ),

              ],
            ),

          ),
          SizedBox(height: 7.0),

        ],

      ),
    );
  }
}
