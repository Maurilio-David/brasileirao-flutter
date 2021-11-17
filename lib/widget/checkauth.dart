import 'package:brasileirao/pages/autenticacao_page.dart';
import 'package:brasileirao/pages/home_page.dart';
import 'package:brasileirao/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(() => AuthService.to.userIsAuthenticated.value
        ? HomePage()
        : AutenticacaoPage());
  }
}
