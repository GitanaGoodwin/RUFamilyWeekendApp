import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  void _onItem1Tapped() {
    //Navigator.of(context).pop();
    Navigator.of(context).pushNamed("GeneralInfoPage");
  }

  void _onItem2Tapped() {
    //Navigator.of(context).pop();
    Navigator.of(context).pushNamed("SchedulePage");
  }

  void _onItem3Tapped() {
    //Navigator.of(context).pop();
    Navigator.of(context).pushNamed("TicketsPage");
  }

  void _onItem4Tapped() {
    //Navigator.of(context).pop();
    Navigator.of(context).pushNamed("SponsorsPage");
  }

  void _onItem5Tapped() {
    //Navigator.of(context).pop();
    Navigator.of(context).pushNamed("FacebookPage");
  }

  void _onItem6Tapped() {
    //Navigator.of(context).pop();
    Navigator.of(context).pushNamed("TwitterPage");
  }

  void _onItem7Tapped() {
    //Navigator.of(context).pop();
    Navigator.of(context).pushNamed("FWPage");
  }

  @override
  Widget build(BuildContext context) {
    var headerText = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset('assets/torch_36.png'),
        const Text('RU Family Weekend'),
        const Text('September 28-30, 2022'),
      ],
    );

    var header = DrawerHeader(
      child: headerText,
      decoration: const BoxDecoration(
        color: Color(0xFFFFCC00),
      ),
    );

    /**** 1st Drawer Item ****/
    var item1Text = const Text('General Info');
    var item1Icon = const ImageIcon(AssetImage('assets/info.png'));
    var item1 =
        ListTile(title: item1Text, leading: item1Icon, onTap: _onItem1Tapped);

    /**** 2nd Drawer Item ****/
    var item2Text = const Text('Schedule');
    var item2Icon = const ImageIcon(AssetImage('assets/schedule.png'));
    var item2 =
        ListTile(title: item2Text, leading: item2Icon, onTap: _onItem2Tapped);

    /**** 3rd Drawer Item ****/
    var item3Text = const Text('Tickets');
    var item3Icon = const ImageIcon(AssetImage('assets/tickets-30.png'));
    var item3 =
        ListTile(title: item3Text, leading: item3Icon, onTap: _onItem3Tapped);

    /**** 4th Drawer Item ****/
    var item4Text = const Text('Sponsors');
    var item4Icon = const ImageIcon(AssetImage('assets/sponsors.png'));
    var item4 =
        ListTile(title: item4Text, leading: item4Icon, onTap: _onItem4Tapped);

    var divider = const Divider(
      thickness: 1,
    );

    var text = Container(
      padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
      child: const Align(
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          'RU on Social Media',
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.start,
        ),
      ),
    );

    /**** 5th Drawer Item ****/
    var item5Text = const Text('Facebook');
    var item5Icon = const ImageIcon(AssetImage('assets/fb.png'));
    var item5 =
        ListTile(title: item5Text, leading: item5Icon, onTap: _onItem5Tapped);

    /**** 6th Drawer Item ****/
    var item6Text = const Text('Twitter');
    var item6Icon = const ImageIcon(AssetImage('assets/twitter.png'));
    var item6 =
        ListTile(title: item6Text, leading: item6Icon, onTap: _onItem6Tapped);

    /**** 7th Drawer Item ****/
    var item7Text = const Text('FW Website');
    var item7Icon = const ImageIcon(AssetImage('assets/internet-32.png'));
    var item7 =
        ListTile(title: item7Text, leading: item7Icon, onTap: _onItem7Tapped);

    var children = [
      header,
      item1,
      item2,
      item3,
      item4,
      divider,
      text,
      item5,
      item6,
      item7
    ];

    var listView = ListView(children: children);

    var drawer = Drawer(child: listView);

    return Scaffold(
      backgroundColor: const Color(0xFFFFCC00),
      drawer: drawer,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFF57150B)),
        title: const Text('RU Family Weekend 2022',
            style: TextStyle(color: Color(0xFF57150B))),
        backgroundColor: const Color(0xFFFFCC00),
      ),
      body: Column(children: <Widget>[
        Align(
            alignment: Alignment.center,
            child: Image.asset('assets/rufwpic.png', height: 350, width: 375)),
        const Text('2022 Family Weekend',
            style: TextStyle(
              color: Color(0xFF57150B),
              fontSize: 36,
            )),
        const Text('General Info',
            style: TextStyle(
              color: Color(0xFF57150B),
              fontSize: 36,
            )),
        const SizedBox(height: 100),
      ]),
    );
  }
}

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFCC00),
        appBar: AppBar(
            backgroundColor: const Color(0xFFFFCC00),
            title: const Text("General Info",
                style: TextStyle(color: Color(0xFF57150B),
        ))),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset('assets/family.png', height: 250, width: 400),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text("Family Weekend offers parents, siblings, and other family "
                    "members the perfect opportunity to enjoy Rowan's campus, "
                    "explore life inside the classroom, partake in some of our "
                    "activities, meet other Rowan families, and spend time with "
                    "your student. Some of the events require a fee and are "
                    "limited in terms of seating availability, so we urge you to"
                    " pre-register when possible.",
                    style: TextStyle(
                        color: Color(0xFF57150B),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text("For more information, please email us at parents@rowan.edu or call"
                        " 856-256-4596 (Mondays - Fridays 8:30 a.m. - 4:30 p.m.)",
                        style: TextStyle(
                            color: Color(0xFF57150B),
                            fontSize: 17,
                            fontWeight: FontWeight.bold)),
                  ),

            ])));
  }
}

