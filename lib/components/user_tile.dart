
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {



  final String text;
  final void Function()? onTap;
  const UserTile({super.key, required this.text, this.onTap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          children: [

            const Icon(Icons.person), //! might be changable
            SizedBox(width: 20,),
            Text(text)
          ],
        ),
      ),
    ) ;
  }
}