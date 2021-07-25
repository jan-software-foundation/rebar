import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart'; 

/*
things to do:

-------interface for servers------
selected and not selected channels
bottom message box for typing messages and send button and attachment button
messages widget with name, profile pictures, timestamps, edit label and selectable text
members list and a userInList widget with name, profile picture, and custom status

-------interface for friends------
show friends in drawer using the same userInList 
in the conversation, show above friends's name and status (show custom status, if exists, along with dot), hide members list, show call button instead


-------bottom navigation bar------
show and hide navbar when drawer is opened/closed
conversations in drawer
friends screen in drawer
settings screen in drawer

------ALL/GENERAL--------
calls
show a divider line to divide messages depending on day
change drawer icons
caching
*/

class channel
{
  //this is an class that has information for channels for other functions to use
  String name = "";
  String icon = ""; //TODO: id maybe can be used to fetch the icon and name
  String id = ""; //id can be used to determine what buttons do show when tapping and holding a channel (edit permissions, notification settings etc). not yet implemented
  channel({String name = "Unnamed Channel", String icon = "none", String id = "0"}) //TODO: add "selected" paramater to highlight selected channel
  {
    this.name = name;
    this.icon = icon;
    this.id = id;
  }
}
class server
{
  String name = "";
  String icon = "";
  String id = "";
  channel({String name = "Unnamed Server", String icon = "none", String id = "0"}) //TODO: highlight selected channel
  {
    this.name = name;
    this.icon = icon;
    this.id = id;
  }
}


void showFriends() //this function shows friends list in the sidebar; this function should also be connected with the goIntoChannel function to go into the conversation
{

}

void goIntoChannel() //channels can also be conversations with friends or groups
{
  
}


class channelWidget extends StatelessWidget { 
  //TODO: add "selected" paramater to highlight selected channel
  String name = "";
  String icon = "";
  //Bool selected = false;
  channelWidget({String name = "Unnamed Channel", String icon = "none"}) 
  {
    this.name = name;
    this.icon = icon;
  } 

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: this.icon == "none" ? Image.asset("./hash-regular-white.png") : Image.network(icon), //if icon is not given, default hash icon is showed, else icon is loaded from url
          ),
          Flexible(
            child: Text(name, style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300)),
          ),
          
          ],
        ),

      onTap: () {
        //display the messages from the channel
      },
    );
  }
}

class serverWidget extends StatelessWidget {
  String name = ""; //name to be shown
  ImageProvider icon = AssetImage("./sv_img1.png");
  ImageProvider banner = AssetImage("./sv_img1.png");
  //Bool selected = false;
  channelWidget({String name = "Unnamed Channel", ImageProvider icon = const AssetImage("./sv_img1.png"), ImageProvider banner = const AssetImage("./sv_img1.png")}) 
  {
    this.name = name;
    this.icon = icon;
    this.banner = banner;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        width: 50,
        height: 50,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: icon,
        )),),
        //title: Image.asset("./sv_img1.png", fit: BoxFit.fill, scale: 10,),
        contentPadding:EdgeInsets.only(left: 8, right: 8),
      );
  }
}

TextStyle darkModeTextStyle = TextStyle(color: Colors.white, fontSize: 16);

void main() {
  //print("test:");
  var canaleTest = List<channel>.empty(growable: true);
  channel canal = channel(name: "test12344", id: "test");
  canaleTest.add(canal);
  //updateChannels();

  runApp(dartvoltApp());
}
class dartvoltApp extends StatefulWidget {
  @override
  _dartvoltAppState createState() => _dartvoltAppState();
}
final ThemeData darkTheme = ThemeData(
  accentColor: HexColor("#FD6671"),
  primaryColor: HexColor("#242424"),
  backgroundColor: HexColor("#191919"),
  secondaryHeaderColor: HexColor("#1E1E1E"),

);

class _dartvoltAppState extends State<dartvoltApp> {
  
  List<channel> testChannels = List<channel>.empty(growable: true);
  List<server> testServers = List<server>.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: darkTheme,
      home: Scaffold(
        backgroundColor: HexColor("#191919"),
        appBar: AppBar(title: Text("Dartvolt test"),),
        drawer: Drawer(
          child: Container( 
            color: HexColor("#1E1E1E"),
              child: Row(children: [ //server list
                  Container( 
                    
                    //color: HexColor("#191919"), eroare aici
                    //this is servers bar
                    child: Expanded(
                        flex: 1,
                        child: Container(color: HexColor("#191919"), child: 
                        ListView(
                          padding: EdgeInsets.zero,

                          children: <Widget>[
                                
                                Padding(
                                  padding: EdgeInsets.only(top: 20), 
                                  child: SafeArea(
                                    child: Column(children: [
                                      
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 10),
                                        child: Icon(Icons.people, color: HexColor("#f6f6f6"), size: 28,),
                                      ),

                                      Divider(
                                        color: HexColor("#595959"),
                                        thickness: 1,
                                        endIndent: 10,
                                        indent: 10,
                                      ),
                                      

                                    ],)
                                     
                                  ),
                                ),
                                

                                //servers list
                                ...(testServers).map((serversDisplaied) {
                                    return serverWidget();
                                }).toList(),
                                /*ListTile(
                                title: Container(
                                  width: 50,
                                  height: 50,
                                        decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage("./sv_img1.png"),
                                  )),),
                                  //title: Image.asset("./sv_img1.png", fit: BoxFit.fill, scale: 10,),
                                  contentPadding:EdgeInsets.only(left: 8, right: 8),
                                ),*/
                               
                          ],

                          ),
                        ),

                    ),
                  ),


                  Expanded(flex: 4, child: ListView( //channels list
                      
                      padding: EdgeInsets.zero,
                      children: <Widget>[
                        DrawerHeader(
                            decoration: BoxDecoration(
                              color: darkTheme.accentColor,
                            ),
                            child: Container ( 
                              padding: EdgeInsets.only(bottom: 10),
                              child: FittedBox( 
                                fit: BoxFit.scaleDown,
                                alignment: AlignmentDirectional.bottomStart,
                                child: Text('server name here', style: TextStyle(fontSize: 20),),
                              ),
                            ),
                          ),
                          

                          ...(testChannels).map((channelsDisplaied) {
                              return channelWidget(name: channelsDisplaied.name);
                          }).toList(),
                          /*channelWidget(name: "Amogus",),
                          channelWidget(name: "general",),
                          channelWidget(name: "test",),
                          channelWidget(name: "channel",),
                          channelWidget(name: "hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh",),*/

                      ],
                    ),

                  ),
                ],
              ),

            ),
          ),

          endDrawer: Drawer(
            child: SafeArea(
              child: Container( 
                color: HexColor("#1E1E1E"),
                child: Column(
                  children: [
                    Text("debug", style: darkModeTextStyle,),
                    
                    ElevatedButton(
                      child: Text("add channels"),
                      onPressed: () {
                        testChannels.add(channel(name: "test"));
                        setState(() {});
                      },
                    ),
                    ElevatedButton(
                      child: Text("add servers"),
                      onPressed: () {
                        testServers.add(server());
                        setState(() {});
                      },
                    )
                  ],
                ),
              ),
            ), 
          ),


        ),
    );
  }
}
