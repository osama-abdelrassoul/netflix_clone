import 'package:flutter/material.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: const Text(
        'My Downloads',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.collections_bookmark,
            size: 28,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/profile.jpeg',
            width: 26,
            height: 26,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Smart Downloads",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(
                  width: 3,
                ),
                const Text(
                  "ON",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Column(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2), shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.file_download,
                  size: 80,
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Never Be Without Netflix",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Text(
                "Download shows and movies so you will never be without something to watch even when you are offline",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: size.width * 0.85,
              decoration: const BoxDecoration(color: Colors.white),
              child: const Center(
                child: Text(
                  "See What You Can Download",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
        const Spacer()
      ],
    );
  }
}
