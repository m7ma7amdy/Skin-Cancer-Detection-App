import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const UserTile({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
  onTap: onTap,
  child: Container(
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(
          color: Colors.white,
              width: 2
        ),
      //     bottom: BorderSide(
      //     color: Colors.white,
      //     width: 2
      // )
      ),
      color: Color.fromRGBO(22, 121, 113, 1.0),
      borderRadius: BorderRadius.circular(50),
    ),
    margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 25),
    padding: const EdgeInsets.all(20),
    child: Row(
      children: [
        const Icon(Icons.person,color: Colors.white,),
        const SizedBox(width: 20,),
        // User name content here
        Text(text,style: TextStyle(color: Colors.white),),
      ],
    ),
  ),
);

}
}