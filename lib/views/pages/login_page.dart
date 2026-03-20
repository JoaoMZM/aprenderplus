import 'dart:math';

import 'package:aprenderplus/data/notifiers.dart';
import 'package:aprenderplus/views/pages/home_page.dart';
import 'package:aprenderplus/views/pages/registerImage_page.dart';
import 'package:aprenderplus/views/pages/registerPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final bool isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              if(!isKeyboardOpen)
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png'),
                    Text('Acesse o app', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),

              Flexible(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: width * 0.8,
                      height: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Digite seu email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          suffixIcon: Icon(Icons.email),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.8,
                      height: 60,
                      child: ValueListenableBuilder(
                        valueListenable: obscureNotifier,
                        builder: (context, isObscure, child) {
                          return TextField(
                            obscureText: isObscure,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              hintText: 'Digite sua senha',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  obscureNotifier.value =
                                      !obscureNotifier.value;
                                },
                                icon: Icon(
                                  isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(
                      width: width * 0.8,
                      height: 60,
                      child: FilledButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage();
                              },
                            ),
                          );
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.grey,
                          textStyle: TextStyle(fontWeight: FontWeight.bold),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          foregroundColor: Colors.black,
                        ),
                        child: Text('Logar'),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.8,
                      height: 60,
                      child: FilledButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Registerpage();
                              },
                            ),
                          );
                        },
                        style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          backgroundColor: Colors.grey,
                          textStyle: TextStyle(fontWeight: FontWeight.bold),
                          foregroundColor: Colors.black,
                        ),
                        child: Text('Cadastrar-se'),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Esqueceu sua senha',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'Tutorial de boas vindas',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
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

