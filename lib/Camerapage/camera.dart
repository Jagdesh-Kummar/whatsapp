import 'package:flutter/material.dart';

void main() {
  runApp(const camera());
}

class camera extends StatelessWidget {
  const camera({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(),
          child: const Image(
              image: NetworkImage(
            'https://www.tekimobile.com/wp-content/uploads/2022/03/aprenda-sobre-a-camera-do-whatsapp.webp',
          )),
        ),
      ),
    );
  }
}
