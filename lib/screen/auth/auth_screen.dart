import 'package:flutter/cupertino.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFFF3F4F6),
      navigationBar: CupertinoNavigationBar(
        border: Border(),
        backgroundColor: CupertinoColors.secondarySystemGroupedBackground,
        middle: Text('Авторизация'),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CupertinoTextField(
              placeholder: 'Логин или почта',
              decoration: BoxDecoration(
                color: CupertinoColors.white,
              ),
            ),
            CupertinoTextField(
              placeholder: 'Пароль',
            ),
            SizedBox(height: 32),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CupertinoButton.filled(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Войти',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                )),
            SizedBox(height: 19),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CupertinoButton(
                  color: Color(0xFF4631D2),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text('Зарегистрироваться'),
                  onPressed: () {},
                ))
          ]),
    );
  }
}
