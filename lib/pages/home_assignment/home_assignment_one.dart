import 'package:flutter/material.dart';

class HomeAssignmentOne extends StatefulWidget {
  static const String id = '/home_assignment_one';

  const HomeAssignmentOne({Key? key}) : super(key: key);

  @override
  State<HomeAssignmentOne> createState() => _HomeAssignmentOneState();
}

class _HomeAssignmentOneState extends State<HomeAssignmentOne> {
  List imageLink = [
    'assets/images/img.png',
    'assets/images/img_1.png',
    'assets/images/img_2.png',
    'assets/images/img_3.png',
    'assets/images/img_4.png',
    'assets/images/img_5.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Apple Products',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.normal,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            size: 25,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: 30,
            width: 40,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
              ),
              onPressed: () {},
              child: Center(
                child: Text('7'),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 240,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/img_3.png'))),
              child: Container(
                padding: EdgeInsets.only(
                  bottom: 20,
                  left: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.4),
                      Colors.white.withOpacity(0.3),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Life Style sale',
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Shop Now',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.count(

                crossAxisCount: 1,
                children: imageLink.map((e) => _itemsAll(e)).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _itemsAll(String image) {
    return Container(
      padding: const EdgeInsets.only(top: 20, right: 20),
      height: 50,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,vertical: 10
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 40,
          ),
        ],
      ),
    );
  }
}
