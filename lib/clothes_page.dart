import 'package:flutter/material.dart';

class ClothesPage extends StatelessWidget {
  ClothesPage({Key? key}) : super(key: key);

  final _clothesSizeList = [
    ClothesSize(size: 'S', isSelected: true),
    ClothesSize(size: 'M', isSelected: false),
    ClothesSize(size: 'L', isSelected: false),
    ClothesSize(size: 'XL', isSelected: false),
  ];
  final _clothesColorList = [
    ClothesColor(color: Colors.red),
    ClothesColor(color: Colors.blue),
    ClothesColor(color: Colors.pink),
    ClothesColor(color: Colors.black),
    ClothesColor(color: Colors.deepOrange),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.pink[100],
          ),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.pink[50],
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                _clothesImageWidget(),
                //mo ta san pham
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                _clothesPropertiesWidget(),
                                const SizedBox(height: 15),
                                //ItemSize
                                _clothesSizeWidget(),
                                //ItemColor
                                _clothesColorWidget(),
                                const SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                        //Price
                        _clothesPriceWidget(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _clothesImageWidget() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                child: const IconButton(
                    onPressed: null, icon: Icon(Icons.arrow_back_ios_outlined)),
              ),
            ),
            Container(
              height: 40,
              width: 40,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: const IconButton(
                onPressed: null,
                icon: Icon(Icons.add_outlined),
                iconSize: 20,
              ),
            )
          ],
        ),
        Center(
          child: Container(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              height: 200,
              width: 200,
              child: const Image(
                  image: NetworkImage(
                      'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/clothes-sale-men-1609866408.jpg?crop=0.489xw:0.978xh;0.511xw,0&resize=640:*'))),
        ),
      ],
    );
  }

  Widget _clothesPropertiesWidget() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.ac_unit_rounded),
            Expanded(
                child: Text(
              'Twill Soft Shirt Long',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
            )),
            Icon(
              Icons.star,
              color: Colors.orangeAccent,
            ),
            Text('4.2',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('(103)')
          ],
        ),
        const SizedBox(height: 15),
        const Text(
          'We\'ve added a subtle improverment to the twill '
          'material to create a poloshed finished product.'
          ' A pleasant looking stand colar.',
          style: TextStyle(fontSize: 17,),
        ),
      ],
    );
  }

  Widget _clothesSizeWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 7,),
        const Text(
          'Item Size',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 7,),
        Row(
          children: [
            SizedBox(
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: _clothesSizeList.length,
                itemBuilder: (context, index) {
                  return ClothesSizeWidget(size: _clothesSizeList[index].size,
                  isSelected: _clothesSizeList[index].isSelected,);
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 7,),
      ],
    );
  }

  Widget _clothesColorWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 7,),
        const Text(
          'Item Color',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 7,),
        Row(
          children: [
            SizedBox(
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: _clothesColorList.length,
                itemBuilder: (context, index) {
                  return ClothesColorWidget(color: _clothesColorList[index].color);
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 7,),
      ],
    );
  }

  Widget _clothesPriceWidget() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text("Qty"),
              IconButton(
                  onPressed: null, icon: Icon(Icons.remove_circle_outlined)),
              Text('1',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              IconButton(
                  onPressed: null, icon: Icon(Icons.add_circle_outlined)),
              Expanded(child: SizedBox()),
              Text('Total '),
              Text(' \$32.59',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
            ],
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
                Text(' Add to chart',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ClothesColorWidget extends StatelessWidget {
  final Color color;
  const ClothesColorWidget({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 30,
      width: 30,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30), color: color),
    );
  }
}

class ClothesSizeWidget extends StatelessWidget {
  final String size;
  final bool isSelected;
  const ClothesSizeWidget({
    Key? key,
    required this.size,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.pink[50],
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Text(
          size,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class ClothesSize {
  final String size;
  final bool isSelected;

  ClothesSize({required this.size, this.isSelected = false});
}

class ClothesColor {
  final Color color;

  ClothesColor({required this.color});
}
