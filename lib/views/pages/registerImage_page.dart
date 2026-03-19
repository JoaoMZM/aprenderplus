import 'package:aprenderplus/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class RegisterimagePage extends StatefulWidget {
  const RegisterimagePage({super.key});

  @override
  State<RegisterimagePage> createState() => _RegisterimagePageState();
}

class _RegisterimagePageState extends State<RegisterimagePage> {
  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          'Cadastro',
          style: TextStyle(color: AppColors().secTitles, fontSize: 32),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/logo.png'),
                      Text(
                        'Cadastro',
                        style: TextStyle(
                          color: AppColors().texts,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.camera_alt_outlined,
                          size: 50
                        ),
                        onPressed: () {
                          ImagePicker().pickImage(source: ImageSource.camera);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Center(
                  child: ClipOval(
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/audio.png'),
                      Text(
                        'Grave um áudio de sua apresentação',
                        style: TextStyle(
                          color: AppColors().texts,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: SizedBox(
                    width: largura * 0.8,
                    height: 50,
                    child: TextButton(
                      onPressed: () {},

                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          
                        ),
                      ),
                      child: Text(
                        'Concluir Cadastro',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
