import 'package:amazon_clone1/features/account/widgets/account_buttons.dart';
import 'package:flutter/material.dart';

class TopButtons extends StatefulWidget {
  const TopButtons({super.key});

  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButton(text: 'Your Orders', onTap: () {}),
            AccountButton(text: 'Turn Seller', onTap: () {})
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            AccountButton(text: 'Logout', onTap: () {}),
            AccountButton(text: 'Your Wishlist', onTap: () {})
          ],
        )
      ],
    );
  }
}
