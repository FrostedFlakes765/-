import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cred/auth.dart';
import 'package:cred/home_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final User? user = Auth().currentUser;

  // BuildContext? get context => null;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text('Firebase Auth');
  }

  // Widget _libraryButton() {
  //   return ElevatedButton(
  //     onPressed: () {
  //       Navigator.of(context!)
  //           .push(MaterialPageRoute(builder: (context) => const HomeScreen()));
  //     },
  //     child: const Text('Library'),
  //   );
  // }

  Widget _signOutButton() {
    return ElevatedButton(
      onPressed: signOut,
      child: const Text('Sign Out'),
    );
  }

  Widget _userUid() {
    return Text(user?.email ?? 'User email');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // _libraryButton(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreen()));
              },
              child: const Text('Library'),
            ),
            // _libraryButton(),
            _userUid(),
            _signOutButton(),
          ],
        ),
      ),
    );
  }
}
