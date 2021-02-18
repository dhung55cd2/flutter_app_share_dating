import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final double heightTF;
  final double widthTF;
  final double radiusTF;
  final double sizehintTextTF;
  final String hintTextTF;
  final String Function(String) validator;
  final void Function(String, bool) onChanged;
  const CustomTextField({Key key, this.heightTF, this.widthTF, this.radiusTF, this.hintTextTF, this.sizehintTextTF, this.validator, this.onChanged,}) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String _error;
  void onChanged(String value) {
    if(widget.onChanged == null)
      return;
    if (widget.validator != null) {
      setState(() {
        _error = widget.validator(value);
        widget.onChanged(value, _error == null);
      });
    } else {
      widget.onChanged(value, true);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.widthTF, height: widget.heightTF,
      decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(widget.radiusTF)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(style: TextStyle(color: Colors.black26, fontSize: widget.sizehintTextTF),
          // InputDecoration.collapsed là xóa đi dấu gạch chân bên dưới
          decoration: InputDecoration.collapsed(hintText: widget.hintTextTF,),
        ),
      ),
    );
  }
}