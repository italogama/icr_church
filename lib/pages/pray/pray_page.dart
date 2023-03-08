import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PrayPage extends StatefulWidget {
  const PrayPage({Key? key}) : super(key: key);

  @override
  State<PrayPage> createState() => _PrayPageState();
}

class _PrayPageState extends State<PrayPage> {
  final _formKey = GlobalKey<FormState>();
  late String _prayerReason;
  late String _name;
  late String _description;
  bool _wantVisit = false;
  bool _wantCall = false;
  bool _wantPublish = false;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Envie os dados do formulário para o servidor ou faça o que quiser com eles.
      print("Motivo da oração: $_prayerReason");
      print("Seu nome: $_name");
      print("Descrição: $_description");
      print("Deseja receber uma ligação? $_wantCall");
      print("Publicar no mural? $_wantPublish");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[500],
        title: const Text('PEDIDO DE ORAÇÃO', style: TextStyle(fontSize: 16)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Motivo da oração',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor, digite o motivo da oração';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    _prayerReason = value;
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Seu nome',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor, digite seu nome';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    _name = value;
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  maxLines: 5,
                  decoration: const InputDecoration(
                    labelText: 'Descrição',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    alignLabelWithHint: true,
                  ),
                  onChanged: (value) {
                    _description = value;
                  },
                ),
                const SizedBox(height: 20.0),
                const Text('Deseja receber uma visita de um membro da igreja?',
                    style: TextStyle(fontSize: 16)),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _wantVisit = !_wantVisit;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          // color: _selectedOption == true
                          //     ? Colors.green[500]
                          //     : Colors.red[500],
                        ),
                        child: Text(
                          'Sim',
                          style: TextStyle(
                              color: !_wantVisit == true
                                  ? Colors.grey
                                  : Colors.black,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _wantVisit = !_wantVisit;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          // color: _selectedOption == true
                          //     ? Colors.green[500]
                          //     : Colors.red[500],
                        ),
                        child: Text(
                          'Não',
                          style: TextStyle(
                              color: !_wantVisit == false
                                  ? Colors.grey
                                  : Colors.black,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Text('Deseja receber uma ligação de um membro da igreja?',
                    style: TextStyle(fontSize: 16)),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _wantCall = !_wantCall;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          // color: _selectedOption == true
                          //     ? Colors.green[500]
                          //     : Colors.red[500],
                        ),
                        child: Text(
                          'Sim',
                          style: TextStyle(
                              color: !_wantCall == true
                                  ? Colors.grey
                                  : Colors.black,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _wantCall = !_wantCall;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        child: Text(
                          'Não',
                          style: TextStyle(
                              color: !_wantCall == false
                                  ? Colors.grey
                                  : Colors.black,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Text('Publicar no mural de orações?',
                    style: TextStyle(fontSize: 16)),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _wantPublish = !_wantPublish;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        child: Text(
                          'Sim',
                          style: TextStyle(
                              color: !_wantPublish == true
                                  ? Colors.grey
                                  : Colors.black,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _wantPublish = !_wantPublish;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        child: Text(
                          'Não',
                          style: TextStyle(
                              color: !_wantPublish == false
                                  ? Colors.grey
                                  : Colors.black,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red[500],
                      ),
                      onPressed: _submitForm,
                      child: const Text('ENVIAR'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
