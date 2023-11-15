import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:kelompok1/models/user_model.dart';
import 'package:kelompok1/screens/welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<UserModel> users = [
    UserModel(
      username: 'qobillah',
      fullName: 'Mohammad Qabillah Ferindra Hermawan',
      imageUrl: 'assets/images/qobillah.jpg',
      birthDay: 'Sumedang, 22 Oktober 2002',
      hobby: 'Bermain Game',
      iconhobby: Icon(Icons.sports_esports),
      address: 'P.B.E B1 No.15 rt 5/ RW 15 kutamandiri tanjungsari sumedang',
    ),
    UserModel(
      username: 'patricia',
      fullName: 'Patricia Werang',
      imageUrl: 'assets/images/patricia.jpg',
      birthDay: 'Larantuka, 29 Juni 2000',
      hobby: 'Menyanyi',
      iconhobby: Icon(Icons.mic),
      address: 'Jl.kebon lega 1',
    ),
    UserModel(
      username: 'maria',
      fullName: 'Maria Delvina Emanuella Mauk',
      imageUrl: 'assets/images/maria.jpg',
      birthDay: 'Atambua, 03 Desember 2003',
      hobby: 'Olahraga',
      iconhobby: Icon(Icons.sports_tennis),
      address: 'Jl. Turangga Timur Dalam 2',
    ),
    UserModel(
      username: 'yushela',
      fullName: 'Yushela Windy Anggraeni',
      imageUrl: 'assets/images/yusela.jpg',
      birthDay: 'Magetan,13 Juni 2002',
      hobby: 'Bersepeda',
      iconhobby: Icon(Icons.pedal_bike_rounded),
      address: 'jl.inoftank Gg panyeusuhan No.40B',
    ),
  ];
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg-image.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: GlassmorphicContainer(
            width: 340,
            height: 480,
            borderRadius: 20,
            linearGradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.05),
                Colors.white.withOpacity(0.01)
              ],
            ),
            border: 2,
            blur: 10,
            borderGradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.4),
                Colors.white.withOpacity(0.1)
              ],
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 28.0, vertical: 46),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 180,
                        child: Text(
                          'Ayo Bergabung Bersama Kami!',
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/logo-sttbandung.png',
                        width: 60,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  GlassmorphicContainer(
                    width: 340,
                    height: 52,
                    borderRadius: 12,
                    linearGradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.05),
                        Colors.white.withOpacity(0.01),
                      ],
                    ),
                    border: 2,
                    blur: 10,
                    borderGradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.4),
                        Colors.white.withOpacity(0.1),
                      ],
                    ),
                    child: TextField(
                      controller: nameController,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Masukkan nama kamu..',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        contentPadding: EdgeInsets.only(left: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    width: 340,
                    height: 42,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      onPressed: () {
                        String enteredName = nameController.text;
                        UserModel validUser = users.firstWhere(
                            (person) => person.username == enteredName);
                        // ignore: unnecessary_null_comparison
                        if (validUser != null) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: ((context) =>
                                  WelcomeScreen(validUser, users: validUser)),
                            ),
                          );
                          nameController.clear();
                        } else {
                          print('loggin error');
                        }
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
