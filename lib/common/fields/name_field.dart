import 'package:flutter/material.dart';
import 'package:hamzallc_auth/utils/utils.dart';

class NameField extends StatefulWidget {
  const NameField({
    required this.onChanged,
    required this.hint,
    required this.label,
    this.initialValue,
    this.textCapitalization = TextCapitalization.words,
    super.key,
  });

  final void Function(String value) onChanged;
  final String hint;
  final String label;
  final String? initialValue;
  final TextCapitalization textCapitalization;

  @override
  State<NameField> createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> with ValidationMixin {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      initialValue: widget.initialValue,
      keyboardType: TextInputType.name,
      textCapitalization: widget.textCapitalization,
      validator: (value) {
        if (isFieldEmpty(value)) {
          return 'Field is required';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: widget.hint,
        labelText: widget.label,
        prefixIcon: const Icon(Icons.person),
        alignLabelWithHint: true,
        border: Borders.defaultBorder,
      ),
    );
  }
}
