import 'package:flutter/material.dart';
import 'package:hamzallc_auth/utils/utils.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    required this.onChanged,
    this.onSubmitted,
    this.initialValue,
    this.hint = 'Password',
    super.key,
  });

  final void Function(String value) onChanged;
  final void Function(String value)? onSubmitted;
  final String? initialValue;
  final String? hint;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> with ValidationMixin {
  final ValueNotifier<bool> isObscureText = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isObscureText,
      builder: (context, value, child) {
        return TextFormField(
          onChanged: widget.onChanged,
          initialValue: widget.initialValue,
          validator: (value) {
            if (isFieldEmpty(value)) {
              return 'Field is required';
            }
            return null;
          },
          obscureText: value,
          onFieldSubmitted: widget.onSubmitted,
          decoration: InputDecoration(
            hintText: widget.hint,
            labelText: widget.hint,
            alignLabelWithHint: true,
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: IconButton(
              icon: Icon(
                isObscureText.value
                    ? Icons.visibility
                    : Icons.visibility_off_sharp,
              ),
              onPressed: () => isObscureText.value = !value,
            ),
            border: Borders.defaultBorder,
          ),
        );
      },
    );
  }
}
