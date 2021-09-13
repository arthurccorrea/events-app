import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultInputField extends StatelessWidget {
  final String labelTextValue;
  final TextEditingController controller;
  final TextInputType? tipoTeclado;
  final FocusNode? focusNode;
  final ValueChanged<String> onChanged;
  final VoidCallback? onEditingComplete;
  final FormFieldValidator<String>? validator;
  final bool autovalidate;
  final bool defaultValidation;
  final bool useObscure;
  final TextInputAction? textInputAction;
  final Iterable<String>? autofillHints;
  final IconData? icon;
  final bool enabled;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;

  const DefaultInputField(
      {Key? key,
      required this.labelTextValue,
      required this.controller,
      this.tipoTeclado,
      this.autofillHints,
      this.focusNode,
      this.icon,
      this.autovalidate = false,
      this.useObscure = false,
      this.textInputAction,
      this.defaultValidation = false,
      required this.onChanged,
      this.onEditingComplete,
      this.validator,
      this.enabled = true,
      this.maxLength,
      this.inputFormatters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    FormFieldValidator<String> defaultValidator = getDefaultValidator();
    return TextFormField(
        controller: controller,
        keyboardType: tipoTeclado,
        style: const TextStyle(color: Colors.black),
        autofillHints: autofillHints,
        focusNode: focusNode,
        maxLength: maxLength,
        enabled: enabled,
        obscureText: useObscure,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
            icon: icon != null ? Icon(icon, color: Colors.black) : null,
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black)),
            disabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red.shade900)),
            labelStyle: const TextStyle(
                fontWeight: FontWeight.normal, color: Colors.black),
            labelText: labelTextValue,
            errorStyle: TextStyle(
                color: Colors.red[900],
                fontSize: 15,
                fontWeight: FontWeight.bold),
            counterText: ''),
        autovalidateMode: autovalidate
            ? AutovalidateMode.onUserInteraction
            : AutovalidateMode.disabled,
        validator: defaultValidation ? defaultValidator : validator,
        onChanged: onChanged,
        onEditingComplete: onEditingComplete);
  }

  FormFieldValidator<String> getDefaultValidator() {
    return (value) {
      if (value != null && value.isEmpty) {
        return "Campo obrigatório";
      }
      return null;
    };
  }
}
