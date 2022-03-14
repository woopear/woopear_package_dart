library woo_widget_connexion;

import 'package:flutter/material.dart';
import 'package:woo_widget_input/woo_widget_input.dart';

class InputConnexion extends StatefulWidget {
  String? Function(String?)? emailvalidator;
  dynamic Function(dynamic)? emailonChange;
  String? emaillabelText;
  String? emailinitialValue;
  String? emailmessageValidate;
  Widget? emaillabel;
  bool emailobscureText;
  bool emailpassword = false;
  bool emailemail = false;
  Widget? emailprefixIcon;
  Widget? emailsufixIcon;
  dynamic Function()? emailfuncSufixIcon;
  EdgeInsetsGeometry? emailmargin;
  EdgeInsetsGeometry? emailpadding;
  String? Function(String?)? pwsvalidator;
  dynamic Function(dynamic)? pwsonChange;
  String? pwslabelText;
  String? pwsinitialValue;
  String? pwsmessageValidate;
  Widget? pwslabel;
  bool pwsobscureText;
  bool pwspassword = false;
  bool pwsemail = false;
  Widget? pwsprefixIcon;
  Widget? pwssufixIcon;
  dynamic Function()? pwsfuncSufixIcon;
  EdgeInsetsGeometry? pwsmargin;
  EdgeInsetsGeometry? pwspadding;

  InputConnexion({
    Key? key,
    this.emailmargin,
    this.emailpadding,
    this.emailvalidator,
    this.emailonChange,
    this.emaillabelText,
    this.emailinitialValue,
    this.emaillabel,
    this.emailobscureText = false,
    this.emailprefixIcon,
    this.emailsufixIcon,
    this.emailfuncSufixIcon,
    this.emailpassword = false,
    this.emailmessageValidate,
    this.pwsmargin,
    this.pwspadding,
    this.pwsvalidator,
    this.pwsonChange,
    this.pwslabelText,
    this.pwsinitialValue,
    this.pwslabel,
    this.pwsobscureText = false,
    this.pwsprefixIcon,
    this.pwssufixIcon,
    this.pwsfuncSufixIcon,
    this.pwspassword = false,
    this.pwsmessageValidate,
  }) : super(key: key);

  @override
  State<InputConnexion> createState() => _InputConnexionState();
}

class _InputConnexionState extends State<InputConnexion> {
  final RegExp emailRegex = RegExp(r"[a-z0-9\._-]+@[a-z0-9\._-]+\.[a-z]+");
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  /// valider le contenue du input email
  String? validateEmail(String? value) {
    return value!.isEmpty || !emailRegex.hasMatch(value)
        ? widget.emailmessageValidate
        : null;
  }

  /// valider le contenue du input password
  String? validatePssword(String? value) {
    return value!.length < 6 ? '6 caractères mini' : null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          InputCustom.email(
            labelText: widget.emaillabelText,
            validator: (value) => validateEmail(value),
          ),
          InputCustom.password(
            labelText: widget.pwslabelText,
            validator: (value) => validatePssword(value),
          ),
          ElevatedButton(
            onPressed: () => {
              print(_formKey),
            },
            child: const Text('Valider'),
          ),
        ],
      ),
    );
  }
}
