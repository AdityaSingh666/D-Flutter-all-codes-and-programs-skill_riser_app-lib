import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skill_riser_app/Api_Client/ApiClient.dart';


class Browse extends StatefulWidget {
  const Browse({Key? key}) : super(key: key);

  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> { 
  ApiClient _client = ApiClient();
  
  List<dynamic> courses = [];
  @override
  void initState(){
    super.initState();
    _callapi();
  }

  _callapi() async{
    final CoursesList = await _client.getdata();
    setState(() {
      courses = CoursesList;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
              //width: 400,
               Image.network("https://thumbs.dreamstime.com/z/banner-training-learning-concept-keywords-icons-85919519.jpg"),
               SizedBox(
                height: 20,
               ),
            Expanded(child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
            ),
            itemCount: courses.length,
            itemBuilder: (context,index){
            return Card(
              child: Column(
                children: [
                  GestureDetector(onDoubleTap: (){},
                  child: Image.network((courses[index]["courseImage"])),
                  
                  ),
                   Text(courses[index]["title"])
                ],
              ),
            );
            },
          ),)
          ],
          
          ),
          
        
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedIconTheme: IconThemeData(color: Colors.white),
          unselectedIconTheme: IconThemeData(color: Colors.white),
          unselectedLabelStyle: TextStyle(color: Colors.white),
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.star),
          label: ("Featured"),
          ),
         BottomNavigationBarItem(icon: Icon(Icons.search),
          label: ("Search"),
      ),
      BottomNavigationBarItem(icon: Icon(Icons.video_call),
          label: ("My Learning")
      ),
      BottomNavigationBarItem(icon: Icon(Icons.favorite),
          label: ("Wishlist")
      ),
      BottomNavigationBarItem(icon: Icon(Icons.account_circle),
          label: ("Account") 
      )
      ],
      ),
        backgroundColor: Colors.black,
      )
     
    );
  }
}