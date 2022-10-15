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
    return const Text('Home');
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
    return Text(user?.email ?? 'User email',
        style: const TextStyle(
          color: Colors.black,
          // backgroundColor: Colors.lightBlueAccent,
          fontSize: 25,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        // height: double.infinity,
        // width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            // _libraryButton(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _userUid(),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                      },
                      child: const Text('Library'),
                    ),
                  ],
                ),
                // _libraryButton(),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _signOutButton(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
