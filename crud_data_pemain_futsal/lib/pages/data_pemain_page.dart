import 'package:crud_data_pemain_futsal/models/pemain.dart';
import 'package:crud_data_pemain_futsal/widgets/theme.dart';
import 'package:flutter/material.dart';

class DataPemainPage extends StatefulWidget {
  DataPemainPage({Key? key}) : super(key: key);

  @override
  State<DataPemainPage> createState() => _DataPemainPageState();
}

class _DataPemainPageState extends State<DataPemainPage> {
  TextEditingController playerName = new TextEditingController();
  TextEditingController clubName = new TextEditingController();
  TextEditingController positionPlayer = new TextEditingController();
  TextEditingController backNumber = new TextEditingController();
  TextEditingController agePlayer = new TextEditingController();

  final List<Pemain> _currentPemain = pemains;

  void _showDialogAdd(List<Pemain> pemains) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 0,
            // backgroundColor: Colors.transparent,
            child: SingleChildScrollView(
              child: Container(
                height: 460,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        "Add Players",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      TextField(
                        controller: playerName,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Player Name"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: clubName,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Club Name"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: positionPlayer,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Position Player"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: backNumber,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Back Number"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: agePlayer,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Age Player"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: greyColor),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: purpleColor),
                            onPressed: () {
                              _currentPemain.add(
                                Pemain(
                                    id: pemains.length + 1,
                                    name: playerName.text,
                                    position: positionPlayer.text,
                                    backNumber: backNumber.text,
                                    age: int.parse(agePlayer.text),
                                    tim: clubName.text),
                              );

                              playerName.text = "";
                              positionPlayer.text = "";
                              backNumber.text = "";
                              agePlayer.text = "";
                              clubName.text = "";

                              setState(() {});
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              "Save",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  void _showDialogEdit(int index, List<Pemain> pemains) {
    playerName.text = pemains[index].name;
    positionPlayer.text = pemains[index].position;
    backNumber.text = pemains[index].backNumber;
    agePlayer.text = pemains[index].age.toString();
    clubName.text = pemains[index].tim;
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 0,
            // backgroundColor: Colors.transparent,
            child: SingleChildScrollView(
              child: Container(
                height: 460,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        "Update Players",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      TextField(
                        controller: playerName,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Player Name"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: clubName,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Club Name"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: positionPlayer,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Position Player"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: backNumber,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Back Number"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: agePlayer,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Age Player"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: greyColor),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: purpleColor),
                            onPressed: () {
                              // _currentPemain.add(
                              //   Pemain(
                              //       id: pemains.length + 1,
                              //       name: playerName.text,
                              //       position: positionPlayer.text,
                              //       backNumber: backNumber.text,
                              //       age: int.parse(agePlayer.text),
                              //       tim: clubName.text),
                              // );
                              pemains[index].name = playerName.text;
                              pemains[index].position = positionPlayer.text;
                              pemains[index].backNumber = backNumber.text;
                              pemains[index].age = int.parse(agePlayer.text);
                              pemains[index].tim = clubName.text;

                              playerName.text = "";
                              positionPlayer.text = "";
                              backNumber.text = "";
                              agePlayer.text = "";
                              clubName.text = "";

                              setState(() {});
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              "Update",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialogAdd(_currentPemain);
        },
        child: Icon(
          Icons.add,
          color: white,
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: _currentPemain.length,
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.all(6),
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            height: 80,
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: greyColor,
                    blurRadius: 4.0,
                    spreadRadius: 1.0,
                    offset: const Offset(0.0, 2.0),
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name : ${_currentPemain[index].name}",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: blackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Tim : ${_currentPemain[index].tim}",
                      style: TextStyle(
                        color: blackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Position : ${_currentPemain[index].position}",
                      style: TextStyle(fontSize: 12, color: blackColor),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _showDialogEdit(index, _currentPemain);
                      },
                      child: Icon(
                        Icons.update,
                        color: purpleColor,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          deletePlayer(_currentPemain[index].name);
                        });
                      },
                      child: Icon(
                        Icons.delete,
                        color: redColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void deletePlayer(String name) {
    _currentPemain.removeWhere((element) => element.name == name);
  }
}
