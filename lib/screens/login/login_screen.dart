import 'package:basic_app/core/utils/validator.dart';
import 'package:basic_app/screens/home/home_screen.dart';
import 'package:basic_app/screens/login/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 
 final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
 final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();

@override
void dispose(){
  _emailController.dispose();
  _passwordController.dispose();
  super.dispose();
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body:SafeArea(child: SingleChildScrollView(
    padding: const EdgeInsets.all(24.0),
    child: Form(
      key:_formKey,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          const SizedBox(height:60.0),
          const Text(
            "Welcome Back",
            style:TextStyle(
              fontSize:32,
              fontWeight:FontWeight.bold
            ),
            textAlign:TextAlign.center,
            
          ),

          const SizedBox(height: 40.0,),
          CustomTextField(
            controller: _emailController,
            hintText: "Email",
            icon:Icons.email_outlined,
//keyboardType: TextInputType.emailAddress,////
            validator:Validators.validateEmail,
          ),
          const SizedBox(height:20.0),
           CustomTextField(
            controller: _passwordController,
            hintText: "Password",
            icon:Icons.lock_outlined,
            isPassword: true,
            validator:Validators.validatePassword,
          ),
          Align(
            alignment: Alignment.centerRight,
            child:TextButton(
              child:const Text("Forgot Password?"),
              onPressed: (){

              },
            )
          ),
          const SizedBox(height: 30,),
          ElevatedButton(
           
            style: ElevatedButton.styleFrom(
              padding :const EdgeInsets.symmetric(vertical:16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(12)),
            ),
             onPressed:(){
              if( _formKey.currentState!.validate()){
           Navigator.push(context,
           MaterialPageRoute(builder:(context)=>const HomeScreen(

           )
           )
           );
                  }
                      },
           child: const Text('Login',
           style: TextStyle(fontSize: 18)
           )       
            ,
          )
        ]
      )

    ),
   ))
    );
 
    }
}