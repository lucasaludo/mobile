import 'package:flutter/material.dart';
import 'package:supabase_aula2/keysSupabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'homePage.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: KeysSupabase().urlSupabase, //URL DISPONIVEL NO SETTINGS DO SUPABASE
    anonKey: KeysSupabase().anonKey, //ANON KEY DISPONÍVEL NO SETTINGS -> API SUPABASE
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}