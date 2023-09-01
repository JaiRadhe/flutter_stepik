import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegScreenState();
}

class RegScreenState extends State<RegScreen> {
  bool hidePass = true;
  final OverlayEntry overlayEntry = OverlayEntry(builder: (context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      child: Material(
        child: Container(
          color: Colors.black54,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Вы успешно зарегистрированы',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ),
    );
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFFF3F4F6),
      navigationBar: const CupertinoNavigationBar(
        border: Border(),
        backgroundColor: CupertinoColors.white,
        middle: Text(
          'Регистрация',
          style: TextStyle(color: CupertinoColors.black),
        ),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 32),
            const CupertinoTextField(
              placeholder: "Логин",
              placeholderStyle: TextStyle(
                color: Color(0xFFC3C3C3),
              ),
              style: TextStyle(color: CupertinoColors.black),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
            ),
            const CupertinoTextField(
              placeholder: "Телефон",
              placeholderStyle: TextStyle(
                color: Color(0xFFC3C3C3),
              ),
              style: TextStyle(color: CupertinoColors.black),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
            ),
            const CupertinoTextField(
              placeholder: "Почта",
              placeholderStyle: TextStyle(
                color: Color(0xFFC3C3C3),
              ),
              style: TextStyle(color: CupertinoColors.black),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
            ),
            // SizedBox(height: 5),
            CupertinoTextField(
              obscureText: hidePass,
              placeholder: "Пароль",
              placeholderStyle: TextStyle(
                color: Color(0xFFC3C3C3),
              ),
              style: TextStyle(color: CupertinoColors.black),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
              ),
              padding: const EdgeInsets.fromLTRB(16, 19, 16, 21),
              suffix: Padding(
                //паддинги у иконки не такие же как в фигме, потому что не стал копировать иконку из фигмы,
                // тк там нет второй с открытым глазом, а подбирать парную такое себе
                padding: const EdgeInsets.fromLTRB(0, 21, 16, 12),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        hidePass = !hidePass;
                      });
                    },
                    child: Icon(
                      hidePass
                          ? Icons.visibility_off_sharp
                          : Icons.visibility_sharp,
                      color: CupertinoColors.black,
                    )),
              ),
            ),
            const Spacer(),
            Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: CupertinoButton(
                  child: const Text("Создать аккаунт",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: CupertinoColors.white)),
                  color: Color(0xFF4631D2),
                  padding: const EdgeInsets.symmetric(
                    vertical: 19,
                  ),
                  onPressed: () {
                    Overlay.of(context)?.insert(overlayEntry);
                    Future.delayed(Duration(seconds: 2), () {
                      overlayEntry.remove();
                    });
                    Navigator.pop(context);
                  },
                )),
          ]),
    );
  }
}
