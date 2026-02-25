import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {

  urlLauncher(String url,String imgPath)
  {
    return
      IconButton(
        icon: Image.asset(
          imgPath,
          height: 35.0,
        ),
        onPressed: ()  async {
          await launchUrl(Uri.parse(url));
          // action here

        },
      );
  }

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/rakib.jpg"),
              ),
            ),
            SizedBox(height: 15.0),
            sansBoldText(20.0, "Rakibul Islam Rakib"),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               urlLauncher("https://www.instagram.com/itz.__rakib/", "assets/instagram.png"),
                urlLauncher("https://www.linkedin.com/in/rakibul-islam-rakib-885518252/", "assets/linkdin.png"),


              ],
            ),
          ],
        ),
      ),
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
          //first section
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
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          child: sansBoldText(15, "Hello I'm"),
                        ),
                        SizedBox(height: 15),
                        sansBoldText(55, "Rakibul Islam Rakib"),
                        sansText("Flutter Developer", 18),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Icon(Icons.email),
                            SizedBox(width: 18),
                            sansText("mdrakibr883@gmail.com", 15),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.phone),
                            SizedBox(width: 18),
                            sansText("0160225765", 15),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_city),
                            SizedBox(width: 18),
                            sansText("Dhaka,Bangladesh", 15),
                          ],
                        ),
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

          //second section
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/web.jpg", height: deviceWidth / 1.9),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    sansBoldText(40, "About me"),
                    SizedBox(height: 15),
                    sansText(
                      "Hi, I’m Rakib—a passionate developer creating clean, functional",
                      15.0,
                    ),
                    sansText(
                      "and engaging digital experiences. I love turning ideas into apps and solving problems with code.",
                      15,
                    ),
                    sansText(
                      "Explore my work and let’s build something amazing!",
                      15,
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
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
                          child: sansText("Flutter", 15),
                        ),
                        SizedBox(width: 7.0),
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
                          child: sansText("Firebase", 15),
                        ),
                        SizedBox(width: 7.0),
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
                          child: sansText("Android", 15),
                        ),
                        SizedBox(width: 7.0),
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
                          child: sansText("IOS", 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 7.0),

          //third section
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                sansBoldText(40, "What I do "),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedWidgetweb(text: "Web Development", imgPath: "assets/webL.png",fit: BoxFit.contain,reverse: true),
                    AnimatedWidgetweb(text: "App Development", imgPath: "assets/app.png"),
                    AnimatedWidgetweb(text: "Backend-Development", imgPath: "assets/firebase.png"),

                  ],
                ),
              ],
            ),
          ),

          //fourth section
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                sansText("Contact me", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Column(
                      children: [
                        inputField(
                          heading: "First Name",
                          width: 350,
                          hintText: "Please enter your first name",
                        ),
                        SizedBox(height: 15),
                        inputField(
                          heading: "Email ",
                          width: 350,
                          hintText: "Please enter your Email",
                        ),

                        // inputField(heading: "First Name", width: 350, hintText: "Please enter your first name"),
                        // inputField(heading: "First Name", width: 350, hintText: "Please enter your first name"),
                      ],
                    ),
                    Column(
                      children: [
                        inputField(
                          heading: "Last Name",
                          width: 350,
                          hintText: "Please enter your last name",
                        ),
                        SizedBox(height: 15),
                        inputField(
                          heading: "Phone Number",
                          width: 350,
                          hintText: "Please enter your phone Number",
                        ),
                      ],
                    ),

                  ],
                ),
                inputField(heading: "Message", width: deviceWidth/1.5, hintText: "Please enter your message",maxline: 5,),
              MaterialButton(
                elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),

                  ),
                  color: Colors.tealAccent,
                  minWidth: 200.0,
                  height: 60.0,
                  child: sansBoldText(20.0, "Submit"),
                  onPressed:() {}
              )
              ],
            ),
          ),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }
}
