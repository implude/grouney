import 'package:flutter/material.dart';
import 'package:grouney/main.dart';

PreferredSizeWidget getDefaultAppBar({String title = "Grouney"}) => AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: Text(
          title,
          style: const TextStyle(
              fontSize: 36, fontFamily: "KBIZgo", color: Colors.black),
        ),
        backgroundColor: Palatte.myskyskyblue,
        actions: [
          ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0.0),
                backgroundColor:
                    MaterialStateProperty.all(Palatte.myskyskyblue),
              ),
              onPressed: () {},
              child: const CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 27,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 40,
                    ),
                  )))
        ]);
