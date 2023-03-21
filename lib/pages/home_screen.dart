import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  List<String> catagories = [
    'Food',
    'Electronics',
    'Groceris',
    'Dress',
    'Tech'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Subrato.',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Text(
                "Let's get somthing.",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 110,
                      width: 240,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '40% off During\nCovid 19',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.network(
                                'https://freepngimg.com/thumb/vegetable/24419-9-vegetable-transparent-background.png',
                                height: 50,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 110,
                      width: 240,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '40% off During\nCovid 19',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.network(
                                'https://freepngimg.com/thumb/vegetable/24419-9-vegetable-transparent-background.png',
                                height: 50,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Catagories.",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 15,
                    ),
                    child: Text(
                      "View All",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: catagories.length,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 4),
                              child: Center(child: Text(catagories[index])),
                            )),
                      );
                    }),
              ),
              
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SingleChildScrollView(
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 250,
                    ),
                    itemCount: 6,
                    itemBuilder: (_, index) {
                      return Expanded(
                          child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, right: 15),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4, color: Colors.grey)
                                  ]),
                              child: Column(
                                children: [
                                  SizedBox(
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 110, left: 25),
                                        child: Text(
                                          "Apple Watch",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Series 6. red",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10),
                                    child: Center(
                                        child: Text(
                                      "\$ 369",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.blue),
                                    )),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: -2,
                            left: 30,
                            child: Container(
                              child: Image.network(
                                  'https://i.ibb.co/16VHw29/watch.png'),
                              height: 125,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.purple.shade100,
                                boxShadow: [
                                  BoxShadow(blurRadius: 2, color: Colors.grey),
                                ],
                              ),
                            ),
                          )
                        ],
                      ));
                    },
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
