import 'package:flutter/material.dart';
import 'package:swamedia_tes/core/utils/helper.dart';

class LoadingWidget extends StatelessWidget {
  final double? progress;
  final String? label;
  final Color? backgroundColor;
  final Color? labelColor;
  const LoadingWidget(
      {Key? key,
        this.progress,
        this.label,
        this.backgroundColor,
        this.labelColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: backgroundColor ?? Colors.black.withOpacity(0.3),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ),
            if (label != null) vspace(20),
            if (label != null)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: Text(
                    label!,
                    style: TextStyle(fontSize: 14, color: labelColor ?? Colors.white)
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}