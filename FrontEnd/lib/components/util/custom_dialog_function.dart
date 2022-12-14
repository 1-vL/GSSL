import 'package:GSSL/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDialogWithFunction extends StatelessWidget {
  String text = "";
  Function _func;

  CustomDialogWithFunction(this.text, this._func);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)), //this right here
      child: Container(
        height: 100.h,
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.w, 10.h, 20.w, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Title(
                color: btnColor,
                child: Text(text, style: TextStyle(fontSize: 15.sp)),
              ),
              Container(
                width: 60.w,
                margin: EdgeInsets.fromLTRB(0, 10.h, 0, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(0),
                    backgroundColor: btnColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                    _func();
                  },
                  child: Text(
                    "확인",
                    style: TextStyle(color: nWColor),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
