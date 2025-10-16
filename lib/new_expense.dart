import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _costController = TextEditingController();

  @override
  void dispose(){
    _titleController.dispose();
    _costController.dispose();
    super.dispose();
  
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(label: Text("Title")),
          ),
          TextField(
            controller: _costController,
            keyboardType: TextInputType.number,
            inputFormatters: [],
            decoration: InputDecoration(
              prefixText: "\$",
              label: Text("Cost"),
            ),
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () {
                print(_titleController.text);
                print(_costController.text);
              }, child: Text("Save expense")),
            ],
          )
        ],
      ),
    );
  }
}
