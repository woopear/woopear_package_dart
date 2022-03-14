library woo_widget_connexion;

import 'package:flutter/material.dart';

class InputConnexion extends StatefulWidget {
  String? messageValidateEmail = 'veuillez entrer une bonne adresse mail';
  String? labelText;

  InputConnexion({Key? key, this.messageValidateEmail, this.labelText}) : super(key: key);

  @override
  State<InputConnexion> createState() => _InputConnexionState();
}

class _InputConnexionState extends State<InputConnexion> {
  final RegExp emailRegex = RegExp(r"[a-z0-9\._-]+@[a-z0-9\._-]+\.[a-z]+");

  String? validateEmail(String? value) {
    value!.isEmpty || !emailRegex.hasMatch(value)
        ? widget.messageValidateEmail
        : null;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration().copyWith(
              labelText: widget.labelText
            ),
            validator: (value) => validateEmail(value),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            onChanged: (value) => setState(() => _password = value),
            validator: (value) =>
                value!.length < 6 ? '6 caractères mini' : null,
            obscureText: _isSecret,
            decoration: InputDecoration(
              suffixIcon: InkWell(
                onTap: () => setState(() => _isSecret = !_isSecret),
                child: Icon(
                  !_isSecret ? Icons.visibility : Icons.visibility_off,
                ),
              ),
              labelText: 'Mot de passe',
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: (!emailRegex.hasMatch(_email) || _password.length < 6)
                ? null
                : () {},
            child: const Text('Valider'),
          ),
        ],
      ),
    );
  }
}
