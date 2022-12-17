import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllTextField extends StatefulWidget {
  AllTextField({Key? key, this.hintText, this.textInputType}) : super(key: key);
  String? hintText;
  TextInputType? textInputType;
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
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 1,
            offset: Offset(2, 0),
          ),
        ],
      ),
      height: 50,
      child: TextField(
        keyboardType: widget.textInputType,
        style: GoogleFonts.roboto(fontSize: 20),
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
