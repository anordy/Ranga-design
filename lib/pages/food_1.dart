import 'package:flutter/material.dart';
import 'package:ranga_design/card/fruits_card.dart';
import 'package:ranga_design/header/simple_header.dart';
import 'package:ranga_design/modal/fruit_modal.dart';

class Food1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.8),
        appBar: AppBar(
          title: Text('Food Delivery'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Date',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            )
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate([
                SimpleHeader(
                  day: 'Gardenia',
                  padding: 15,
                  text: 'Details',
                )
              ]),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 220,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              offset: Offset(0, 3),
                              spreadRadius: 5,
                              blurRadius: 10)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(80),
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    child: Stack(
                      children: <Widget>[
                        ListTile(
                          title: Text('Eaten'),
                          subtitle: Text('🐋1127Kcal'),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: ListTile(
                            title: Text('Burned'),
                            subtitle: Text('🍕102Kcal'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 110),
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 130, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text('carbs'),
                                  Container(height: 2,width: 40,
                                  color: Colors.lightBlue,),
                                  Text('10g left'),
                                ],
                              ),
                              Column(mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text('protein'),
                                   Container(height: 2.5,width: 40,
                                  color: Colors.yellowAccent,),
                                  Text('30g left'),
                                ],
                              ),
                              Column(mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text('Fat'),
                                   Container(height: 2,width: 40,
                                  color: Colors.orange,),
                                  Text('20g left'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 200, top: 15),
                          child: CircleAvatar(
                            radius: 50,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 40,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 220, top: 50),
                          child: Text('1503'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 220, top: 65),
                          child: Text(
                            'kcal left',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ]),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                SimpleHeader(
                  day: 'Meals Today',
                  padding: 10,
                  text: 'Customize',
                )
              ]),
            ),

            // SliverGrid(delegate: SliverChildBuilderDelegate((BuildContext context, int index){
            //    return FruitsCard(fruits: fruit[index],);
            // },childCount: fruit.length), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),)
            SliverToBoxAdapter(
              child: Container(
                height: 300,
                // color: Colors.green,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return FruitsCard(
                      fruits: fruit[index],
                    );
                  },
                  itemCount: fruit.length,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[

                Icon(Icons.account_balance),
                 Icon(Icons.satellite),
                  Icon(Icons.perm_camera_mic),
                   Icon(Icons.book),
                    Icon(Icons.folder_shared)

              ],
            ),
            shape: CircularNotchedRectangle()
        ),
        floatingActionButton: FloatingActionButton(backgroundColor: Colors.green,
          child: Icon(Icons.add),
          onPressed: () {},),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        );
  }
}
