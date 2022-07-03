import 'package:flutter/material.dart';
import 'package:netflix_clone/json/home_json.dart';
import 'package:netflix_clone/pages/video_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: size.height - 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 500,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          image: DecorationImage(
                              image: AssetImage('assets/images/banner.webp'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        height: 500,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.95),
                              Colors.black.withOpacity(0),
                            ],
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                      Container(
                        height: 500,
                        width: size.width,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage(
                                  'assets/images/title_img.webp',
                                ),
                                width: 300,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Excting - Sci-Fi Drama -Sci-Fi Adventury',
                                style: TextStyle(
                                    fontSize: 11, color: Colors.white),
                              )
                            ]),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: const [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'My List',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ]),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VideoDetailPage(
                                    "assets/videos/video_1.mp4"),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 13, left: 8, top: 2, bottom: 2),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Play',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(children: const [
                        Icon(
                          Icons.info_outline,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Info',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ])
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          'My List',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: List.generate(mylist.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => VideoDetailPage(
                                            "assets/videos/video_1.mp4"),
                                      ));
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  width: 110,
                                  height: 160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(mylist[index]['img']),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          'Tranding Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children:
                                List.generate(trendingList.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => VideoDetailPage(
                                            "assets/videos/video_1.mp4"),
                                      ));
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  width: 110,
                                  height: 160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              trendingList[index]['img']),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          'Netflix Originals',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children:
                                List.generate(originalList.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => VideoDetailPage(
                                            "assets/videos/video_1.mp4"),
                                      ));
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  width: 165,
                                  height: 300,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              originalList[index]['img']),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          'Anime',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: List.generate(animeList.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => VideoDetailPage(
                                            "assets/videos/video_2.mp4"),
                                      ));
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  width: 110,
                                  height: 160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              animeList[index]['img']),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Image.asset(
                            "assets/images/logo.ico",
                            width: 35,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.collections_bookmark,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Image.asset(
                                'assets/images/profile.jpeg',
                                width: 26,
                                height: 26,
                                fit: BoxFit.cover,
                              ),
                              onPressed: () {},
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'TV Show',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'Moves',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: const [
                            Text(
                              'Categories',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
