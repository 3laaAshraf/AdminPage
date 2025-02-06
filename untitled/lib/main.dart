import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'ConcertOne1'),
      home: TourDashboard(),
    );
  }
}

class TourDashboard extends StatelessWidget {
  final List<Map<String, String>> tourPlaces = [
    {"id": "1", "place": "Pyramids of Giza"},
    {"id": "2", "place": "Abu Simbel Temples"},
    {"id": "3", "place": "Karnak Temple"},
    {"id": "4", "place": "Valley of the Kings"},
    {"id": "5", "place": "Siwa Oasis"},
    {"id": "6", "place": "Cairo Citadel"},
    {"id": "7", "place": "Alexandria Library"},
    {"id": "8", "place": "Philae Temple"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE), // White Background
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              "Tour",
              style: TextStyle(
                color: Color(0xFFFFC876), // Yellow
                fontSize: 30,
              ),
            ),
            Text(
              " Dashboard",
              style: TextStyle(
                color: Color(0xFF115173), // Blue
                fontSize: 30,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFF222831), // Dark Gray
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          CircleAvatar(
            backgroundImage: NetworkImage("https://via.placeholder.com/150"),
          ),
          SizedBox(width: 16),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF222831),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 222, 214, 236)), // Blue
              child: Row(
                children: [
                  Text(
                    "Jet",
                    style: TextStyle(
                        color: Color(0xff115173),
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Set",
                    style: TextStyle(
                        color: Color(0xffFFC876),
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Go",
                    style: TextStyle(
                        color: Color(0xff222831),
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard, color: Colors.white),
              title: Text("Dashboard", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.map, color: Colors.white),
              title: Text("Tour Places", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text("Utilities", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tour Places",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF115173), // Blue
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFC876), // Yellow
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                  child: Text("Add Tour Place", style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: tourPlaces.length,
                itemBuilder: (context, index) {
                  final place = tourPlaces[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.white,
                    elevation: 4,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFF115173), // Blue
                        child: Text(
                          place["id"]!,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text(
                        place["place"]!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF115173), // Blue
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                            ),
                            child: Text("EDIT"),
                          ),
                          SizedBox(width: 8),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFFC876), // Yellow
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                            ),
                            child: Text("DELETE"),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
