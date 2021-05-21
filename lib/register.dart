import 'package:flutter/material.dart';
import 'package:loginpage/main.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
// ignore: unused_import
import 'package:permission_handler/permission_handler.dart';

class Create extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Create();
  }
}

class _Create extends State<Create> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  String firstName = "";
  String lastName = "";
  String userName = "";
  String password = "";
  String confirm = "";
  // ignore: unused_field
  PickedFile imagefile;
  final imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    TextStyle textStyle =
        // ignore: deprecated_member_use
        Theme.of(context).textTheme.title;
    var _formkey = GlobalKey<FormState>();
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text("Registration"),
          ),
          body: Form(
              // ignore: deprecated_member_use
              autovalidate: true,
              key: _formkey,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  children: <Widget>[
                    imageProfile(),
                    SizedBox(
                      width: 20.0,
                      height: 20.0,
                    ),
                    ListTile(
                      title: TextFormField(
                        controller: firstNameController,
                        style: TextStyle(),
                        decoration: InputDecoration(
                          labelText: "First name",
                          labelStyle: TextStyle(),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          errorStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        // ignore: missing_return
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "enter First name";
                          }
                        },
                        onFieldSubmitted: (String userInput) {
                          setState(() {
                            firstName = userInput;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: ListTile(
                        title: TextFormField(
                          controller: lastNameController,
                          style: TextStyle(),
                          decoration: InputDecoration(
                            labelText: "Last name",
                            labelStyle: TextStyle(),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            errorStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          // ignore: missing_return
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "enter last name";
                            }
                          },
                          onFieldSubmitted: (String userInput) {
                            setState(() {
                              lastName = userInput;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: ListTile(
                        title: TextFormField(
                          controller: userNameController,
                          style: TextStyle(),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "username",
                            labelStyle: TextStyle(),
                            hintText: "abc@gmail.com",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            errorStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          // ignore: missing_return
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please enter an email';
                            }
                            if (!RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value)) {
                              return "Please enter valid email";
                            }
                            return null;
                          },
                          onFieldSubmitted: (String userInput) {
                            setState(() {
                              userName = userInput;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: ListTile(
                        title: TextFormField(
                          controller: passwordController,
                          style: TextStyle(),
                          decoration: InputDecoration(
                            labelText: "password",
                            labelStyle: TextStyle(),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            errorStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          // ignore: missing_return
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "enter password";
                            }
                            if (!RegExp(
                                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                .hasMatch(value)) {
                              return "Atleast one capital letter ,small letter\n, digit,special character";
                            }
                            return null;
                          },
                          onFieldSubmitted: (String userInput) {
                            setState(() {
                              password = userInput;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25.0),
                      child: ListTile(
                        title: TextFormField(
                          controller: confirmController,
                          obscureText: true,
                          style: TextStyle(),
                          decoration: InputDecoration(
                            labelText: "confirm password",
                            labelStyle: TextStyle(),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            errorStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          // ignore: missing_return
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "Please re-enter password ";
                            }
                            if (passwordController.text !=
                                confirmController.text) {
                              return "Password do not match";
                            }
                            return null;
                          },
                          onFieldSubmitted: (String userInput) {
                            setState(() {
                              confirm = userInput;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            // ignore: deprecated_member_use
                            child: FractionallySizedBox(
                              widthFactor: 0.3,
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                  color: Theme.of(context).primaryColorDark,
                                  textColor:
                                      Theme.of(context).primaryColorLight,
                                  child: Text("Next", textScaleFactor: 1.5),
                                  onPressed: () {
                                    final isvalid =
                                        _formkey.currentState.validate();
                                    if (isvalid) {
                                      ShowAlertDialog(context);
                                    }
                                  }),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ))),
    );
  }

  // ignore: non_constant_identifier_names
  void ShowAlertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Alert Dialog"),
      content: Text("Would you like continue"),
      actions: <Widget>[
        // ignore: deprecated_member_use
        FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Text("Continue"))
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  imageProfile() {
    return Center(
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            radius: 60.0,
            backgroundImage: imagefile == null
                ? AssetImage("images/register.jpg")
                : FileImage(File(imagefile.path)),
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context, builder: ((builder) => bottomSheet()));
              },
              child: Icon(
                Icons.camera_alt,
                color: Colors.teal[400],
                size: 28.0,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
        height: 125,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          children: <Widget>[
            Text("Choose Profile Photo",
                style: TextStyle(color: Colors.blueAccent, fontSize: 20.0)),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // ignore: deprecated_member_use
                      FlatButton.icon(
                          onPressed: () {
                            getimage(ImageSource.camera);
                          },
                          icon: Icon(Icons.camera),
                          label: Text("Camera")),

                      SizedBox(
                        width: 20.0,
                      ),
                      // ignore: deprecated_member_use
                      FlatButton.icon(
                          onPressed: () {
                           getimage(ImageSource.gallery);
                          },
                          icon: Icon(Icons.image),
                          label: Text("Gallery"))
                    ]))
          ],
        ));
  }

  Future getimage(ImageSource source) async {
    // ignore: non_constant_identifier_names
    final PickedFile = await imagePicker.getImage(source: source);
    setState(() {
        imagefile = PickedFile;
    });
  }
}
