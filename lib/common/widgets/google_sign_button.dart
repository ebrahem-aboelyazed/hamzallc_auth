import 'package:flutter/material.dart';
import 'package:hamzallc_auth/gen/assets.gen.dart';
import 'package:hamzallc_auth/utils/utils.dart';

class GoogleSignButton extends StatelessWidget {
  const GoogleSignButton({
    required this.onPressed,
    required this.text,
    this.loading = false,
    this.loadingText,
    super.key,
  });

  final void Function()? onPressed;

  final String text;

  final bool loading;
  final String? loadingText;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: loading,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          elevation: 1,
          fixedSize: Size.fromWidth(context.widthPercentage(0.7)),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.lightBlueAccent,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Assets.svg.icGoogle.svg(),
            Text(
              loading ? loadingText ?? 'Processing' : text,
            ),
          ],
        ),
      ),
    );
  }
}
