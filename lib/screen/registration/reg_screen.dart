import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegScreen extends StatelessWidget {
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
          backgroundColor: CupertinoColors.secondarySystemGroupedBackground,
          middle: Text('Регистрация'),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CupertinoTextField(
              placeholder: "Логин",
              placeholderStyle: TextStyle(
                color: Color(0xFF808080),
              ),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
              ),
            ),
            SizedBox(height: 5),
            const CupertinoTextField(
              placeholder: "Электронная почта",
              placeholderStyle: TextStyle(
                color: Color(0xFF808080),
              ),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
              ),
            ),
            SizedBox(height: 5),
            const CupertinoTextField(
              placeholder: "Пароль",
              placeholderStyle: TextStyle(
                color: Color(0xFF808080),
              ),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton.filled(
                  child: const Text("Зарегистрироваться"),
                  onPressed: () {
                    Overlay.of(context)?.insert(overlayEntry);
                    Future.delayed(Duration(seconds: 2), () {
                      overlayEntry.remove();
                    });
                    Navigator.pop(context);
                  }),
            ),
            SizedBox(height: 5),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CupertinoButton(
                    color: const Color(0xFFA3A3A3),
                    child: const Text("Отмена"),
                    onPressed: () {
                      Navigator.pop(context);
                    })
            )
          ],
        ));
  }
}
