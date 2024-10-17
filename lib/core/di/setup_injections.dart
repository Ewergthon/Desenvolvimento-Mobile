
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:unithub/data/repository/auth/login_repository.dart';
import 'package:unithub/data/repository/auth/register_repository.dart';
import 'package:unithub/data/repository/event/event_repository.dart';
import 'package:unithub/data/repository/ticket/ticket_repository.dart';
import 'package:unithub/page/auth/login/cubit/login_cubit.dart';
import 'package:unithub/page/auth/register/cubit/register_cubit.dart';
import 'package:unithub/page/create_event/cubit/create_event_cubit.dart';
import 'package:unithub/page/tabs/home/cubit/home_cubit.dart';
import 'package:unithub/page/tabs/home/cubit/ticket/ticket_cubit.dart';
import 'package:unithub/services/shared_preferences_service.dart';

GetIt i = GetIt.instance;

Future<void> setUpInjections() async {

  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseStorage storage = FirebaseStorage.instance;

  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  i.registerLazySingleton(() => SharedPreferencesService(sharedPreferences: sharedPreferences));

  registerI(auth, firestore);

  loginI(auth, firestore);

  eventI(firestore, storage, auth);

  homeI(firestore);

  ticketI(firestore, auth);
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

void eventI(FirebaseFirestore firestore, FirebaseStorage storage, FirebaseAuth auth) {
  i.registerLazySingleton(() => EventRepository(firestore: firestore, storage: storage, auth: auth));

  i.registerFactory(() => CreateEventCubit(repository: i<EventRepository>()));
}

void ticketI(FirebaseFirestore firestore, FirebaseAuth auth) {
  i.registerLazySingleton(() => TicketRepository(firestore: firestore, auth: auth));

  i.registerFactory(() => TicketCubit(repository: i<TicketRepository>(), eventRepository: i<EventRepository>()));
}

void homeI(FirebaseFirestore firestore) {
  i.registerFactory(() => HomeCubit(repository: i<EventRepository>(), ticketRepository: i<TicketRepository>()));
}