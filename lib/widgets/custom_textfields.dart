import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  
  String hint='';
  bool isPassword=false;
  bool isPhoneNumber=false;
  bool showEdit=false;
  bool hideCharacters=false;
  TextEditingController controller;
  Function()? onPressed;

  CustomTextfield({Key? key, this.onPressed,this.hideCharacters=false, this.showEdit=false,this.isPhoneNumber=false,this.isPassword=false,required this.hint, required this.controller});
  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: const EdgeInsets.only(top:10.0,bottom: 10),
      child: Container(
        height: 40,
        child: TextField(
            
            controller: controller,
            obscureText:hideCharacters?true:false,
            autocorrect: false,
            keyboardType: isPhoneNumber?TextInputType.number:TextInputType.text,
            decoration: InputDecoration(
              suffixIcon: isPassword?GestureDetector(
                onTap: onPressed,
                child: Icon(Icons.visibility),
              ):showEdit?TextButton(child: Text('Edit',style: TextStyle(color: Colors.blue),),onPressed: (){/*Get.to(Homeview());*/},):SizedBox(),
              enabledBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color:Colors.white,width: 1),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            label: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(hint,style: TextStyle(fontSize: 15),),
            ),
            labelStyle: TextStyle(color: Colors.black,fontSize: 20),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[900]),
            //hintText: hint,
            fillColor: Colors.grey[80]),
),
        
      ),
    );
  }
}

