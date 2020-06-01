part of '../chat.dart';
class ChatInput extends StatefulWidget {
  static String input="";
  static TextEditingController  inputController=new TextEditingController.fromValue(
    TextEditingValue(
      text: input,
      // selection: TextSelection(baseOffset: 0, extentOffset: input.length),
    )
  );
  @override
  _ChatInputState createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none
          ),
          controller: ChatInput.inputController,
        ),
      ),
    );
  }
}