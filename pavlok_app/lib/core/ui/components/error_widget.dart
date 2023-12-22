import 'package:flutter/material.dart';
import 'package:pavlok_app/core/extensions/context_extension.dart';

class ErrorInfoWidget extends StatelessWidget {
  const ErrorInfoWidget({super.key, required this.message});
final String message ; 
  @override
  Widget build(BuildContext context) {
    return  Center(child: Column(children: [
      Icon(Icons.error_outline),
      Text(message,style: context.textTheme.bodyMedium,)
    ],),);
  }
}
