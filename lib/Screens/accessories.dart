import 'package:flutter/material.dart';

class Accessories extends StatefulWidget {
  const Accessories({super.key});

  @override
  State<Accessories> createState() => _AccessoriesState();
}

class _AccessoriesState extends State<Accessories> {
  bool isfavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Accessories",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ],
      ),

      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images_charges/logo.png"),
                  radius: 30,
                ),
                title: Text(
                  "Welcome to the Accessories Store",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Find the best accessories for your watch!"),
              ),
              SizedBox(height: 10),
              ListTile(
                title: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Search",
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        width: 0.5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        width: 0.5,
                      ),
                    ),
                  ),
                ),
                trailing: Icon(Icons.filter_list, color: Colors.black),
              ),
              SizedBox(height: 10),
              // ======================================    سطر عرض الاكسسوارات    =========================================
              // ======================================    سطر عرض الستاندات    =========================================
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "  Stands for watches !",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              // ======================================    سطر عرض الستانداااات    =========================================
              // ======================================    سطر عرض الستانداااات    =========================================
              // ======================================           stand_1            =========================================
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 2),
                            // card !======================================
                            Card(
                              child: Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$5",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/stand_1.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Stand phone for watch !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // ======================================           Stand_2            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$10",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/stand_2.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Stand phone for watch !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_3            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$7",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/stand_3.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Stand phone for watch !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_4            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$15",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/stand_4.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Stand phone for watch !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_4            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$5",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/stand_5.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Stand phone for watch !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_6              =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$10",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/stand_6.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Stand phone for watch !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_7            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$12",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/stand_7.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Stand phone for watch !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2),
                  ],
                ),
              ),
              // ======================================         Cover  السطر الثاني            =========================================
              // ======================================         Cover  السطر الثاني            =========================================
              // ======================================        Cover   السطر الثاني            =========================================
              // ======================================        Cover   السطر الثاني            =========================================
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "  Covers Phones !",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 2),
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$5",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/cover_3.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Cover Iphone 6 Plus!",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_2            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 1),

                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$10",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/cover_2.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Cover Iphone 15 pro max !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_3            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$7",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/cover_1.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Cover Iphone 15 pro max !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_4            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$15",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/cover_7.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Cover S25 Ultra !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_5              =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$5",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/cover_5.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Cover S9 Plus  !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_6              =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$10",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/cover_4.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Cover S21 !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_7            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$12",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/cover_6.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Cover S22 Ultra !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2),
                  ],
                ),
              ),

              // ======================================        Stickers   السطر الثالث            =========================================
              // ======================================       Stickers    السطر الثالث            =========================================
              // ======================================         Stickers  السطر الثالث            =========================================
              // ======================================         Stickers  السطر الثالث            =========================================
              // ======================================         Stickers  السطر الثالث            =========================================
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "  Screens Protectors !",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 2),
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$5",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/protectors_1.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Screens Sticker Iphone 16 !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_2            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$10",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/protectors_5.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Screens Sticker Iphone 12 !",

                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_3            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$7",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/protectors_2.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Screens Sticker Iphone 14 !",

                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_4            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$15",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/protectors_6.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Screens Sticker S24 16!",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_4            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$5",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/protectors_7.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Sticker Screen S24 Ultra !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_6              =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$10",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/protectors_4.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Screens Sticker Iphone 12 !",

                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_7            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$12",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/protectors_3.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Screens Sticker Iphone 16 !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2),
                  ],
                ),
              ),
              // ======================================           السطر الرابع            =========================================
              // ======================================           السطر الرابع            =========================================
              // ======================================           السطر الرابع            =========================================
              // ======================================           السطر الرابع            =========================================
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "  Stickers Cameras !",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 2),
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$5",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/sticker_1.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Sticker Camera S24 Ultra !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_2            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$10",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/sticker_2.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Sticker Camera S25 Ultra !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_3            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$7",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/sticker_5.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Sticker Camera Poco X3 !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_4            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$15",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/sticker_6.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Sticker Camera To phone!",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_4            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$5",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/sticker_7.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Sticker Camera To phone !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_6              =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$10",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/sticker_1.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "sticker camera to S24 !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ======================================           Stand_7            =========================================
                    Card(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              SizedBox(width: 1),
                              Container(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$12",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.yellowAccent,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images_accessories/sticker_2.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Sticker camera to S25 !",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Purchase successfully !",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  isfavorite
                                                      ? "Removed from favorites"
                                                      : "Added to favorites",
                                                ),
                                              ),
                                            );
                                            setState(() {
                                              isfavorite = !isfavorite;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color:
                                                isfavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2),
                  ],
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
