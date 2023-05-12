import 'package:flutter/material.dart';

class Groups extends StatelessWidget {
  const Groups({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Groups",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 150,
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 100.0, top: 10),
                        child: Icon(
                          Icons.circle_outlined,
                          color: Colors.green,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 50),
                      ),
                      Text(
                        "Family",
                        style: TextStyle(
                            color: Colors.green.shade500,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "16 member",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green.shade500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 150,
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 100.0, top: 10),
                        child: Icon(
                          Icons.circle_outlined,
                          color: Colors.red,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 50),
                      ),
                      Text(
                        "Friends",
                        style: TextStyle(
                            color: Colors.red.shade400,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "24 members",
                        style:
                            TextStyle(fontSize: 15, color: Colors.red.shade400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 150,
              width: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.add_box_rounded,
                      color: Colors.blue,
                    ),
                    Text(
                      "New group",
                      style: TextStyle(
                          color: Colors.blue.shade700,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "Favourites",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: CircleAvatar(radius: 50),
                      title: Text("Ms Dhoni"),
                      subtitle: Text("office"),
                      trailing: Icon(Icons.call),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: CircleAvatar(radius: 50),
                      title: Text("Ms Dhoni"),
                      subtitle: Text("office"),
                      trailing: Icon(Icons.call),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: CircleAvatar(radius: 50),
                      title: Text("Ms Dhoni"),
                      subtitle: Text("office"),
                      trailing: Icon(Icons.call),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: CircleAvatar(radius: 50),
                      title: Text("Ms Dhoni"),
                      subtitle: Text("office"),
                      trailing: Icon(Icons.call),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.add_box_rounded,
                  color: Colors.blue,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Add Favourite"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
