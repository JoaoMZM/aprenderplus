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
        title: Text('Cadastro', style: TextStyle(color: AppColors().secTitles, fontSize: 32,),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: altura * 0.25,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/logo.png'),
                      Text(
                        'Cadastro',
                        style: TextStyle(
                          color: AppColors().texts,
                          fontSize: 20,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.camera_alt_outlined, size: 50),
                        onPressed: () {
                          ImagePicker().pickImage(source: ImageSource.camera);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: altura * 0.35,
                child: Center(
                  child: ClipOval(
                    child: Container(
                      width: largura * 0.6,
                      decoration: BoxDecoration(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: altura * 0.1,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/audio.png'),
                      Text(
                        'Grave um áudio de sua apresentação',
                        style: TextStyle(
                          color: AppColors().texts,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: altura * 0.07,
                child: Center(
                  child: SizedBox(
                    height: double.infinity,
                    width: largura * 0.8,
                    child: TextButton(
                      onPressed: () {},

                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      child: Text('Concluir Cadastro'),
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
