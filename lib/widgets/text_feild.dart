import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Feild extends StatefulWidget {
  final String name;
  final IconData icon;
  final String? errorMessage;
  final IconData? passwordIcon;
  final TextEditingController controller;
  bool? hideText;
  Feild({
    super.key,
    required this.name,
    required this.icon,
    this.passwordIcon,
    this.errorMessage,
    required this.controller,
    this.hideText,
    });

  @override
  State<Feild> createState() => _FeildState();
}

class _FeildState extends State<Feild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(left:20,right:20),
      child: TextField(
        obscureText: (widget.hideText == null) ? false : widget.hideText!,
        controller: widget.controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: widget.name,
          prefixIcon: Icon(widget.icon,color:Colors.black),
          errorText: widget.errorMessage,
          suffixIcon: widget.passwordIcon !=null
          ? IconButton(
            onPressed: (){
            setState(() {
              widget.hideText=!widget.hideText!;
            });
          }, 
          icon: Icon(widget.passwordIcon,color:Colors.black),
          )
          :null,
        ),
      ),
    );
  }
}