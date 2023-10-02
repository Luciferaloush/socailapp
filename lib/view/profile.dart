import 'package:flutter/material.dart';
import 'package:socail/view/home.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> par = ["Photo", "Video", "About", "Favourite"];
  List<String> photo = [
    "https://cdn.pixabay.com/photo/2019/01/12/07/31/mornang-3928116_1280.jpg",
    "https://images.pexels.com/photos/3680219/pexels-photo-3680219.jpeg?cs=srgb&dl=pexels-lukas-rodriguez-3680219.jpg&fm=jpg",
    "https://images.pexels.com/photos/3680219/pexels-photo-3680219.jpeg?cs=srgb&dl=pexels-lukas-rodriguez-3680219.jpg&fm=jpg",
    "https://cdn.pixabay.com/photo/2019/01/12/07/31/mornang-3928116_1280.jpg",
    "https://images.pexels.com/photos/3680219/pexels-photo-3680219.jpeg?cs=srgb&dl=pexels-lukas-rodriguez-3680219.jpg&fm=jpg",
    "https://cdn.pixabay.com/photo/2019/01/12/07/31/mornang-3928116_1280.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        title: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ));
          },
          child: const Icon(Icons.arrow_back_sharp),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Column(
              children: [
                const ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: Icon(Icons.person),
                  ),
                  title: Text(
                    "Ali Habib",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "@ali_habib",
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            "Syria Tartous",
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      children: [
                        Text(
                          "24K",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Fans",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.grey.shade400,
                      width: 2,
                      height: 33,
                    ),
                    const Column(
                      children: [
                        Text(
                          "24K",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Fans",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.grey.shade400,
                      width: 2,
                      height: 33,
                    ),
                    const Column(
                      children: [
                        Text(
                          "24K",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Fans",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.grey.shade400,
                      width: 2,
                      height: 33,
                    ),
                    const Column(
                      children: [
                        Text(
                          "24K",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Fans",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                        ),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.deepPurpleAccent,
                              Colors.purpleAccent
                            ]),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: const Center(
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.deepPurpleAccent,
                            Colors.purpleAccent
                          ]),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: const Center(
                            child: Text(
                              "Message",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
                Container(
                  height: 30,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: par.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(par[index]),
                          );
                        },
                      ),
                    )
                  ],
                ),
                Container(
                  height: 5,
                ),
                MasonryGridView.builder(
                  itemCount: photo.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(photo[index])),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
