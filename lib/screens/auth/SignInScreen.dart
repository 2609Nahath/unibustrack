// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:unibustrack/main.dart';
//
// class SignInScreen extends StatelessWidget {
//   const SignInScreen({super.key});
//
//   Future<bool> _handleGoogleSignIn() async {
//     // TODO: Implement Google Sign-In logic here
//     final user = await GoogleSignIn().signIn();
//     GoogleSignInAuthentication userAuth = await user!.authentication;
//     var credential = GoogleAuthProvider.credential(
//       idToken: userAuth.idToken,
//       accessToken: userAuth.accessToken,
//     );
//     await FirebaseAuth.instance.signInWithCredential(credential);
//
//     return FirebaseAuth.instance.currentUser != null;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF5F6FA),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 32.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Icon(
//                 Icons.lock_outline,
//                 size: 80,
//                 color: Colors.deepPurple,
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 "Welcome Back",
//                 style: GoogleFonts.poppins(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black87,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 "Sign in to continue",
//                 style: GoogleFonts.poppins(
//                   fontSize: 16,
//                   color: Colors.grey[700],
//                 ),
//               ),
//               const SizedBox(height: 40),
//               ElevatedButton.icon(
//                 onPressed: () async {
//                   bool isLogged = await _handleGoogleSignIn();
//                   if (isLogged) {
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context) => MyApp()),
//                     );
//                   }
//                 },
//                 icon: Image.asset(
//                   'assets/logo/google_logo.png',
//                   height: 24,
//                   width: 24,
//                 ),
//                 label: Text(
//                   'Sign in with Google',
//                   style: GoogleFonts.poppins(
//                     fontSize: 16,
//                     color: Colors.black87,
//                   ),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.white,
//                   elevation: 2,
//                   minimumSize: const Size(double.infinity, 50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                     side: const BorderSide(color: Colors.grey),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 "By signing in, you agree to our Terms and Privacy Policy.",
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.poppins(
//                   fontSize: 12,
//                   color: Colors.grey[600],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
