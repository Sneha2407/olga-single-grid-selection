import 'package:flutter/material.dart';

class OlgaGrid extends StatefulWidget {
  const OlgaGrid({Key? key}) : super(key: key);

  @override
  State<OlgaGrid> createState() => _OlgaGridState();
}

class _OlgaGridState extends State<OlgaGrid> {
  int selectedItem = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Skills"),
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.red[900],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset('images/icon.png'),
              Text(
                "Select key skills that you have ",
                maxLines: 2,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Flexible(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 70,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                    crossAxisCount: 3,
                  ),
                  itemCount: 40,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          // ontap of each card, set the defined int to the grid view index
                          selectedItem = index;
                        });
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: selectedItem == index
                                ? Colors.amber[300]
                                : Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text("Self Awareness")),
                      ),
                    );
                  })),
          ElevatedButton(
            onPressed: () {},
            child: Text('SUBMIT'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xffDEB988)),
            ),
          )
        ],
      ),
    );
  }
}
