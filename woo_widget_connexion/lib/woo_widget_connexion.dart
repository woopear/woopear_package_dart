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
  Widget? emailprefixIcon;
  EdgeInsetsGeometry? emailmargin;
  EdgeInsetsGeometry? emailpadding;
  String? Function(String?)? pwsvalidator;
  dynamic Function(dynamic)? pwsonChange;
  dynamic Function(dynamic)? resultForm;
  String? pwslabelText;
  String? pwsinitialValue;
  String? pwsmessageValidate;
  Widget? pwslabel;
  bool pwsobscureText;
  bool pwsemail = false;
  Widget? pwsprefixIcon;
  EdgeInsetsGeometry? pwsmargin;
  EdgeInsetsGeometry? pwspadding;
  String textButton = 'Se connecter';

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
    this.pwsmessageValidate,
    this.resultForm,
    this.textButton = 'Se connecter',
  }) : super(key: key);

  @override
  State<InputConnexion> createState() => _InputConnexionState();
}

class _InputConnexionState extends State<InputConnexion> {
  final RegExp emailRegex = RegExp(r"[a-z0-9\._-]+@[a-z0-9\._-]+\.[a-z]+");
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? inputEmailValue;
  String? inputPasswordValue;

  @override
  void dispose() {
    inputEmailValue = widget.emailinitialValue;
    inputPasswordValue = widget.pwsmessageValidate;
    super.dispose();
  }

  /// valider le contenue du input email
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty || !emailRegex.hasMatch(value)) {
      return widget.emailmessageValidate;
    }
    return null;
  }

  /// valider le contenue du input password
  String? validatePassword(String? value) {
    return value!.length < 6 ? widget.pwsmessageValidate : null;
  }

  /// creation de l'objet de retour du formulaire
  Map<String, dynamic>? createResultForm() {
    if (inputEmailValue == null ||
        inputEmailValue!.isEmpty ||
        inputPasswordValue == null ||
        inputPasswordValue!.isEmpty) {
      return null;
    }else{
    return {
      'email': inputEmailValue,
      'password': inputPasswordValue,
    };
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          InputCustom.email(
            initialValue: inputEmailValue,
            labelText: widget.emaillabelText,
            label: widget.emaillabel,
            margin: widget.emailmargin,
            padding: widget.emailpadding,
            prefixIcon: widget.emailprefixIcon,
            validator: (value) => validateEmail(value),
            onChange: (value) {
              setState(() => {
                    inputEmailValue = value,
                  });
            },
          ),
          InputCustom.password(
            initialValue: inputPasswordValue,
            labelText: widget.pwslabelText,
            label: widget.emaillabel,
            margin: widget.pwsmargin,
            padding: widget.pwspadding,
            prefixIcon: widget.emailprefixIcon,
            validator: (value) => validatePassword(value),
            onChange: (value) {
              setState(() => {
                    inputPasswordValue = value,
                  });
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                final formValue = createResultForm();
                widget.resultForm!(formValue);
              }
            },
            child: Text(widget.textButton),
          ),
        ],
      ),
    );
  }
}
