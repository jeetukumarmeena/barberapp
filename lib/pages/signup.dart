import 'package:barberapp/pages/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _LoginState();
}

class _LoginState extends State<SignUp> {
  // Define color constants
  static const Color primaryColor = Color(0xffb91635);
  static const Color secondaryColor = Color(0xff621d3c);
  static const Color darkColor = Color(0xff311937);
  
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController =TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50.0, left: 20.0),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [primaryColor, secondaryColor, darkColor],
                ),
              ),
              child: Text(
                "Create Your\nAccount!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0, bottom: 40.0),
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 4),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(20)
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: _nameController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Name",
                        prefixIcon: Icon(Icons.person_outline),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Enter your email",
                        prefixIcon: Icon(Icons.mail_outline),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Password", 
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        prefixIcon: Icon(Icons.password_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // Add forgot password logic
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: darkColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10),
                      ),
                      onPressed: () {
                        // Add sign in logic
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [primaryColor, secondaryColor, darkColor],
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "SignUp",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        TextButton(onPressed: (){
                              Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LogIn()), // Navigate to SignUpScreen instead
        );
            
                        }, 
                         child:  Text(
                            "Already have an account",
                            style: TextStyle(
                              color: darkColor,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                                               // Add navigation to sign up
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                color: secondaryColor,
                                fontSize: 24.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                 )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}