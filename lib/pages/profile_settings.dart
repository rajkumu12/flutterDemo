import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setting UI",
      home: EditProfilePage(),
    );
  }
}

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          /*IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.green,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SettingsPage()));
            },
          ),*/
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 0, top: 20, right: 0),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.only(left: 13, top: 0, right: 13),
                child: Text(
                  "Profile Picture",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),
                ),
              ),

              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.only(left: 13, top: 0, right: 13),
                child: Text(
                  "JPG,PNG,GIF files supports.Max file Size 16 MB",
                  style: TextStyle(fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),

              SizedBox(
                height: 12,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: Theme
                                  .of(context)
                                  .scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/28634312?v=4",
                              ))),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme
                                  .of(context)
                                  .scaffoldBackgroundColor,
                            ),
                            color: Colors.black,
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                  color: Colors.black26
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 13, top: 0, right: 13),
                child: Text(
                  "Profile Banner",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),
                ),
              ),
              SizedBox(
                  height: 12
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12, top: 0, right: 11),
                      width: double.infinity,
                      height: 140,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: Theme
                                  .of(context)
                                  .scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 0,
                                blurRadius: 1,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 2))
                          ],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6xRNqRqrkX2tJgLFMqj4ZjOJbQi9QHsDrNw&usqp=CAU",
                              ))),
                    ),
                    Positioned(
                        bottom: 8,
                        left: 20,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 0,
                              color: Theme
                                  .of(context)
                                  .scaffoldBackgroundColor,
                            ),
                            color: Colors.black,
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                  color: Colors.black26
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 13, top: 0, right: 13),
                    child: Text(
                      "User Bio",
                      style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500,),
                    ),
                  ),
                  Container(

                    padding: EdgeInsets.only(left: 12, top: 0, right: 12),
                    child: GestureDetector(
                      onTap: () {
                        print("I was tapped!");
                      },
                      child: Text(
                        "Add",
                        style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.deepPurple),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Tell us about your yourself",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black26),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                  color: Colors.black26
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.only(left: 13, top: 0, right: 13),
                child: Text(
                  "Private Mode",
                  style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w500,),
                ),
              ),

              SizedBox(
                height: 4,
              ),
              Container(
                padding: EdgeInsets.only(left: 13, top: 0, right: 13,bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 4,
                        child: Text(
                  "This will hide your post and comment history\nFrom Others",
                  style: TextStyle(
                    fontSize: 13, fontWeight: FontWeight.w500,color: Colors.black38),
                ),
                    ),
                    Expanded(
                      flex: 1,
                      child: buildNotificationOptionRow("New for you", false),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Row buildNotificationOptionRow(String title, bool isActive) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            value: isActive,
            onChanged: (bool val) {},
          ))
    ],
  );
}
