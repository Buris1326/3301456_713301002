import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kirmizi_defter/Authentication.dart';
import 'package:kirmizi_defter/firebase_options.dart';
import 'package:kirmizi_defter/providers/recipes_provider.dart';
import 'package:kirmizi_defter/services/recipes_services.dart';
import 'package:provider/provider.dart';
import 'gecisEkranlari/sayfaBursa.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<FlutterFireAuthService>(
            create: (_) => FlutterFireAuthService(FirebaseAuth.instance),
          ),
          StreamProvider(
            create: (context) =>
            context.read<FlutterFireAuthService>().authStateChanges,
            initialData: null,
          ),
          Provider<FirestoreRecipesService>(
            create: (_) => FirestoreRecipesService(),
          ),
          ChangeNotifierProvider(create: (context) => RecipesProvider()),
          StreamProvider(
            create: (context) =>
                context.read<FirestoreRecipesService>().getRecipes(),
            initialData: null,
          ),
          //ChangeNotifierProvider(create: (context) => SayfaBursa()),
        ],
        child: MaterialApp(
         // localizationsDelegates: context.localizationDelegates,
          //supportedLocales: context.supportedLocales,
          //locale: context.locale,
         // debugShowCheckedModeBanner: false,
          //title: LocaleKeys.appname.tr(),
         // theme: ThemeData(
           // scaffoldBackgroundColor: Colors.white,
         // ),
          home: SayfaBursa(),

        ));
  }
}
