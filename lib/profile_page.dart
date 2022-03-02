import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final _menuList = [
    MenuEntity(title: "Personal Data1", content: "Lorem ipsum dolor sit1"),
    MenuEntity(content: "Lorem ipsum dolor sit2", title: "Personal Data1"),
    MenuEntity(title: "Personal Data3", content: "Lorem ipsum dolor sit3"),
    MenuEntity(title: "Personal Data4", content: "Lorem ipsum dolor sit4"),
    MenuEntity(title: "Personal Data5", content: "Lorem ipsum dolor sit5"),
    MenuEntity(title: "Personal Data6", content: "Lorem ipsum dolor sit6"),
    MenuEntity(title: "Personal Data7", content: "Lorem ipsum dolor sit7"),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.blueGrey,
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              _appBarWidget(),
              const SizedBox(height: 30),
              _userInfoWidget(),
              const SizedBox(height: 30),
              _cardWidget(),
              const SizedBox(height: 40),
              Expanded(child: _menuWidget()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _appBarWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Row(
        children: const [
          Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              "Account",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Icon(
            Icons.ac_unit,
            color: Colors.white,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _userInfoWidget() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          "John Doe",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 6),
        const Text(
          "example@gmail.com",
          style: TextStyle(fontSize: 12, color: Colors.white),
        ),
      ],
    );
  }

  Widget _cardWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Gold Member",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Upgrade to get extra discount and special offer as premium member",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _menuWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: ListView.separated(
        padding: const EdgeInsets.only(top: 10, bottom: 26),
        physics: const ClampingScrollPhysics(),
        itemCount: _menuList.length,
        itemBuilder: (context, index) {
          return MenuItemWidget(
            title: _menuList[index].title,
            content: _menuList[index].content,
            itemPressed: () => itemPressed(),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 1,
            color: Colors.grey,
          );
        },
      ),
    );
  }

  void itemPressed() {}
}

class MenuItemWidget extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback? itemPressed;

  const MenuItemWidget({
    Key? key,
    required this.title,
    required this.content,
    this.itemPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        itemPressed?.call();
      },
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigoAccent,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    content,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuEntity {
  final String title;
  final String content;

  MenuEntity({required this.title, required this.content});
}
