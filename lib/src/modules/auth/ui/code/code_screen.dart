import 'dart:async';
import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/ui/res/colors/colors.dart';
import 'package:where_to_go_today/src/ui/res/typography/typography.dart';
import 'package:where_to_go_today/src/ui/uikit/base_button.dart';


class CodeScreen extends StatefulWidget{
  const CodeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CodeScreenState();
  }
}

class _CodeScreenState extends State<CodeScreen>{

  late Timer _timer;
  int _start = 30;
  Status _status=Status.inactive;
  TextEditingController _phoneController = TextEditingController();

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState(){
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  bool checkPhone(){
    return true;
  }
  Future<void> sendPhone() async {
    if(checkPhone()){
      setState(() {
        _status=Status.loading;
      });
      await const Duration(seconds: 2);
      setState(() {
        _status=Status.inactive;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 24,right:24,bottom: 55),
        child: BaseButton(
          label: 'Отправить',
          status: _status,
          onPressed: checkPhone,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 46,),
          Center(child:
          Image.asset('assets/images/wtgt.png'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24,vertical: 10),
            child: Container(
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: ProjectColors.buttonStrokeColor),
              ),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    cursorColor: ProjectColors.buttonStrokeColor,
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration.collapsed(
                      hintText: 'Код из смс',
                    ),
                    onChanged: (String value){
                      setState(() {
                        _phoneController.text.isEmpty
                            ? _status = Status.inactive
                            : _status = Status.active;
                        if(_phoneController.text[0]=='8')_phoneController.text[0].replaceFirst('8', '+7');
                        value=_phoneController.text;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 34),
            child: Row(
              children: [
                const Text(
                  'Новый код через: ',
                  style: AppTypography.normal16,
                ),
                Text('$_start сек',
                style: const TextStyle(
                  color: ProjectColors.activeColor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: CodeScreen(),
  ));
}