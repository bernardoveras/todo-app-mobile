import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/src/common/components/components.dart';
import 'package:todo_app/src/common/components/textfield/date_time_text_field.dart';
import 'create_todo_controller.dart';

class CreateTodoPage extends StatefulWidget {
  @override
  _CreateTodoPageState createState() => _CreateTodoPageState();
}

class _CreateTodoPageState
    extends ModularState<CreateTodoPage, CreateTodoController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).viewInsets.bottom + 320,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -10,
            child: Container(
              height: 4,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "TASK INFORMATIONS",
                    style: TextStyle(
                      fontFamily: 'InterBold',
                      fontSize: 16,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  SizedBox(height: 25),
                  KaytaTextField(
                    elevation: 0,
                    labelText: "O que você está planejando?",
                    autofocus: true,
                    onChanged: controller.setTitle,
                  ),
                  SizedBox(height: 25),
                  KaytaDateTimeTextField(
                    initialValue: DateTime.now().toString(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2100),
                    dateLabelText: 'Para quando?',
                    dateHintText: "DateHintText",
                    calendarTitle: "Para quando?",
                    onChanged: (val) => controller.setDate(val),
                    onSaved: (val) => controller.setDate(val),
                    labelText: "Pra quando está planejando?",
                    hintText: "Pra quando está planejando?",
                  ),
                  SizedBox(height: 25),
                  KaytaButton(
                    "CRIAR A TAREFA",
                    onTap: () {
                      Modular.to.pop();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
