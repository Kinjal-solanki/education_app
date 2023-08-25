import 'package:flutter/material.dart';

class TimeGridView extends StatelessWidget {
  const TimeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_getItemRow(), _getItemRow(), _getItemRow()],
    );
  }

  Widget _getItemCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepOrangeAccent,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(top: 20, right: 10),
      width: 48,
      height: 41,
      child: const Center(
          child: Text(
        'Item',
        textAlign: TextAlign.center,
      )),
    );
  }

  Widget _getItemRow() {
    return Row(
      children: [_getItemCard(), _getItemCard(), _getItemCard()],
    );
  }
}