class FamilyWeekend extends StatelessWidget {
  const FamilyWeekend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://sites.rowan.edu/parentsfamily/events/family-weekend/",
      appBar: AppBar(
        title: const Text("RU Family Weekend Page",
            style: TextStyle(color: Color(0xFF57150B))),
        backgroundColor: const Color(0xFFFFCC00),
      ),
    );
  }
}

class Tickets extends StatelessWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://secure.visualzen.com/vzfamilyweekend/rowan",
      appBar: AppBar(
        title: const Text("RU Ticket Page",
            style: TextStyle(color: Color(0xFF57150B))),
        backgroundColor: const Color(0xFFFFCC00),
      ),
    );
  }
}

class Facebook extends StatelessWidget {
  const Facebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://www.facebook.com/RowanUniversity",
      appBar: AppBar(
        title: const Text("RU Facebook Page",
            style: TextStyle(color: Color(0xFF57150B))),
        backgroundColor: const Color(0xFFFFCC00),
      ),
    );
  }
}

class Twitter extends StatelessWidget {
  const Twitter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://twitter.com/RowanUniversity",
      appBar: AppBar(
        title: const Text("RU Twitter Page",
            style: TextStyle(color: Color(0xFF57150B))),
        backgroundColor: const Color(0xFFFFCC00),
      ),
    );
  }
}

class Sponsors extends StatelessWidget {
  const Sponsors({Key? key}) : super(key: key);

