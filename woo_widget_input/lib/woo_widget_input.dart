library woo_widget_input;

import 'package:flutter/material.dart';

class InputCustom extends StatefulWidget {
  String? Function(String?)? validator;
  dynamic Function(dynamic)? onChange;
  String? labelText;
  String? initialValue;
  Widget? label;
  bool obscureText;
  bool password = false;
  bool email = false;
  Widget? prefixIcon;
  Widget? sufixIcon;
  dynamic Function()? funcSufixIcon;
  EdgeInsetsGeometry? margin;
  EdgeInsetsGeometry? padding;

  InputCustom({
    Key? key,
    this.margin,
    this.padding,
    this.validator,
    this.onChange,
    this.labelText,
    this.initialValue,
    this.label,
    this.obscureText = false,
    this.prefixIcon,
    this.sufixIcon,
    this.funcSufixIcon,
    this.password = false,
  }) : super(key: key);

  InputCustom.password({
    Key? key,
    this.margin,
    this.padding,
    this.validator,
    this.onChange,
    this.labelText,
    this.initialValue,
    this.label,
    this.obscureText = true,
    this.prefixIcon,
    this.sufixIcon,
    this.funcSufixIcon,
    this.password = true,
  }) : super(key: key);

  InputCustom.email({
    Key? key,
    this.margin,
    this.padding,
    this.validator,
    this.onChange,
    this.labelText,
    this.initialValue,
    this.label,
    this.obscureText = false,
    this.prefixIcon,
    this.sufixIcon,
    this.funcSufixIcon,
    this.password = false,
  }) : super(key: key);

  @override
  State<InputCustom> createState() => _InputCustomState();
}

class _InputCustomState extends State<InputCustom> {
  bool _isSecret = true;

  void seePassword() {
    _isSecret = !_isSecret;
    widget.obscureText = !widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      margin: widget.margin,
      child: TextFormField(
        initialValue: widget.initialValue,
        validator: (value) => widget.validator!(value),
        onChanged: (value) => widget.onChange!(value),
        obscureText: widget.obscureText,
        decoration: const InputDecoration().copyWith(
          labelText: widget.labelText,
          label: widget.label,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.password
              ? InkWell(
                  onTap: () => {
                    setState(() => {
                          seePassword(),
                        }),
                  },
                  child: Icon(
                    !_isSecret ? Icons.visibility : Icons.visibility_off,
                  ),
                )
              : InkWell(
                  onTap: () => {
                    setState(() => {
                          widget.funcSufixIcon!(),
                        }),
                  },
                  child: widget.sufixIcon,
                ),
        ),
      ),
    );
  }
}
