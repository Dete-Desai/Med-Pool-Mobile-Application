// import 'package:flutter/material.dart';

// class SignIn extends StatefulWidget {
//   @override
//   _SignInState createState() => _SignInState();
// }

// class _SignInState extends State<SignIn> {
//   AuthAPI _authAPI = AuthAPI();
//   final _key = GlobalKey<FormState>();
//   String email;
//   String password;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
//         child: Form(
//             key: _key,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 SizedBox(height: 70),
//                 Text(
//                   "Sign In",
//                   style: formTitleStyle(),
//                 ),
//                 SizedBox(height: 30),
//                 Container(
//                     width: 400,
//                     child: TextFormField(
//                       decoration: textInputDecoration("Email", context),
//                       onChanged: (val) => setState(() => email = val),
//                     )),
//                 SizedBox(height: 30),
//                 Container(
//                   width: 400,
//                   child: TextFormField(
//                     obscureText: true,
//                     decoration: textInputDecoration("Password", context),
//                     onChanged: (val) => setState(() => password = val),
//                   ),
//                 ),
//                 SizedBox(height: 25),
//                 GestureDetector(
//                   child: Text(
//                     "Forgot Password ?",
//                     style: TextStyle(
//                         fontSize: 18.0, decoration: TextDecoration.underline),
//                   ),
//                   onTap: () {
//                     // todo
//                   },
//                 ),
//                 SizedBox(height: 25),
//                 Container(
//                     width: 400,
//                     child: customRaisedIconButton(
//                         "Sign In !", Icons.send, context, () async {
//                       if (_key.currentState.validate()) {
//                         try {
//                           var req = await _authAPI.login(email, password);
//                           if (req.statusCode == 200) {
//                             print(req.body);
//                             var customer = Customer.fromReqBody(req.body);
//                             customer.printAttributes();
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                         MyHomePage(customer: customer)));
//                           } else {
//                             pushError(context);
//                           }
//                         } on Exception catch (e) {
//                           print(e.toString());
//                           pushError(context);
//                         }
//                       }
//                     }))
//               ],
//             )));
//   }

//   void PushError() {
//     Navigator.push(context, MaterialPageRoute(builder: (context) => Error()));
//   }
// }