  static const List sponsors = [
    "Alumni Engagement",
    "Athletics",
    "Barnes & Noble",
    "Edelman Planetarium",
    "Gourmet Dining",
    "Harley E. Flack Student Mentoring Program",
    "History Department",
    "Office of Career Advancement",
    "Social Justice, Inclusion & Conflict Resolution",
    "Orientation & Student Leadership Programs",
    "Parent & Family Connections",
    "Rohrer College of Business",
    "Rowan University Art Gallery",
    "Rowan After Hours",
    "Chamberlain Student Center & Campus Activities",
    "Campus Recreation",
    "WGLS-FM Radio Station",
    "Museum of Anthropology at Rowan University",
    "Edelman Fossil Park",
    "College of Performing Arts",
    "Wellness Center",
    "Veterans Affairs",
    "Greek Life"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xFFFFCC00),
            title: const Text("2022 Family Weekend Sponsors",
                style: TextStyle(
                  color: Color(0xFF57150B),
                ))),
        body: ListView.separated(
          padding: const EdgeInsets.only(left: 20),
          itemCount: sponsors.length,
          itemBuilder: (BuildContext context, int index) {
            return Text(sponsors.elementAt(index),
                style: const TextStyle(height: 3, fontSize: 15));
          },
          separatorBuilder: (context, index) {
            return const Divider(thickness: 2);
          },
        ));
  }
}

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFFFFCC00),
          title: const Text("RU Family Weekend Dates",
              style: TextStyle(
                color: Color(0xFF57150B),
              ))),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              primary: const Color(0xFF57150B),
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed("FridayPage");
            },
            child: const Text('28th'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              primary: const Color(0xFF57150B),
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed("SaturdayPage");
            },
            child: const Text('29th'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              primary: const Color(0xFF57150B),
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed("SundayPage");
            },
            child: const Text('30th'),
          ),
        ],
      ),
    );
  }
}

//Friday
class Friday extends StatefulWidget {
  const Friday({Key? key}) : super(key: key);

  @override
  FridayState createState() => FridayState();
}

class FridayState extends State<Friday> {
  List eventsFri = [
    "Registration and Welcome",
    "5 Friday at the Glassworks Eatery",
    "How to Create a Killer LinkedIn Profile That Will Get You Noticed",
    "Heather Ujiie: Dystopian Garden Paradise",
    "Rowan Division III Ice Hockey vs. Rutgers Camden",
    "Laser Pink Floyd: Dark Side of the Moon - Planetarium Show",
    "Rowan Division II Ice Hockey vs. Virginia Tech",
    "Laser Pink Floyd: Dark Side of the Moon - Planetarium Show",
    "Drive-in Movie",
    "Laser Pink Floyd: Dark Side of the Moon - Planetarium Show"
  ];

