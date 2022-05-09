
import 'package:appfirebasedanki/screenss/Usuarios/tela-usuarios.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  //Inicializar o firebase
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  FirebaseFirestore db = FirebaseFirestore.instance;
/*
  db.collection("produtos").doc("002").set({
    "nome" : "Bolacha trakinas de morango",
    "preco": "1.90",
    "ativo": "true"
  });
*/
/*
   DocumentReference ref = await db.collection("produtos").add({
    "nome" : "Notebook da Dell",
    "preco": "4000",
    "ativo": "false"
 });
  
  print("Id do ultimo registro: " + ref.id);
*/

  //Como excluir um regitro no banco de dados
//db.collection("produtos").doc("002").delete();

//Como listar dados dos firebase

//1° Forma - Listar somente um documento
/*
DocumentSnapshot snapshot = await db.collection("produtos").doc("001").get();
Map<String, dynamic> dados = snapshot.data();

print("Nome do Produto: " + dados["nome"]);
print("Preço do Produto: " + dados["preco"]);
*/

//2° Forma - Listar uma lista de documentos
/*
QuerySnapshot querySnapshot = await db.collection("produtos").get();

for(DocumentSnapshot item in querySnapshot.docs){
  Map<String, dynamic> dados = item.data();
  print("Dados: " + dados.toString());
}
*/

//3° Forma - Listando de maneira que o firebase nos notifique caso tenha alguma mudança
  db.collection("produtos").snapshots().listen((snapshot) {
    for (DocumentSnapshot item in snapshot.docs) {
      Map<String, dynamic> dados = item.data();
      print("Dados: " + dados.toString());
    }
  });

  runApp(MaterialApp(
    home: TelaUsuarios(),
  ));
}



