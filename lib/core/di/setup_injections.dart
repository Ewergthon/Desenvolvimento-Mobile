
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:unithub/data/repository/auth/login_repository.dart';
import 'package:unithub/data/repository/auth/register_repository.dart';
import 'package:unithub/page/auth/login/cubit/login_cubit.dart';
import 'package:unithub/page/auth/register/cubit/register_cubit.dart';
import 'package:unithub/services/shared_preferences_service.dart';

GetIt i = GetIt.instance;

Future<void> setUpInjections() async {

  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  i.registerLazySingleton(() => SharedPreferencesService(sharedPreferences: sharedPreferences));

  registerI(auth, firestore);

  loginI(auth, firestore);
}

void registerI(FirebaseAuth auth, FirebaseFirestore firestore) {
  i.registerLazySingleton(() => RegisterRepository(
    firestore: firestore, 
    auth: auth, 
    sharedService: i<SharedPreferencesService>()),
  );

  i.registerFactory(() => RegisterCubit(repository: i<RegisterRepository>()));
}

void loginI(FirebaseAuth auth, FirebaseFirestore firestore) {
  i.registerLazySingleton(() => LoginRepository(
    firestore: firestore, 
    auth: auth, 
    sharedService: i<SharedPreferencesService>(),
    ),
  );

  i.registerFactory(() => LoginCubit(repository: i<LoginRepository>()));
}