  List detailsFri = [
    "Time: 4:00pm - 7:00pm\n\nLocation: Atrium, Savitz Hall 2nd Floor\n\nStudents or family members can pick up their reserved tickets or purchase tickets while supplies last.  We encourage guests to bring non-perishable food and toiletries donations for The Shop at Rowan"
        "University (Students Helping Other Profs), serving Rowan University students faced with food insecurities.",
    "Time: 4:30pm - 7:30pm\n\nLocation: Holly Pointe Commons\n\nCost: \$5 - Adults, Children, Senior Citizens(Rowan students can use meal plans/special-priced meal.)\n"
        "Enjoy a wide variety of selections in our newest all you can eat dining "
        "facility including classic cuisine, pizza & pasta, soup & salad, traditional grill and more...",
    "Time: 4:00pm - 5:00pm\n\nLocation: Office of Career Advancement, Savitz Hall 2nd Floor\n\nCost: Free\n\n"
        "Whether you are job or internship hunting, gathering leads, or networking in your career field, having a professional, eye-catching LinkedIn"
        " profile is an excellent idea to make sure that you can be found by the right people at the right time.  come learn how to complete your LinkedIn "
        "profile in a way that appeals to prospects that are quickly scanning to see if you have what they need.  ",
    "Time: 4:00pm - 7:00pm\n\nLocation: Rowan University Art Gallery, 301 West High Street, Glassboro NJ\n\nCost: Free\n\nRowan University art "
        "Gallery will be producing and presenting an interdisciplinary program that turns a lens on how fashion and textile design is translated "
        "as a visual arts practice.  This program comes at a time when the arts and design sectors are blending creative principles and crossing over into the "
        "multi-disciplinary practices.  Fashion design has crossed over into a platform where explorations into gender and cultural identity can reach a broader audience outside"
        " the mainstream fashion and design sectors.  Artist Heather Ujiie's work speaks directly to issues that are currently relevant in our society: transgender, sexuality, environmental issues, science and technology.  ",
    "Time: 5:30pm - TBA\n\nLocation: Hollydell Ice Arena, 600 Hollydell Drive, Sewell NJ\n\nCost: \$5 - Adults, Free- Rowan Students(With ID) and children(Athletic passes included by the Athletic Department cannot be used for this event.)\n\n"
        "Join Rowan's hockey club for its opening night for the 2018/19 season!",
    "Time: 7:00pm - TBA\n\nLocation: Edelman Planetarium, Science Hall\n\nCost: \$5 - Adults, \$3 - Children and Senior Citizens (Under 16 and over 60), \$3 - Rowan Students (With ID)\n\n"
        "Show details and ticket purchases can be found at www.rowan.edu/planetarium",
    "Time: 8:15pm - TBA\n\nLocation: Hollydell Ice Arena, 600 Hollydell Drive, Sewell NJ\n\nCost: \$5 - Adults, Free- Rowan Students(With ID) and children(Athletic passes included by the Athletic Department cannot be used for this event.)\n\n"
        "Join Rowan's hockey club for its opening night for the 2018/19 season!",
    "Time: 8:30pm - TBA\n\nLocation: Edelman Planetarium, Science Hall\n\nCost: \$5 - Adults, \$3 - Children and Senior Citizens (Under 16 and over 60), \$3 - Rowan Students (With ID)\n\n"
        "Show details and ticket purchases can be found at www.rowan.edu/planetarium",
    "Time: 9:00pm - 1:00am\n\nLocation: South Jersey Technology Park\n\nCost: Free\n\nEnjoy a family friendly classic under the stars and go back to the days of drive-in movies.  No worries if you don't have a car, "
        "a free shuttle will be provided from the Student Center Half-Circle starting at 8:30pm.  Enjoy free food and drinks while you watch.  ",
    "Time: 10:00pm - TBA\n\nLocation: Edelman Planetarium, Science Hall\n\nCost: \$5 - Adults, \$3 - Children and Senior Citizens (Under 16 and over 60), \$3 - Rowan Students (With ID)\n\n"
        "Show details and ticket purchases can be found at www.rowan.edu/planetarium"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xFFFFCC00),
            title: const Text("RU Family Weekend Dates - Fri",
                style: TextStyle(
                  color: Color(0xFF57150B),
                ))),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("FridayPage");
              },
              child: const Text('28th'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("SaturdayPage");
              },
              child: const Text('29th'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("SundayPage");
              },
              child: const Text('30th'),
            )
          ]),
          Expanded(
              child: ListView.separated(
            itemCount: eventsFri.length,
            itemBuilder: (context, int index) {
              return ListTile(
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  _detailsDialog(context, index);
                },
                title: Text(eventsFri.elementAt(index),
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              );
            },
            separatorBuilder: (context, position) {
              return const Divider(
                color: Color(0xFF57150B),
                thickness: 1,
              );
            },
          ))
        ])));
  }

  Future _detailsDialog(BuildContext context, int index) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Event Details"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(detailsFri[index]),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Close"))
            ],
          );
        });
  }
}

//Saturday
class Saturday extends StatefulWidget {
  const Saturday({Key? key}) : super(key: key);

  @override
  SaturdayState createState() => SaturdayState();
}

