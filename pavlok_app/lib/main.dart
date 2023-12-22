import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:pavlok_app/core/app/di.dart';


import 'features/auth/models/user.dart';

late User user ;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting();


  runApp(const Di());
}
