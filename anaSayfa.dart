import 'package:flutter/material.dart';

class anaSayfam extends StatefulWidget {
  @override
  State<anaSayfam> createState() => _anaSayfamState();
}

class _anaSayfamState extends State<anaSayfam> {

  TextEditingController _boyController = TextEditingController();

  TextEditingController _kiloController = TextEditingController();
  double _sonuc =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vücut Kitle Endeksi",style: TextStyle(color: Colors.white,fontSize: 30),),backgroundColor: Colors.cyan,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            Text(_sonuc.toStringAsFixed(2),style: TextStyle(fontSize: 50),),
            SizedBox(height: 20,),
            TextField(controller: _boyController,decoration: InputDecoration(suffixText: "m",hintText: "boy",border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),),
            SizedBox(height: 20,),
            TextField(controller: _kiloController,decoration: InputDecoration(suffixText: "kg" ,hintText: "kilo",border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: _hesapla, child: Text("Hesapla")),
          ],
        ),
      ),

    );
  }

  void _hesapla(){
    String boy = _boyController.text.trim();
    String kilo = _kiloController.text.trim();

    try{
       double boyDouble = double.parse(boy);
       double kiloDouble = double.parse(kilo);

       setState(() {
         _sonuc = boyDouble * boyDouble / kiloDouble;
       });
    }catch(e){
      print("bir hata oluştu: ${e.toString()}");
    }

  }
}

