import 'package:flutter/cupertino.dart';
import 'package:study/screen/registration/reg_screen.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFFF3F4F6),
      navigationBar: CupertinoNavigationBar(
        border: Border(),
        padding: EdgeInsetsDirectional.fromSTEB(0, 11, 0, 13),
        backgroundColor: CupertinoColors.white,
        middle: Text(
          'Авторизация',
          style: TextStyle(color: CupertinoColors.black),
        ),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CupertinoTextField(
              placeholder: 'Логин или почта',
              placeholderStyle: TextStyle(
                color: Color(0x99808080),
              ),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
            ),
            CupertinoTextField(
              placeholder: 'Пароль',
              placeholderStyle: TextStyle(
                color: Color(0x99808080),
              ),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
            ),
            SizedBox(height: 32),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CupertinoButton(
                  color: Color(0xFF4631D2),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Войти',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.white),
                  ),
                  onPressed: () {},
                )),
            SizedBox(height: 19),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CupertinoButton(
                  color: Color(0xFF4631D2),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text('Зарегистрироваться',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: CupertinoColors.white)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => RegScreen()),
                    );
                  },
                ))
          ]),
    );
  }
}
