import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAdsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
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
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 4.0, color: Colors.grey)
                        ]),
                    child: Column(
                      children: [
                        SizedBox(
                            width: 180,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 110, left: 25),
                              child: Text(
                                "Apple Watch",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Series 6. Red",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Center(
                            child: Text(
                              "\$ 369",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -10,
                  left: 35,
                  child: Container(
                    child: Image.network('https://i.ibb.co/16VHw29/watch.png'),
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
    );
  }
}
