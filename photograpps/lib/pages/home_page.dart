part of 'pages.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void selectedIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List pagesList = [
    const HomeScreen(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: selectedIndex,
          selectedItemColor: blueColor,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(color: blueColor),
          unselectedLabelStyle: const TextStyle(color: Colors.grey),
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Profile"),
          ],
        ),
      body: pagesList[_currentIndex],
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()),
                          );
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          child: const CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/person1.png"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "hi, Drow!",
                        style: TextStyle(
                          color: greyColor3,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Image.asset("assets/icons/ic_notification.png")
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Welcome to",
                style: TextStyle(
                  color: greyColor5,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19),
                child: Text(
                  "Our PhotogrApps",
                  style: TextStyle(
                    color: greyColor5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Newest Photo",
                style: TextStyle(
                  fontSize: 12,
                  color: greyColor5,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              PhotoCard(
                backgroundPhoto: "assets/images/photo1.png",
                urlAvatar: "assets/images/person2.png",
                fullName: "Derek Drymon",
                profession: "Nature Photographer",
                totLove: "106",
              ),
              PhotoCard(
                backgroundPhoto: "assets/images/photo2.png",
                urlAvatar: "assets/images/person3.png",
                fullName: "Dave Simmon",
                profession: "Freelancer",
                totLove: "88",
              ),
              PhotoCard(
                backgroundPhoto: "assets/images/photo1.png",
                urlAvatar: "assets/images/person1.png",
                fullName: "Michael Arnold",
                profession: "Web Developer",
                totLove: "102",
              )
            ],
          ),
        ),
      ),
    );
  }
}
