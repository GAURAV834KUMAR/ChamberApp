import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ChamberappFirebaseUser {
  ChamberappFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ChamberappFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ChamberappFirebaseUser> chamberappFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ChamberappFirebaseUser>(
            (user) => currentUser = ChamberappFirebaseUser(user));
