import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage ({super.key}) ;


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      //navbar of app

      appBar: AppBar(
        title: const Text(
          "Practice widget row !",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),
        backgroundColor: Colors.purple[100],
        centerTitle: true,
        actions: const [
          Icon(
            Icons.account_balance,
            color: Colors.blue,
            size: 30
          ),

          SizedBox(width: 50),
        ],
      ),

      //Start with the body

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.purpleAccent,
          borderRadius: BorderRadius.circular(50)
        ),

        //Discover widget Row

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.amber
              ),

              child: const CircleAvatar(
                backgroundColor: Colors.black26,
                radius: 30,
                child: Text("Practice",
                style: TextStyle(
                  color: Colors.white
                ),
                ),
              )
            ),

            const SizedBox(height: 50),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row (
                children: [
                  Stack(
                    children: [ 
                        Container(
                        height: 150,
                        width: 195,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage('lib/images/edouard.jpg'),
                            fit: BoxFit.fill
                          )
                        ),
                      ),

                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 50,
                          width: 100,
                          color: Colors.black54
                        ),
                      )
                    ]
                  ),

                  //The widget Stack, we can supporposed different element with this and he take just the "children" element like argument
                  Stack(
                    children:[
                        Container(
                        height: 150,
                        width: 197,
                        decoration: const BoxDecoration(
                          color: Colors.redAccent,
                          image: DecorationImage(
                            image: AssetImage("lib/images/alphonse.jpeg"),
                            fit: BoxFit.cover
                          )
                        ),
                      ),

                      //The widget "positionned", we can give element position with this!
                      Positioned(
                        bottom: 0,
                        child: Container(
                          height: 50,
                          width: 100,
                          color: Colors.white60,
                        ))
                    ]
                  ),
              
                  Container(
                    height: 150,
                    width: 390,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                        image: NetworkImage("https://cdn1.ozone.ru/s3/multimedia-7/6649522315.jpg"),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                ]),
            ),

            const SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images5.alphacoders.com/840/thumb-1920-840678.jpg"),
                        fit: BoxFit.fill
                    )
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ImageNetwork {
  const ImageNetwork();
}