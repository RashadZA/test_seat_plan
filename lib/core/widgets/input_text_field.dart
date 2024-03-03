import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_seat_plan/core/utils/app_colors.dart';

class TextFieldInput extends StatelessWidget {
  final bool readOnly;
  final bool obscureText;
  final String? fieldTitleText;
  final String? labelText;
  final String? hintText;
  final double? textFieldWidth;
  final double? textFieldHeight;
  final double? fontSize;
  final int? maxLines;
  final int? minLines;
  final Color? fillColor;
  final Color? fieldTitleTextColor;
  final Color? textColor;
  final String? helperText;
  final FocusNode? focusNode;
  final Widget? suffixIcon;
  final Color? prefixIconColor;
  final IconData? prefixIcon;
  final String? suffixText;
  final double? prefixIconSize;
  final void Function()? onTap;
  final Color? hintTextColor;
  final void Function(String)? onSubmit;
  final void Function(String)? onChanged;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  const TextFieldInput({
    super.key,
    this.readOnly = false,
    this.obscureText = false,
    this.fieldTitleText,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.helperText,
    this.fontSize,
    this.maxLines = 1,
    this.minLines = 1,
    this.focusNode,
    this.onTap,
    this.fillColor,
    this.onSubmit,
    this.textColor,
    this.onChanged,
    this.prefixIconColor,
    this.suffixText,
    this.prefixIconSize = 20,
    this.suffixIcon,
    this.inputFormatters,
    this.controller,
    this.validator,
    this.keyboardType,
    this.hintTextColor,
    this.textFieldWidth,
    this.textFieldHeight,
    this.fieldTitleTextColor,
    this.textInputAction = TextInputAction.next,
  });

  static OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide:
    BorderSide(width: 1, color: primaryColor.withOpacity(.67)),
  );

  static OutlineInputBorder enabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(width: 1, color: primaryColor),
  );

  static OutlineInputBorder focusedErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(width: 1, color: redAccent),
  );
  static OutlineInputBorder errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide:
    BorderSide(width: 1, color: redAccent.withOpacity(.5)),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        fieldTitleText !=null ? SizedBox(
          width: textFieldWidth,
          child: Text(fieldTitleText!,
            style: TextStyle(
              color: fieldTitleTextColor ?? Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),

        ) : const SizedBox(height: 0.0,width: 0.0,),
        SizedBox(height: fieldTitleText != null ? 5 : 0,),
        SizedBox(
          width: textFieldWidth,
          height: textFieldHeight,
          child: TextFormField(
            onTap: onTap,
            cursorHeight: 20,
            autocorrect: false,
            minLines: minLines,
            readOnly: readOnly,
            maxLines: maxLines,
            focusNode: focusNode,
            validator: validator,
            controller: controller,
            obscureText: obscureText,
            onFieldSubmitted: onSubmit,
            keyboardType: keyboardType,
            cursorColor:  Colors.blueAccent,
            textInputAction: textInputAction,
            inputFormatters: inputFormatters,
            onChanged: onChanged,
            style: TextStyle(
              color: textColor ?? Colors.black,
              fontSize: fontSize ?? 16,
              letterSpacing: -.24,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
            ),
            decoration: InputDecoration(
              isDense: true,
              labelText: labelText,
              hintText: hintText,
              suffixIcon: suffixIcon,
              labelStyle:  TextStyle(
                color: hintTextColor ?? Colors.blueAccent,
                fontSize: fontSize ?? 16,
                letterSpacing: -.24,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none,
              ),
              hintStyle:  TextStyle(
                color: hintTextColor ?? Colors.blueAccent,
                fontSize: fontSize ?? 16,
                letterSpacing: -.24,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none,
              ),
              filled: true,
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              fillColor: fillColor ?? Colors.white,
              prefixIcon: prefixIcon != null
                  ? Icon(
                prefixIcon,
                size: prefixIconSize,
                color: prefixIconColor ??  Colors.grey,
              )
                  : null,
              suffixText: suffixText,
              helperText: helperText,
              errorBorder: errorBorder,
              enabledBorder: enabledBorder,
              focusedBorder: focusedBorder,
              focusedErrorBorder: focusedErrorBorder,
              suffixStyle: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                letterSpacing: -.24,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
              helperStyle: const TextStyle(
                color: primaryColor,
                fontSize: 12,
                letterSpacing: -.24,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}