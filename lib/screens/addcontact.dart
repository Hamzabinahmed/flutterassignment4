import 'package:flutter/material.dart';


// class FormData {
//   String name;
//   String surname;
//   String phonenumber;

//   FormData(
//       {required this.name, required this.surname, required this.phonenumber});
// }

class AddContact extends StatefulWidget {
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  // final TextEditingController _nameController = TextEditingController();
  // final TextEditingController _surnameController = TextEditingController();
  // final TextEditingController _phonenumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.grey.shade100,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text("Add"),
        actions: [
          IconButton(
            onPressed: () {
              
              // FormData formData = FormData(
              //   name: _nameController.text,
              //   surname: _surnameController.text,
              //   phonenumber: _phonenumberController.text,
              // );
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => FirstScreen(formData: formData),
              //   ),
              // );
            },
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 30),
        height: 300,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Name"),
              TextField(
                // controller: _nameController,
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  fillColor: Colors.grey.shade100,
                  filled: true,
                ),
              ),
              const Text("Surname"),
              TextField(
                // controller: _surnameController,
                decoration: InputDecoration(
                  hintText: "Enter surname",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  fillColor: Colors.grey.shade100,
                  filled: true,
                ),
              ),
              const Text("Phone Number"),
              TextField(
                // controller: _phonenumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "+998 - - -   - - -    - -",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  fillColor: Colors.grey.shade100,
                  filled: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
