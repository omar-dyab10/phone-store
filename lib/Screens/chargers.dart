import 'package:flutter/material.dart';

class Chargers extends StatefulWidget {
  const Chargers({super.key});

  @override
  State<Chargers> createState() => _ChargersState();
}

class _ChargersState extends State<Chargers> {
  String selectedCategory = "charger";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Expanded(
          child: Text(
            "charges and powers",
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
                "assets/images_charges/charger_logo_0.png",
              ),
              radius: 30,
            ),
            title: Text(
              "Welcome to the Charger and Power Bank Store",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Find the best chargers and power banks here!"),
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
                    selectedCategory = "charger";
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      selectedCategory == "charger"
                          ? Colors.green
                          : Colors.white,
                ),
                child: Text(
                  "Chargers",
                  style: TextStyle(
                    color:
                        selectedCategory == "charger"
                            ? Colors.white
                            : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedCategory = 'power bank';
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      selectedCategory == 'power bank'
                          ? Colors.green
                          : Colors.white,
                ),
                child: Text(
                  "power banks",
                  style: TextStyle(
                    color:
                        selectedCategory == 'power bank'
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
                selectedCategory == "charger"
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
                          "Charger 1",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/charger_1.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      // SizedBox(height: 8),
                      Text(
                        "Features: Fast Charging, Compact Design",
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
                              maximumSize: Size(80, 50),
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
                          "Charger 2",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/charger_2.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      // SizedBox(height: 8),
                      Text(
                        "Features: Fast Charging, Compact Design",
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
                              maximumSize: Size(80, 50),
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
                          "Charger 1",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/charger_3.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      // SizedBox(height: 8),
                      Text(
                        "Features: Fast Charging, Compact Design",
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
                              " \$20",
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
                          "Charger 2",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/charger_4.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      // SizedBox(height: 8),
                      Text(
                        "Features: Fast Charging, Compact Design",
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
                              " \$10",
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
                          "Charger 1",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/charger_6.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      // SizedBox(height: 8),
                      Text(
                        "Features: Fast Charging, Compact Design",
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
                              " \$20",
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
                          "Charger 2",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/charger_7.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      // SizedBox(height: 8),
                      Text(
                        "Features: Fast Charging, Compact Design",
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
                              " \$10",
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
                          "Charger 1",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/charger_8.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      // SizedBox(height: 8),
                      Text(
                        "Features: Fast Charging, Compact Design",
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
                              " \$20",
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
                          "Charger 2",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/charger_9.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      // SizedBox(height: 8),
                      Text(
                        "Features: Fast Charging, Compact Design",
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
                              " \$10",
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
                          "Power Bank 1",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/power_1.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      // SizedBox(height: 8),
                      Text(
                        "Features: Fast Charging, Compact Design",
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
                              " \$20",
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
                          "Power Bank 2",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/power_2.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      // SizedBox(height: 8),
                      Text(
                        "Features: Fast Charging, Compact Design",
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
                              " \$10",
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
                          "Power Bank 3",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/power_3.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      // SizedBox(height: 8),
                      Text(
                        "Features: Fast Charging, Compact Design",
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
                              " \$20",
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
                          "Power Bank 4",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/power_4.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      // SizedBox(height: 8),
                      Text(
                        "Features: Fast Charging, Compact Design",
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
                              " \$10",
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
                          "Power Bank 5",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/power_5.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      // SizedBox(height: 8),
                      Text(
                        "Features: Fast Charging, Compact Design",
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
                              " \$20",
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
                          "Power Bank 6",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/power_1.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      // SizedBox(height: 8),
                      Text(
                        "Features: Fast Charging, Compact Design",
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
                              " \$10",
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
                          "Power Bank 7",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/power_2.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      // SizedBox(height: 8),
                      Text(
                        "Features: Fast Charging, Compact Design",
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
                              " \$20",
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
                          "Power Bank 8",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(height: 8),
                      Image.asset(
                        "assets/images_charges/power_6.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      // SizedBox(height: 8),
                      Text(
                        "Features: Fast Charging, Compact Design",
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
                              " \$10",
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
