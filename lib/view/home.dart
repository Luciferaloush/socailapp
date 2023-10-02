import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> storiesImage = [
    "store/stories.jpg",
    "store/stories.jpg",
    "store/stories.jpg",
    "store/stories.jpg",
    "store/stories.jpg",
    "store/stories.jpg",
    "store/stories.jpg",
    "store/stories.jpg",
  ];

  List post = [
    {
      "dec": "I have just spent 3 amazing days in my home town",
      "photo":
          "https://cdn.pixabay.com/photo/2019/01/12/07/31/mornang-3928116_1280.jpg"
    },
    {
      "dec": "I have just spent 3 amazing days in my home town",
      "photo":
          "https://cdn.pixabay.com/photo/2019/01/12/07/31/mornang-3928116_1280.jpg"
    },
    {
      "dec": "I have just spent 3 amazing days in my home town",
      "photo":
          "https://cdn.pixabay.com/photo/2019/01/12/07/31/mornang-3928116_1280.jpg"
    },
    {
      "dec": "I have just spent 3 amazing days in my home town",
      "photo":
          "https://cdn.pixabay.com/photo/2019/01/12/07/31/mornang-3928116_1280.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          "zutto",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: const Icon(Icons.search)),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: ListView(children: [
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        storiesImage.length,
                        (index) => Container(
                              padding: const EdgeInsets.all(10.0),
                              child: const Column(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.blue,
                                    child: CircleAvatar(
                                      radius: 32,
                                    ),
                                  ),
                                  Text(
                                    "Name",
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.black87),
                                  )
                                ],
                              ),
                            ))),
              ),
              Container(
                height: 50.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150.0,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(child: Icon(Icons.person)),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Write Something here...",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: CircleAvatar(
                                  radius: 18.0,
                                  child: Icon(
                                    Icons.photo,
                                    color: Colors.deepPurpleAccent,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: CircleAvatar(
                                  radius: 18.0,
                                  child: Icon(
                                    Icons.video_collection,
                                    color: Colors.deepPurpleAccent,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                radius: 18.0,
                                child: Icon(
                                  Icons.location_on,
                                  color: Colors.deepPurpleAccent,
                                  size: 20.0,
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 33,
                              width: 75,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                Colors.deepPurpleAccent,
                                Colors.purpleAccent
                              ])),
                              child: const Center(
                                child: Text(
                                  "Share",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 40,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: post.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                      height: 450,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.grey)),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ListTile(
                                  leading: CircleAvatar(
                                    child: Icon(Icons.person),
                                  ),
                                  title: Text(
                                    "Ali Habib",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    "2 hours",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 20.0),
                            child: Row(
                              children: [
                                Text(post[index]["dec"]),
                              ],
                            ),
                          ),
                          Container(
                            height: 250,
                            margin: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
                                image: DecorationImage(
                                    image: NetworkImage(post[index]["photo"]),
                                    fit: BoxFit.cover)),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.favorite_outline,
                                          color: Colors.black87),
                                      Text(
                                        "1.5k",
                                        style:
                                            TextStyle(color: Colors.black87),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.comment,
                                          color: Colors.black87),
                                      Text(
                                        "884",
                                        style:
                                            TextStyle(color: Colors.black87),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.save, color: Colors.black87),
                                      Text(
                                        "884",
                                        style:
                                            TextStyle(color: Colors.black87),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Icon(Icons.send, color: Colors.black87),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ]),
      ),
    );
  }
}
