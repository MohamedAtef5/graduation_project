
import 'package:flutter/material.dart';
import 'package:graduation_project/components/process_element.dart';

class ProcessViewBody extends StatelessWidget {
  const ProcessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffe5e5e5),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProcessElement(
              
              txt: "Record One Word",
              
            ),
            ProcessElement(
              
              txt: "Record two Words ",
              
            ),
            
          ],
        ),
      ),
    );
  }
}