class SaturdayState extends State<Saturday> {
  List eventsSat = [
    "Registration and Welcome",
    "The SHOP (Students Helping Other Profs) Food Pantry Donations",
    "They Fought We Ride, Run, or Walk",
    "MARU (Museum of Anthropology at Rowan University) Tour",
    "WGLS-FM Radio Studio Tour",
    "Heather Ujii: Dystopian Garden Paradise",
    "Story Telling and Craft Time at Barnes and Noble",
    "Instrument Petting Zoo",
    "Ingredients for a Great Career: Exploring OCA Services and Resources",
    "Family Block Party/Vendor Fair",
    "Flu Shots",
    "Sweets in the Sukkah",
    "Hollybush Tour",
    "Rowan University Field Hockey vs. William Patterson University",
    "Profecy A Cappella Performance",
    "Liquid Nitrogen Ice Cream Demonstration",
    "Rowan Family Fossil Find",
    "Finance Lab Demonstration",
    "Black Holes - Planetarium Show",
    "Stars of the Pharaohs - Planetarium Show",
    "Rowan University Football vs. Christopher Newport University",
    "Rowan University Men's Soccer vs. Kean University",
    "Laser Queen - Planetarium Show",
    "Laser Queen - Planetarium Show",
    "End of Summer Bingo",
    "Laser Queen - Planetarium Show"
  ];
  List detailsSat = [
    "Time: 9:00am - 12:30pm\n\nLocation: The Registration Tent, Athletic Alumni Patio, Between the End Zone and John Green Team House\n\nCost: Free\n\n"
        "Students or family members can pick up their reserved tickets or purchase tickets while supplies last.",
    "Time: 9:00am - 12:30pm\n\nLocation: The Registration Tent, Athletic Alumni Patio, Between the End Zone and John Green Team House\n\nCost: Free\n\n"
        "The SHOP is Rowans's on-campus food pantry and resource center available to students in need.  We encourage guests to bring non-perishable food items, toiletries and hygiene product donations to show your "
        " support for our student community.",
    "Time: 9:30am - 12:00pm\n\nLocation: Near the Registration Tent, Athletic Alumni Patio, Between the End Zone and John Green Team House\n\nCost: Free, but a \$15 minimum or more donation is suggested, but not required to participate\n\n"
        "Tune up your bicycle or lace up your running/walking shoes and participate in our veterans event!  A fun bike/run/walk that serves as a fundraiser for our veterans' initiatives.  the course follows the perimeter of our campus.",
    "Time: 10:00am - 4:00pm\n\nLocation: Robinson Hall, Room 205\n\nCost: Free\n\n"
        "Explore Rowan's very own anthropology museum!  The museum's mission is to promote discovery, learning and an appreciation of human origins and cultures, with collections including archaeological artifacts, human osteological and megafauna remains "
        "and even an extensive human evolution series inaugurated in 2017 by Dr. Jane Hill and Rowan's Museum Studies students.  Dr. Maria A. Rosado will be on hand to discuss the collections and answer any questions you may have.",
    "Time: 10:00am - 1:00pm\n\nLocation: Bozorth Hall\n\nCost: Free\n\nExplore Rowan's very own radio station headquarters!  WGLS-FM is regional radio service with a potential audience of almost 1.2 million people and has won over 245 national and "
        "regional awards since 1993.  The broadcast covers South Jersey, parts of Philadelphia and Delaware.  WGLS-FM is licensed to the Rowan University Board of Trustees and is a non-profit organization.  Twenty-four hours a day a staff of independent volunteers "
        "broadcast a variety of musical, cultural, educational, entertaining and informative programs of interest to the Rowan University and surrounding communities.  ",
    "Time: 10:00am - 7:00pm\n\nLocation: Rowan University Art Gallery, 301 West High Street, Glassboro NJ\n\nCost: Free\n\nRowan University art "
        "Gallery will be producing and presenting an interdisciplinary program that turns a lens on how fashion and textile design is translated "
        "as a visual arts practice.  This program comes at a time when the arts and design sectors are blending creative principles and crossing over into the "
        "multi-disciplinary practices.  Fashion design has crossed over into a platform where explorations into gender and cultural identity can reach a broader audience outside"
        " the mainstream fashion and design sectors.  Artist Heather Ujiie's work speaks directly to issues that are currently relevant in our society: transgender, sexuality, environmental issues, science and technology.",
    "Time: 10:30am - 12:00pm\n\nLocation: Barnes and Noble, 201 Rowan Boulevard\n\nCost: Free\n\nBarnes and Noble will feature new topical books of interest for students, as well as family PROF related crafts for the whole family to enjoy and take home.",
    "Time: 10:00am - 12:00pm\n\nLocation: Room 105, Harold Wilson Music Building\n\nCost: Free\n\nCome expand your mind doing something relaxing, upbeat and productive.  What is it you say?  Music!  Try instruments, listen "
        "to informal performances, ask questions about music, and learn about how you can be involved in music even as a non-music major.  if you love music, this is the place for you.",
    "Time: 10:30am - 2:00pm\n\nLocation: Room 107, Harold Wilson Music Building\n\nCost: Free\n\n"
        "Join us to learn about Rowan University's Career Advancement center, alumni and community networks and the many ways for students to make lasting, valuable career connections.  Take an interactive tour and talk with students who have participated in "
        " career development opportunities, internships, externships, job shadowing and more with the professional world.  ",
    "Time: 11:00am - 2:30pm\n\nLocation: Near the Picnic Tent, Athletic Alumni Patio, Between the End Zone and John Green Team House\n\nCost: \$20 - Adults, \$17 - Children under 12 for pre-event registration (Day of ticket prices are \$25 for adults and \$20 for children under 12) "
        "Rowan Students can use meal plans/special-priced meal.\n\n"
        "Enjoy good food, music, family activities and good old fashion fun the Rowan way!  Festivities include balloon animals, caricaturist artists, crafts, face painting, local vendors, stilt walking entertainers, family photos, Gourmet Dining sponsored contests and more!  The Rowan "
        "Family Tailgate menu will feature a variety of salads, sides, grilled entrees and assorted desserts.  (Vegan, vegetarian and gluten-free options are available)",
    "Time: 11:00am - 2:30pm\n\nLocation: Block Party Vendor Fair\n\nCost: Free\n\nPlease stop by for your free flu shot, with proof of insurance card!",
    "Time: 11:00am - 1:00pm\n\nLocation: Sukkah Hut\n\nCost: Free\n\n"
        "Drop by and grab a sweet in the traditional Sukkah Hut (which commemorates the Jewish harvest festival).  Special activities will be available for children.  ",
    "Time: 12:00pm - 2:00pm\n\nLocation: The Hollybush Mansion at Rowan University\n\nCost: Free\n\n"
        "Join members of the Rowan History Department for an interactive tour of the Hollybush Mansion!  Hollybush has a long and varied history, first as the home of the prominent Whitney family of Glassboro in the mid-1800's, the site of a US and Russia Cold War Summit in 1967 "
        "and later as a part of Rowan University.  ",
    "Time: 12::00pm - TBA\n\nLocation: Richard Wacker Stadium\n\nCost: Free\n\n",
    "Time: 1:00pm - 1:15pm\n\nLocation: Block Party Vendor Fair\n\nCost: Free\n\n"
        "Check out Rowan's oldest all-male a cappella group who have competed in the International Championship of Collegiate A Cappella, performed in multiple states, and even released a music video!  These proud Rowan Profs pride themselves on promoting the enjoyment of contemporary "
        "a cappella music and building life-long relationships with other musicians.  ",
    "Time: 1:00pm - 2:00pm\n\nLocation: Room 107, Engineering Hall\n\nCost: Free\n\n"
        "Explore the science behind making homade ice cream using liquid nitrogen!  Engineering and chemistry can be used in everyday life, such as making delicious desserts.  feel free to add some "
        "toppings to your ice cream and enjoy a quick presentation about the club, as well as interesting statistics about women in engineering.  ",
    "Time: 2:00pm - 4:00\n\nLocation: Edelman Fossil Park\n\nCost: \$7 - Adults, \$5 - Children\n\n"
        "Edelman Fossil Park invites Rowan University families for a fossil find event! Few other topics in science can compete with the wide appeal of fossils and their ability to engage the imagination.  This special Family Fossil Find, provides an unparalleled opportunity to do just that, bringing"
        " the ancient past to life for hundreds of amateur explorers, young an old.  On site with us you will have the chance to interact with Rowan University scientists who will recount the tales of Cretaceous New Jersey and teach guests to excavate and identify their own marine fossils in Rowan's four-acre quarry."
        "Nearly every participant will leave with a 65-million-year-old fossil that they dug with their own hands.  All will make an intimate connection with Earth's deep past.\n\n***A courtesy shuttle will escort registered guests to and from the park.***\n\nTicket purchases can be made at www.rowan.edu/fossils",
    "Time: 2:30pm - 4:00pm\n\nLocation: Finance Lab, Business Hall 107\n\nCost: Free\n\n"
        "The Bloomberg terminal enables financial professionals to access the Bloomberg Professional service through which users can monitor and analyze real-time financial market data movements.  It also provides news, price quotes, and messaging across its proprietary network, and news and analytics for over 174+ countries and 360+ exchanges.",
    "Time: 4:00pm - TBA\n\nLocation: Edelman Planetarium, Science Hall\n\nCost: \$5 - Adults, \$3 - Children and Senior Citizens (Under 16 and over 60), \$3 - Rowan Students (With ID)\n\n"
        "Show details and ticket purchases can be found at www.rowan.edu/planetarium",
    "Time: 5:30pm - TBA\n\nLocation: Edelman Planetarium, Science Hall\n\nCost: \$5 - Adults, \$3 - Children and Senior Citizens (Under 16 and over 60), \$3 - Rowan Students (With ID)\n\n"
        "Show details and ticket purchases can be found at www.rowan.edu/planetarium",
    "Time: 6:00pm - TBA\n\nLocation: Richard Wacker Stadium\n\nCost: \$8 - General Admission, \$5 - Visiting College Students with ID/Senior Citizens/Children ages 12 and under, Free - Rowan Students with ID, and Faculty and Staff with Athletic Pass\n\n"
        "Beer garden entrance is included with ticket if over 21.  ",
    "Time: 7:00pm - TBA\n\nLocation: Soccer Fields\n\nCost: \$5 - General Admission, \$3 - Visiting College Students with ID/Senior Citizens/Children ages 12 and under, Free - Rowan Students with ID, and Faculty and Staff with Athletic Pass\n\n",
    "Time: 7:00pm - TBA\n\nLocation: Edelman Planetarium, Science Hall\n\nCost: \$5 - Adults, \$3 - Children and Senior Citizens (Under 16 and over 60), \$3 - Rowan Students (With ID)\n\n"
        "Show details and ticket purchases can be found at www.rowan.edu/planetarium",
    "Time: 8:30pm - TBA\n\nLocation: Edelman Planetarium, Science Hall\n\nCost: \$5 - Adults, \$3 - Children and Senior Citizens (Under 16 and over 60), \$3 - Rowan Students (With ID)\n\n"
        "Show details and ticket purchases can be found at www.rowan.edu/planetarium",
    "Time: 9:00pm - 1:00am\n\nLocation: Chamberlain Student Center Pit\n\nCost: Free\n\n"
        "Bingo begins at 10:00pm- Say goodbye to summer and ease into the new school year with a night of prizes, giveaways, and more with everyone's favorite RAH game: BINGO!  Bring in a non-perishable food item to donate to The Shop for an extra bingo board.",
    "Time: 10:00pm - TBA\n\nLocation: Edelman Planetarium, Science Hall\n\nCost: \$5 - Adults, \$3 - Children and Senior Citizens (Under 16 and over 60), \$3 - Rowan Students (With ID)\n\n"
        "Show details and ticket purchases can be found at www.rowan.edu/planetarium"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xFFFFCC00),
            title: const Text("RU Family Weekend Dates - Fri",
                style: TextStyle(
                  color: Color(0xFF57150B),
                ))),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("FridayPage");
              },
              child: const Text('28th'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("SaturdayPage");
              },
              child: const Text('29th'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("SundayPage");
              },
              child: const Text('30th'),
            )
          ]),
          Expanded(
              child: ListView.separated(
            itemCount: eventsSat.length,
            itemBuilder: (context, int index) {
              return ListTile(
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  _detailsDialog(context, index);
                },
                title: Text(eventsSat.elementAt(index),
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              );
            },
            separatorBuilder: (context, position) {
              return const Divider(
                color: Color(0xFF57150B),
                thickness: 1,
              );
            },
          ))
        ])));
  }

  Future _detailsDialog(BuildContext context, int index) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Event Details"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(detailsSat[index]),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Close"))
            ],
          );
        });
  }
}

