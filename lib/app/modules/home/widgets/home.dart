import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          // Appbar home
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Username',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 23),
                    ),
                    Icon(Icons.arrow_drop_down_sharp)
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                  ],
                ),
              ],
            ),
          ),
          // Profile info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                // foto profile
                Container(
                  width: 100,
                  height: 100,
                  // color: Colors.amberAccent,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.red, Colors.amber]),
                            borderRadius: BorderRadius.circular(60)),
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            // image: DecorationImage(
                            //     fit: BoxFit.cover,
                            //     image:
                            //         NetworkImage("https://picsum.photos/536/536")),
                            borderRadius: BorderRadius.circular(60),
                            border:
                                Border.all(width: 3.5, color: Colors.white)),
                      )
                    ],
                  ),
                ),
                // info profile
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoProfile(
                      title: "Posts",
                      total: "43",
                    ),
                    InfoProfile(
                      title: "Follower",
                      total: "3.5k",
                    ),
                    InfoProfile(
                      title: "Follow",
                      total: "212",
                    ),
                  ],
                ))
              ],
            ),
          ),
          // Profile
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Username",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: RichText(
                text: TextSpan(
                    text:
                        "adalah widget dalam Flutter yang dirancang khusus untuk digunakan dalam daftar seperti atau. ListTile menyediakan tata letak standar yang optimal untuk menampilkan informasi singkat, seringkali berupa teks atau ikon, dalam daftar",
                    style: TextStyle(color: Colors.black45),
                    children: [
                      TextSpan(
                        text: " #Hashtag\n",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      TextSpan(
                        text: "Link goes here",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ]),
              )),
          SizedBox(
            height: 20,
          ),
          // tombol edit profile
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              onPressed: () {},
              child: Text("Edit Profile"),
            ),
          ),
          // stories
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 16,
                itemBuilder: (context, index) => Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 76,
                            height: 76,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(40)),
                          ),
                          Container(
                            // color: Colors.greenAccent,
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.5,
                                )
                                // image: DecorationImage(
                                //     image: NetworkImage(
                                //         "https://picsum.photo/id/${index + 1}/500/500"))
                                ),
                          ),
                        ],
                      ),
                    ),
                    Text("Story ${index + 1}"),
                  ],
                ),
              ),
            ),
          ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: [
          // CircleAvatar(
          //   radius: 37,
          // ),
          //       CircleAvatar(
          //         radius: 37,
          //       ),
          //       CircleAvatar(
          //         radius: 37,
          //       ),
          //       CircleAvatar(
          //         radius: 37,
          //       ),
          //       CircleAvatar(
          //         radius: 37,
          //       ),
          //       CircleAvatar(
          //         radius: 37,
          //       ),
          //     ],
          //   ),
          // )

          // selection
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    child: Icon(
                      Icons.grid_view_sharp,
                      color: Colors.black,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black, width: 2)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    child: Icon(
                      Icons.person_pin_outlined,
                      color: Colors.black,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black, width: 2)),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Posts
          SizedBox(
            height: 3,
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 2, crossAxisSpacing: 2),
            itemCount: 43,
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/id/${2 + index}/500/500",
            ),
          )
        ],
      ),
    );
  }
}

class InfoProfile extends StatelessWidget {
  const InfoProfile({super.key, required this.title, required this.total});

  final String title;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          total,
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
        Text(title)
      ],
    );
  }
}
