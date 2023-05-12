import 'package:flutter/material.dart';
import 'package:flutterassignment4/screens/addcontact.dart';


class FloatingButton extends StatefulWidget {
  const FloatingButton({super.key});

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {

  return Scaffold(body: Container(
    color: Colors.white,
    height: 100,
    width: double.infinity,
    child: Row(
      children: [
        Expanded(
          child: TextField(
            focusNode: FocusNode(),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(left: 20, top: 10),
              hintText: "Contact",
              hintStyle: const TextStyle(fontSize: 20, color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ),
          ),
        ),
        PopupMenuButton(
          itemBuilder: (context) => [
            PopupMenuItem(
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                onPressed: () {},
                child: const Text("sort by"),
              ),
            ),
            PopupMenuItem(
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                onPressed: () {},
                child: const Text("Delete all"),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
    floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddContact(),
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
  );
  }
}