//Sunday
class Sunday extends StatefulWidget {
  const Sunday({Key? key}) : super(key: key);

  @override
  SundayState createState() => SundayState();
}

class SundayState extends State<Sunday> {
  List eventsSun = [
    "A Service of Many Faiths",
    "Black Jack Walk",
    "Sweet and Savory Brunch at the Glassworks Eatery",
    "Hollybush Tour",
    "Family Show - Planetarium Show",
    "Stars of the Pharaohs - Planetarium Show",
  ];
  List detailsSun = [
    "Time: 9:00am - TBA\n\nLocation: Chamberlain Student Center Pit\n\nCost: Free\n\n"
        "An all-faiths service where family members can explore and celebrate what they believe together as one community committed to supporting different faiths and religions.  ",
    "Time: 11:00am - TBA\n\nLocation: Student Recreation Center\n\nCost: Free\n\n"
        "Enjoy a 1.2-mile walk around campus, collect tokens/giveaways at  stations along the way.  Return to the Rec Center where you'll be dealt one blackjack hand for a chance to win raffles and prizes.  No start time - come anytime between 11:00am until 12:45pm",
    "Time: 11:00am - 2:00pm\n\nLocation: Holly Pointe Commons\n\nCost: \$10 - Adults, \$7 - Children under 12 (Rowan Students can use meal plans)\n\n"
        "Kick off your Sunday in style by joining us for our classic brunch, featuring all your favorite breakfast items, Chef action stations and more.  ",
    "Time: 12:00pm - 2:00pm\n\nLocation: The Hollybush Mansion at Rowan University\n\nCost: Free\n\n"
        "Join members of the Rowan History Department for an interactive tour of the Hollybush Mansion!  Hollybush has a long and varied history, first as the home of the prominent Whitney family of Glassboro in the mid-1800's, the site of a US and Russia Cold War Summit in 1967 "
        "and later as a part of Rowan University.  ",
    "Time: 2:00 - TBA\n\nLocation: Edelman Planetarium, Science Hall\n\nCost: \$2 - Adults, Children and Senior Citizens (under 16 and over 60), and Rowan Students (with ID)\n\n"
        "The Family Show series is reccomended for visitors with children 5-10 years old.  The show runs about a half hour, does not include a live presentation and costs only \$2 per person!\n\nShow details and ticket purchases can be found at www.rowan.edu/planetarium",
    "Time: 3:00pm - TBA\n\nLocation: Edelman Planetarium, Science Hall\n\nCost: \$5 - Adults, \$3 - Children and Senior Citizens (Under 16 and over 60), \$3 - Rowan Students (With ID)\n\n"
        "Show details and ticket purchases can be found at www.rowan.edu/planetarium"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xFFFFCC00),
            title: const Text("RU Family Weekend Dates - Fri",
                style: TextStyle(
                  color: Color(0xFF57150B),
                ))),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("FridayPage");
              },
              child: const Text('28th'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("SaturdayPage");
              },
              child: const Text('29th'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("SundayPage");
              },
              child: const Text('30th'),
            )
          ]),
          Expanded(
              child: ListView.separated(
            itemCount: eventsSun.length,
            itemBuilder: (context, int index) {
              return ListTile(
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  _detailsDialog(context, index);
                },
                title: Text(eventsSun.elementAt(index),
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              );
            },
            separatorBuilder: (context, position) {
              return const Divider(
                color: Color(0xFF57150B),
                thickness: 1,
              );
            },
          ))
        ])));
  }

  Future _detailsDialog(BuildContext context, int index) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Event Details"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(detailsSun[index]),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Close"))
            ],
          );
        });
  }
}
