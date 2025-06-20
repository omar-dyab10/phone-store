import 'package:flutter/material.dart';

class Headphone extends StatefulWidget {
  const Headphone({super.key});

  @override
  State<Headphone> createState() => _HeadphoneState();
}

class _HeadphoneState extends State<Headphone> {
  String selectedCategory = "headphone";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Headphones and Earphones",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                "assets/images_charges/headphone_logo.png",
              ),
              radius: 30,
            ),
            title: Text(
              "Welcome to the Headphones and Earphones Bank Store",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Find the best headphones and earphones banks here!",
            ),
          ),
          // Search bar ================================================
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedCategory = "headphone";
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      selectedCategory == "headphone"
                          ? Colors.green
                          : Colors.white,
                ),
                child: Text(
                  "Headphone",
                  style: TextStyle(
                    color:
                        selectedCategory == "headphone"
                            ? Colors.white
                            : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedCategory = "earphone";
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      selectedCategory == "earphone"
                          ? Colors.green
                          : Colors.white,
                ),
                child: Text(
                  "Earphone",
                  style: TextStyle(
                    color:
                        selectedCategory == "earphone"
                            ? Colors.white
                            : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child:
                selectedCategory == "headphone"
                    ? _chargersList(context)
                    : _powerBankList(context),
          ),
        ],
      ),
    );
  }
}

// ============================كلاس الشواحنن==========================================================
// ============================كلاس الشواحنن==========================================================
// ============================كلاس الشواحنن==========================================================
// ============================كلاس الشواحنن==========================================================

Widget _chargersList(BuildContext context) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          // ====================================== headphone Card 1 ========================================
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 203, 203, 203),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Headphone 1",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/head_1.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Features: Loud and clear sound",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Purchase successfully"),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text(
                              "\$20",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Add to favorites
                            },
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(height: 10),
              // ==================================== Charger Card 2  ==========================================
              // ==================================== Charger Card 2  ==========================================
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 203, 203, 203),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Headphone 2",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/head_5.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Features: Loud and clear sound",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Purchase successfully"),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text(
                              "\$15",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Add to favorites
                            },
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // ======================================== Row 2222 =====================================
          // ======================================== Row 2222 =====================================
          // ======================================== Row 2222 =====================================
          // ======================================== Row 2222 =====================================
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),

                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 203, 203, 203),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Headphone 3",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/head_3.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Features: Loud and clear sound",

                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Purchase successfully"),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text(
                              "\$20",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Add to favorites
                            },
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(height: 10),
              // === Charger Card 2  ===
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 203, 203, 203),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Headphone 4",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/head_4.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Features: Loud and clear sound",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Purchase successfully"),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text(
                              "\$10",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Add to favorites
                            },
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // ================================== Row 3333 =========================================
          // ================================== Row 3333 =========================================
          // ================================== Row 3333 =========================================
          // ================================== Row 3333 =========================================
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),

                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 203, 203, 203),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Headphone 5",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/head_2.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Features: Loud and clear sound",

                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Purchase successfully"),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text(
                              "\$8",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Add to favorites
                            },
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(height: 10),
              // === Charger Card 2  ===
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 203, 203, 203),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Headphone 6",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/head_1.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Features: Loud and clear sound",

                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Purchase successfully"),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text(
                              "\$10",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Add to favorites
                            },
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // ======================================== Row 4 =======================================================
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),

                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 203, 203, 203),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Headphone 7",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/head_4.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Features: Loud and clear sound",

                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Purchase successfully"),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text(
                              "\$13",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Add to favorites
                            },
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(height: 10),
              // === Charger Card 2  ===
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 203, 203, 203),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Headphone 8",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/head_5.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Features: Loud and clear sound",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Purchase successfully"),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text(
                              "\$10",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Add to favorites
                            },
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

// ===========================================كلاس الباور بانك=====================================================
// ===========================================كلاس الباور بانك=====================================================
// ===========================================كلاس الباور بانك=====================================================
// ===========================================كلاس الباور بانك=====================================================
Widget _powerBankList(BuildContext context) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          // === Charger Card 1 ===
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 203, 203, 203),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Earphone 1",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/ear_1.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Features: Loud and clear sound",

                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Purchase successfully"),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text(
                              "\$20",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Add to favorites
                            },
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(height: 10),
              // ======================================== Charger Card 2  =====================================================
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 203, 203, 203),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Earphone 2",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/ear_2.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Features: Loud and clear sound",

                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Purchase successfully"),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text(
                              "\$10",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Add to favorites
                            },
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 203, 203, 203),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Earphone 3",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/ear_3.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Features: Loud and clear sound",

                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Purchase successfully"),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text(
                              "\$20",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Add to favorites
                            },
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(height: 10),
              // ======================================== Charger Card 2  =====================================================
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 203, 203, 203),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Earphone 4",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/ear_5.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Features: Loud and clear sound",

                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Purchase successfully"),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text(
                              "\$10",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Add to favorites
                            },
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 203, 203, 203),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Earphone 5",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/ear_4.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Features: Loud and clear sound",

                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Purchase successfully"),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text(
                              "\$20",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Add to favorites
                            },
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(height: 10),
              // ======================================== Charger Card 2  =====================================================
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 203, 203, 203),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Earphone 6",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/ear_6.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Features: Loud and clear sound",

                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Purchase successfully"),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text(
                              "\$10",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Add to favorites
                            },
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 203, 203, 203),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Earphone 7",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/ear_1.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Features: Loud and clear sound",

                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Purchase successfully"),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text(
                              "\$20",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Add to favorites
                            },
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(height: 10),
              // ======================================== Charger Card 2  =====================================================
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 203, 203, 203),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Earphone 8",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/ear_2.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Features: Loud and clear sound",

                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Purchase successfully"),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text(
                              "\$10",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Add to favorites
                            },
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
