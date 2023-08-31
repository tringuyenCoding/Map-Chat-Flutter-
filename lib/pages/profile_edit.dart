import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfileEditing extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ProfileEditingState();

}

class _ProfileEditingState extends State<ProfileEditing>{


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    var padding = MediaQuery.of(context).padding;
    var safeHeight = height - padding.top - padding.bottom;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [Colors.lightBlueAccent, Colors.pinkAccent],
        )
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),

        body: Stack(
          children: [

            Column(
              children: [
                Container(
                  height: safeHeight * .3,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(230),
                      bottomLeft: Radius.circular(230)
                    )
                    ),
                  child: Column(
                    children: [
                      SizedBox(height: 60,),
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: height - safeHeight * 0.3,
                  width: width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.red, Colors.blueAccent],
                    ),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(230),
                          topLeft: Radius.circular(230)
                      )
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 200,),
                      ItemProfile('Name','Database that de',Icons.person),
                      SizedBox(height: 20,),
                      ItemProfile('Phone','000000000', Icons.phone),
                      SizedBox(height: 20,),
                      ItemProfile('Gmail', 'abcd@gmail.com', Icons.mail),
                      SizedBox(height: 20,),
                      ItemProfile('Address','Nguyen Van Cu, HCM', Icons.map),
                    ],
                    ),
                ),
              ],
            ),
            Positioned(
              top: safeHeight*0.3 -105,
              left: width/2 -105,
              child: CircleAvatar(
                radius: 100+5,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('lib/images/image_profile.jpg'),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }

  ItemProfile(String title,String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,5),
            color: Colors.deepOrange.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 10,
          )
        ]
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.settings, color: Colors.purple,),
        onTap: (){print('tap');},
      ),
    );
  }
}