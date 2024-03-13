import 'package:supabase_flutter/supabase_flutter.dart';

class OperationsSupaBaseDB {
  // sempre instancie o banco de dados
  final supabase = Supabase.instance.client;

  Future<void> insertRowSupabase(String nome, String email, String telefone) async {
    await supabase
        .from('CadastrarPessoas')
        .insert({'nome': nome, 'email': email, 'telefone': telefone});
  }
}