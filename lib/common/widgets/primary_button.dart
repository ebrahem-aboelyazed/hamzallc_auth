import 'package:flutter/material.dart';
import 'package:hamzallc_auth/utils/utils.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.onPressed,
    required this.text,
    this.loading = false,
    this.loadingText,
    this.width,
    this.color,
    super.key,
  });

  final void Function()? onPressed;
  final String text;

  final bool loading;
  final String? loadingText;

  final double? width;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: loading,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 1,
          fixedSize: Size(width ?? context.width, 50),
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          loading ? loadingText ?? 'Processing' : text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
