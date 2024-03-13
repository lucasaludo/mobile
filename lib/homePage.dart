import 'package:flutter/material.dart';
import 'package:supabase_aula2/components/customTextFormField.dart';
import 'package:supabase_aula2/database/operationSupabase.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller_nome = TextEditingController();
    TextEditingController controller_email = TextEditingController();
    TextEditingController controller_telefone = TextEditingController();git
    
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 15,
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text('Cadastro Pessoa',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 30),),
      ),
      body: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Tela destinada a cadastro de pessoas'),
            CustomTextFormField(campo: 'Nome', dica: 'João da Silva', controlador: controller_nome,),
            CustomTextFormField(campo: 'E-mail', dica: 'joao@teste.com', controlador: controller_email,),
            CustomTextFormField(campo: 'Telefone', dica: '(69) 98765-4321', controlador: controller_telefone,),
            ElevatedButton.icon(onPressed: (){
              OperationsSupaBaseDB().insertRowSupabase(controller_nome.text, controller_email.text, controller_telefone.text);
            },
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
                icon: Icon(Icons.add), label: Text('Salvar', style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
