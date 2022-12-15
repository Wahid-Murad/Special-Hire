import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllTextField extends StatefulWidget {
  AllTextField({Key? key, this.hintText}) : super(key: key);
  String? hintText;
  TextEditingController? textEditingController;
  @override
  State<AllTextField> createState() => _AllTextFieldState();
}

class _AllTextFieldState extends State<AllTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
        boxShadow: [
          const BoxShadow(
            color: Colors.black45,
            blurRadius: 2,
            offset: Offset(0, 0),
          ),
        ],
      ),
      height: 50,
      child: TextField(
        keyboardType: TextInputType.text,
        style: GoogleFonts.roboto(),
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(top: 5, left: 10),
          hintStyle: GoogleFonts.roboto(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
