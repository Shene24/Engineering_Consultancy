import 'package:flutter/material.dart';
import 'package:personal_project/src/screens/materials.dart';
import 'package:personal_project/src/screens/Calculation.dart';
import 'package:personal_project/src/authentication/Login_screen.dart';
import 'package:personal_project/src/screens/HQCal.dart';
import 'package:personal_project/src/screens/sampleOfCompletedProjects.dart';
class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
  
}

class _DashboardState extends State<Dashboard> {
  
  Card dashboardItems(String title, String img, int index){
    return Card(
      elevation: 2,
    margin: const EdgeInsets.only( left: 20, right: 20, top: 30, bottom: 25), 
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(3.0,-1.0 ),
            colors:[ 
              Color.fromARGB(33, 106, 54, 158),
              Color.fromARGB(32, 241, 239, 244),

            ],
          ),
          boxShadow: const[
            BoxShadow(
              
              color: Colors.white70,
               blurRadius: 3,
               offset: Offset(2, 2),

            ),

          ],
        ),
        child: InkWell(
          onTap: () {
            if(index==0){
              //first item
              //navigate to the house details
              Navigator.push(context, MaterialPageRoute(builder: (context) => HouseDetails()));
            }
            
            if(index==2){
              //third item
              //navigate to the sample of completed projects
              Navigator.push(context, MaterialPageRoute(builder: (context) => samples()));
            }
            if(index==3){
              //fourth item
              //navigate to the materials
              Navigator.push(context, MaterialPageRoute(builder: (context) => Materials()));
            }
            
            
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Image.asset(
                  img,
                  height: 90,
                  width: 90,
                ),
              ),
              const SizedBox(
                height: 20
                
              ),
              Center(
                
                child:Text(title, 
                
                style: TextStyle(

                  fontSize: 25,
                  color: Color.fromARGB(255, 91, 29, 102),
                  fontWeight: FontWeight.bold,
                ),)
                ),
            ],
          ),
        ),
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //white color with opacity
      //backgroundColor: Color.fromARGB(255, 199, 197, 197),
      
      
      body: 
      Center(
         
        //a text in the center of the screen
  
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Padding(padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    
                    
                      Text ("Categories",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight:FontWeight.bold, 
                        color: Color.fromARGB(255, 28, 38, 123),
                      ),
                      ),
                    
                  ],
                )
              ],

            ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 1,
                padding: const EdgeInsets.only(left: 20, right: 20,),
                children: [
                  dashboardItems("Calculation","assets/images/building.jpg", 0),
                  dashboardItems("Sample of Projects","assets/images/home1.jpg", 2),
                  dashboardItems("Material's Price", "assets/images/material.jpg", 3),
                ],
              ),

         ),
           
          ],
           
          
        ),
      ),
       
    );
  }
}