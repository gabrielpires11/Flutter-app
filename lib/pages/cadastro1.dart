import 'package:flutter/material.dart';

class Cadastro1 extends StatefulWidget {
  const Cadastro1({super.key});

  @override
  State<Cadastro1> createState() => _Cadastro1State();
}

class _Cadastro1State extends State<Cadastro1> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Hello World"),
      ),
      body: Column(
        children: [
          // Adicionando a imagem com fundo branco
          Container(
            padding: const EdgeInsets.all(16.0), // Espaçamento em torno da imagem
            child: Image.asset(
              'img/astronalta.png', // Substitua pelo caminho da sua imagem
              height: 100, // Ajuste a altura conforme necessário
              width: 100, // Ajuste a largura conforme necessário
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              height: 500,
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                        iconColor: Colors.black,
                        icon: Icon(Icons.person),
                        hintText: "Informe o nome",
                      ),
                      validator: (String? nome) {
                        if (nome == "" || nome == null) {
                          return "O nome não pode ser vazio";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                        iconColor: Colors.black,
                        icon: Icon(Icons.crop_free),
                        hintText: "Informe o cpf",
                      ),
                      validator: (String? cpf) {
                        if (cpf == "" || cpf == null) {
                          return "O cpf não pode ser vazio";
                        }
                        if (cpf.length < 11) {
                          return "O cpf está muito curto";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                        iconColor: Colors.black,
                        icon: Icon(Icons.call_end_outlined),
                        hintText: "Informe o celular",
                      ),
                      validator: (String? celular) {
                        if (celular == "" || celular == null) {
                          return "O celular não pode ser vazio";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                        iconColor: Colors.black,
                        icon: Icon(Icons.mail),
                        hintText: "Informe o e-mail",
                      ),
                      validator: (String? email) {
                        if (email == "" || email == null) {
                          return "O e-mail não pode ser vazio";
                        }
                        if (email.length < 6) {
                          return "O e-mail está muito curto";
                        }
                        if (!email.contains("@")) {
                          return "O e-mail é inválido";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      autofocus: true,
                      obscureText: !_showPassword,
                      decoration: InputDecoration(
                        iconColor: Colors.black,
                        icon: Icon(Icons.lock),
                        suffixIcon: GestureDetector(
                          child: Icon(
                            _showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onTap: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                        ),
                        hintText: "Informe a senha",
                      ),
                      validator: (String? senha) {
                        if (senha == "" || senha == null) {
                          return "A senha não pode ser vazia";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      autofocus: true,
                      obscureText: !_showPassword,
                      decoration: InputDecoration(
                        iconColor: Colors.black,
                        icon: Icon(Icons.lock),
                        suffixIcon: GestureDetector(
                          child: Icon(
                            _showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onTap: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                        ),
                        hintText: "Confirme a senha",
                      ),
                      validator: (String? senha) {
                        if (senha == "" || senha == null) {
                          return "A senha não pode ser vazia";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          buttonEnterClick();
                        },
                        child: Text("Cadastrar"),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(200, 50),
                          backgroundColor: Colors.yellow,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero, // Bordas quadradas
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void buttonEnterClick() {
    if (_formKey.currentState!.validate()) {
      print("form ok");
    } else {
      print("form erro");
    }
  }
}
