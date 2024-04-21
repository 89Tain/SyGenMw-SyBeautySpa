import 'package:flutter/material.dart';
import '../../constants/constants.dart';

// ignore: must_be_immutable
class BookingItem extends StatelessWidget {
  String datetime = '';
  String name = '';
  String specialty = '';
  String price = '';

  BookingItem(
      {super.key,
      required this.price,
      required this.specialty,
      required this.datetime,
      required this.name});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
              child: SizedBox(
                height: 70,
                width: 70,
                child: Image.asset('assets/icons/booking.png'),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  specialty,
                  style: TextStyle(
                      color: Constants().secondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.money,
                        color: Constants().primaryColor, size: 15),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      price,
                      style: const TextStyle(color: Colors.pink),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.calendar_today,
                        color: Constants().primaryColor, size: 15),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      datetime,
                      style: const TextStyle(color: Colors.pink),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
