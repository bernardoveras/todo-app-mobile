import 'package:flutter/material.dart';
import 'package:todo_app/src/common/components/avatar/avatar.dart';
import 'package:todo_app/src/common/components/textfield/search_textfield.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 17,
          left: 25,
          right: 25,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text(
                  'Bem-vindo de volta,',
                  style: TextStyle(
                    fontFamily: 'InterRegular',
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'Bernardo!',
                  style: TextStyle(
                    fontFamily: 'InterBold',
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            Positioned(
              right: 0,
              top: 20,
              child: KaytaAvatar(
                initialString: "B",
              ),
            ),
            Positioned(
              bottom: -30,
              height: 60,
              width: MediaQuery.of(context).size.width - 50,
              child: Center(
                child: KaytaSearchTextField(
                  elevation: 4,
                  hintText: "Pesquisar suas tarefas...",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
