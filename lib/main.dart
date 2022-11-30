import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Farmfreshui(),
  ));
}

class Farmfreshui extends StatefulWidget {
  @override
  State<Farmfreshui> createState() => _FarmfreshuiState();
}

class _FarmfreshuiState extends State<Farmfreshui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.houseMedical,
                color: Colors.green,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.green,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.green,
              ),
              label: 'Account')
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            title: Text(
              'Farm freshzone',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            floating: false,
            pinned: true,
            actions: [
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              Icon(Icons.location_on_outlined),
              Padding(padding: EdgeInsets.all(10)),
              Center(
                child: Text(
                  "Kochi",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
            bottom: AppBar(
              backgroundColor: Colors.green,
              title: Container(
                color: Colors.white,
                width: double.infinity,
                height: 40,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'search vegetables,fruits.....',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightGreen),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 35,
                      width: 100,
                      child: Center(
                        child: Text(
                          "vegetables",
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightGreen),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 35,
                      width: 100,
                      child: Center(
                        child: Text(
                          "Exotic",
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightGreen),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 35,
                      width: 100,
                      child: Center(
                        child: Text(
                          "Fruits",
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightGreen),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 35,
                      width: 100,
                      child: Center(
                        child: Text(
                          "Fresh cuts",
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Image.network(
                    "https://food.unl.edu/newsletters/images/fresh-vegetables-basket.png",
                    height: 220,
                    width: 300,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.timer,
                              color: Colors.greenAccent,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("30 min policy"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.greenAccent,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Tracebility"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.work,
                              color: Colors.greenAccent,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Local sourcing"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Shop by Category",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Farmgrid(),
          ]))
        ],
      ),
    );
  }
}

class Farmgrid extends StatelessWidget {
  List<String> images = [
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROvtRXHaAOMuDO_2oW95H17oDFf6zyfJ1fpA&usqp=CAU",
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
    "https://nationaltoday.com/wp-content/uploads/2021/06/National-Herbs-and-Spices-Day-1-640x514.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGnnQcNCeHzbkq9lu8hm_yj4EC9tvk4_5_TA&usqp=CAU",
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
  ];

  List<String> names = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh cut",
    "Nutrition Charged",
    "Packed Flavours"
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(images[index])),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(names[index]),
            ],
          );
        });
  }
}
