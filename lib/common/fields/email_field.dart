import 'package:flutter/material.dart';
import 'package:hamzallc_auth/utils/utils.dart';

class EmailField extends StatefulWidget {
  const EmailField({
    required this.onChanged,
    this.initialValue,
    super.key,
  });

  final void Function(String value) onChanged;
  final String? initialValue;

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> with ValidationMixin {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      initialValue: widget.initialValue,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (isFieldEmpty(value)) {
          return 'Field is required';
        } else if (validateEmailAddress(value)) {
          return 'Incorrect Email';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Email',
        labelText: 'Email',
        alignLabelWithHint: true,
        prefixIcon: const Icon(Icons.email),
        border: Borders.defaultBorder,
      ),
    );
  }
}
