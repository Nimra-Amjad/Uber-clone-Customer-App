import 'package:customer_app/models/user_models.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth fAuth = FirebaseAuth.instance;
User? currentFirebaseUser;
UserModel? userModelCurrentInfo;
