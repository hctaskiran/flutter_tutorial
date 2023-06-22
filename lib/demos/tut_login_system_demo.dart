//////////////////////////////////////////////////////////////
///                                                        ///
/// A SIMPLE LOGIN SYSTEM THAT I'D LIKE TO DO IT BY MYSELF ///
///                                                        ///   
//////////////////////////////////////////////////////////////




import 'package:flutter/material.dart';

class TutorialLoginSystem extends StatelessWidget {
  const TutorialLoginSystem({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children:  [
              const SizedBox(height: 50),

              // logo
              Icon(Icons.lock, color: Colors.black, size: 100,),

              const SizedBox(height: 25),
      
              // wlcm
              Text(
                "Добро пожаловать, рад вас видеть снова!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16
                ),
                ),

                const SizedBox(height: 50,),
      
              // nick

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Почта",
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Введите электронную почту",
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.mail, color: Colors.black,),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple)
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // passwd
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Пароль",
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Введите пароль",
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.key, color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple)
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true
                  ),
                ),
              ),
              
      
              // reset passwd?
      
              // sign
      
              // google apple auth
      
              // reg?
            ],
          ),
        ),
      ),
    );
  }
}