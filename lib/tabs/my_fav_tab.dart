import 'package:flutter/material.dart';

class MyFavTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            SizedBox(height: 20,),
            Card(
              elevation: 5,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purple.shade100,
                  child: Image.network('https://i.ibb.co/16VHw29/watch.png',height: 100,width: 50,),),
                title: Text("Apple Watch",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                subtitle: Text("Series 6. Red"),
                trailing: Text("\$ 369",style: TextStyle(fontSize: 25,color: Colors.blueAccent),),

              ),



            ),
            Card(
              elevation: 3,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purple.shade100,
                  child: Image.network('https://i.ibb.co/16VHw29/watch.png',height: 100,width: 50,),),
                title: Text("Apple Watch",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                subtitle: Text("Series 6. Red"),
                trailing: Text("\$ 369",style: TextStyle(fontSize: 25,color: Colors.blueAccent),),

              ),



            ),
            Card(
              elevation: 3,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purple.shade100,
                  child: Image.network('https://i.ibb.co/16VHw29/watch.png',height: 100,width: 50,),),
                title: Text("Apple Watch",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                subtitle: Text("Series 6. Red"),
                trailing: Text("\$ 369",style: TextStyle(fontSize: 25,color: Colors.blueAccent),),

              ),



            ),
          ],
        ),
      ),
    );
  }
}
