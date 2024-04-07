import 'package:flutter/material.dart';

class ProcessElement extends StatelessWidget {
  ProcessElement({super.key, required this.txt});

  final String txt;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 240, 235, 235),
              borderRadius: BorderRadius.circular(30)),
          height: 50,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Spacer(
                  flex: 1,
                ),
                Text(
                  txt,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
                const Spacer(
                  flex: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
