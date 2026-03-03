import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list_isar_database/core/constant/app_color.dart';

/// A custom widget for text field
class TextFieldTitle extends StatelessWidget {
  final String hintText;
  final TextEditingController textEditingController;

  const TextFieldTitle(
      {super.key, required this.hintText, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      minLines: 1,
      maxLines: null,
      style: GoogleFonts.poppins(color: AppColors.black, fontSize: 24, fontWeight: FontWeight.w300),
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(color: AppColors.black.withAlpha(100), fontSize: 24, fontWeight: FontWeight.w300),
        border: const UnderlineInputBorder(),
      ),
    );
  }
}

class TextFieldDesc extends StatelessWidget {
  final String hintText;
  final TextEditingController textEditingController;

  const TextFieldDesc(
      {super.key, required this.hintText, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return TextField(
        style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w300, color: AppColors.black),
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w300, color: AppColors.black.withAlpha(100)),
          alignLabelWithHint: true,
        ),
        keyboardType: TextInputType.multiline,
        minLines: 1,
        maxLines: null,
    );
  }
}
