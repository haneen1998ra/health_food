import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RowCodeWidget extends StatelessWidget {
  final String? Function(String?)? validator;
  const RowCodeWidget({Key? key, required this.validator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => SizedBox(
                height: 50,
                width: 50,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(color: Colors.black, width: 1),
                    // shape: BoxShape.circle
                  ),
                  // height: ,
                  // //  size.height * 0.39,
                  // width: 42,
                  //  size.width * 0.42,
                  child: Center(
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      validator: validator,
                      decoration: InputDecoration.collapsed(
                        hintText: "0",
                        border: InputBorder.none,
                      ),
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                    ),
                  ),
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: 6),
    );
  }
}
