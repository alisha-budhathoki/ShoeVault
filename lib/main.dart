import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shoe_vault/core/di/locator.dart';
import 'package:shoe_vault/shoe_vault_app.dart';

void main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  debugDisableShadows = true;
  runApp(ShoeVaultApp());
}
