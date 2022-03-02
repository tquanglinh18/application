import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.black12,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: screenSize.width,
              height: screenSize.height / 15,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://3.bp.blogspot.com/-8mNBHPVwP_U/Wk9O0jrNVSI/AAAAAAAAAZs/A45all5dRAMkKIHbIXRg0mbYIY79rZcTQCLcBGAs/s1600/gao-tay.jpg'),
                    ),
                  ),
                  IconButton(
                      onPressed: onShoppingCartClicked,
                      icon: const Icon(Icons.shopping_cart)),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height / 13,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text(
                      'Fashion Shop',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text(
                      'Get popular fashion from home',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: 'Search the clothes you needs',
                    border: InputBorder.none),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Categories',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'See All',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screenSize.height / 6,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: screenSize.width / 4,
                          margin: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.shopping_bag_outlined,
                                size: 50,
                              ),
                              Text(
                                'Tshirt',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Popular Fashion',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'See All',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.7,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 180,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Image(
                              image: NetworkImage(
                                  'https://m.media-amazon.com/images/I/61iR9NMcKpL._UL1280_.jpg'),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(8, 8, 8, 4),
                            child: Text(
                              'Tui xanh',
                              style: TextStyle(fontSize: 15, color: Colors.red),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Text(
                              '\$240',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  void onShoppingCartClicked() {}
}
