import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Contacts';

    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(title),
          ),
          body: ListView.builder(
            itemCount: contatos.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(contatos[index].nomeCompleto[0],style: TextStyle(color: Colors.black),)
                  ,
                ),
                title: Text(contatos[index].nomeCompleto),
                subtitle: Text(contatos[index].email),
              );
            },
          )),
    );
  }
}

List<String> linguagens = [
  'Java',
  'C#',
  'Python',
  'Java',
  'Dart',
  'Go',
];

class Contato {
  String nomeCompleto;
  String email;

  Contato(this.nomeCompleto, this.email);
}

List<Contato> contatos = [
  Contato("Henrique", "henrique@gmail.com"),
  Contato("Lilith", "Lilith@gmail.com"),
  Contato("Guilherme", "Guilherme@gmail.com"),
  Contato("Cucas", "Cucas@gmail.com"),
  Contato("Cucas", "Cucas@gmail.com"),
];
