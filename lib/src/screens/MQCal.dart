import 'package:flutter/material.dart';

int area = 0;
int floor = 0;
int pwindows = 0;
int pdoors = 0;
int pwalls = 0;
int pcelling = 0;
int pfloor = 0;
var total = 0;

class MQCal extends StatefulWidget {
  MQCal({Key? key}) : super(key: key);

  @override
  State<MQCal> createState() => _MQCalState();
}

class _MQCalState extends State<MQCal> {
  @override
  Widget build(BuildContext context) {
     var dropdownValue;
    return Scaffold( 
      //backgroundColor: Color.fromARGB(255, 199, 197, 197),
      appBar: AppBar(
        centerTitle: true,
            title: Text(
              'Calculation for Medium Quality',
              style:TextStyle(
                color: Color.fromARGB(255, 28, 38, 123),
                fontWeight: FontWeight.bold,
              ) ,

            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              color: Color.fromARGB(255, 28, 38, 123),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
             padding: EdgeInsets.all(10),
             child: AspectRatio(
              aspectRatio: 4/3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/images/cal1.jpg")
                  )
                  ),
                  ),
            Container(
              padding: EdgeInsets.all(10),
              child: DropdownButton(
                hint: Text('Select Area of the house'),
                value: dropdownValue,
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = newValue;
                    area = int.parse(newValue.toString());
                   
                  });
                },
                items: [
                  DropdownMenuItem(
                   
                    value: 100,
                     child: Text('100'),
                  ),
                  DropdownMenuItem(
                    
                    value: 200,
                    child: Text('200'),
                  ),
                  DropdownMenuItem(
                   
                    value: 300,
                     child: Text('300'),
                  ),
                ],
              ),
            ),
          //  Text ("Selected Area is $area"),
            Container(
              height: 200,
              padding: EdgeInsets.all(10),
              child: AspectRatio(
              aspectRatio: 4/3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/images/cal2.jpg")
                  )
                  ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: DropdownButton(
                hint: Text('Select Number of Floors'),
                value: dropdownValue,
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = newValue;
                    floor = int.parse(newValue.toString());
                  });
                },
                items: [
                  DropdownMenuItem(
                    child: Text('1'),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text('2'),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text('3'),
                    value: 3,
                  ),
                ],
              ),
            ),
              Container(
               height: 200,
             padding: EdgeInsets.all(10),
             child: AspectRatio(
              aspectRatio: 4/3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/images/cal3.jpg")
                  )
                  ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: DropdownButton(
                hint: Text('Select type of windows'),
                value: dropdownValue,
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = newValue;
                    pwindows = int.parse(newValue.toString());
                  });
                },
                items: [
                  DropdownMenuItem(
                    child: Text('Aluminium Windows'),
                    value: 140,
                  ),
                  DropdownMenuItem(
                    child: Text('Wooden Windows'),
                    value: 70,
                  ),
                  DropdownMenuItem(
                    child: Text('Steel Windows'),
                    value: 100,
                  ),
                  DropdownMenuItem(
                    child: Text('Vinyl Windows'),
                    value: 230,
                  ),
                ],
              ),
            ),
              Container(
             height: 200,
             padding: EdgeInsets.all(10),
             child: AspectRatio(
              aspectRatio: 4/3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/images/cal4.jpg")
                  )
                  ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: DropdownButton(
                hint: Text('Select type of doors'),
                value: dropdownValue,
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = newValue;
                    pdoors = int.parse(newValue.toString());
                  });
                },
                items: [
                  DropdownMenuItem(
                    child: Text('PVC Door'),
                    value: 200,
                  ),
                  DropdownMenuItem(
                    child: Text('Aluminium Door'),
                    value: 300,
                  ),
                  DropdownMenuItem(
                    child: Text('Steel Door'),
                    value: 150,
                  ),
                  DropdownMenuItem(
                    child: Text('Wooden Door'),
                    value: 180,
                  ),
                ],
              ),
            ),
              Container(
             height: 200,
             padding: EdgeInsets.all(10),
              child: AspectRatio(
              aspectRatio: 4/3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/images/cal5.jpg")
                  )
                  ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: DropdownButton(
                hint: Text('Select type of walls'),
                value: dropdownValue,
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = newValue;
                    pwalls = int.parse(newValue.toString());
                  });
                },
                items: [
                  DropdownMenuItem(
                    child: Text('Wood Paneling'),
                    value: 100,
                  ),
                  DropdownMenuItem(
                    child: Text('Brick Wall'),
                    value: 200,
                  ),
                  DropdownMenuItem(
                    child: Text('Stone Wall'),
                    value: 300,
                  ),
                  DropdownMenuItem(
                    child: Text('Ceramic Tiles Wall'),
                    value: 350,
                  ),
                ],
              ),
            ),
              Container(
             height: 200,
             padding: EdgeInsets.all(10),
             child: AspectRatio(
              aspectRatio: 4/3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/images/cal6.jpg")
                  )
                  ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: DropdownButton(
                hint: Text('Select type of ceiling'),
                value: dropdownValue,
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = newValue;
                    pcelling = int.parse(newValue.toString());
                  });
                },
                items: [
                  DropdownMenuItem(
                    child: Text('Gypsum Board'),
                    value: 110,
                  ),
                  DropdownMenuItem(
                    child: Text('Metal Ceiling'),
                    value: 117,
                  ),
                  DropdownMenuItem(
                    child: Text(' wooden board'),
                    value: 115,
                  ),
                ],
              ),
            ),
              Container(
               height: 200,
             padding: EdgeInsets.all(10),
               child: AspectRatio(
              aspectRatio: 4/3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/images/cal7.jpg")
                  )
                  ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: DropdownButton(
                hint: Text('Select type of floor'),
                value: dropdownValue,
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = newValue;
                    pfloor = int.parse(newValue.toString());
                  });
                },
                items: [
                  DropdownMenuItem(
                    child: Text('Laminated Wooden Flooring'),
                    value: 100,
                  ),
                  DropdownMenuItem(
                    child: Text('Ceramic Tiles Flooring'),
                    value: 120,
                  ),
                  DropdownMenuItem(
                    child: Text('Stone Flooring'),
                    value: 130,
                  ),
                ],
              ),
            ),
      
            //add price of windows, doors, walls, ceiling, floor and multiply by area and number of floors
            //ex: 20+20+30+40+50*100*1 = 10000
      
            //calculate button
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      var add = pwindows + pdoors + pwalls + pcelling + pfloor;
                      var fa = area * floor;
                      total = add * fa;
                      setState(() {});
                    },
                    child: Text('Calculate', 
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    ),
                     style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 28, 38, 123),
                  ),
                ),
                ),
                  Container(
                margin: EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Text('Total Price is : $total', 
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 28, 38, 123),
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
}
