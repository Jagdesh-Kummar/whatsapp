// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const ChatPage());
}

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            // ignore: sort_child_properties_last
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: Color(0xff128C7E),
                borderRadius: BorderRadius.circular(75),
              ),
              child: Icon(
                Icons.message,
                size: 30,
                color: Colors.white,
              ),
            ),
            bottom: 20,
            right: 15,
          ),
          ListView(
            children: [
              customlisttile(
                  "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80",
                  'Jagdesh kumar',
                  Icons.done_all,
                  'hi how are you?',
                  '7:43 pm',
                  Colors.blue),
              customlisttile(
                  "https://imageio.forbes.com/specials-images/imageserve/60ab995dbe7dcc922ab5b642/FRANCE-ART-LUXURY-MUSUEM/1960x0.jpg?format=jpg&width=960",
                  'Danish kumar',
                  Icons.done_all,
                  'ha yar kahan ho',
                  '1:23 am',
                  Colors.blue),
              customlisttile(
                  "https://cdn.hswstatic.com/gif/play/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg",
                  'Jeevat kumar',
                  Icons.done_all,
                  'Eid mubarak',
                  '10:07 pm'),
              customlisttile(
                  "https://i.insider.com/5cb8b133b8342c1b45130629?width=1136&format=jpeg",
                  'Ayesha',
                  Icons.done,
                  'Good night',
                  '12:56 am'),
              customlisttile(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTesYHGP4l74PIcF3vMXOqYTxF_0KQ1E3kegg&usqp=CAU",
                  'Sanwan Malik',
                  Icons.done_all,
                  'Same to you',
                  '6:00 pm',
                  Colors.blue),
              customlisttile(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuobcN4-OrcPsoLF0qzowgRh32YQ_O0EjhHdt5TRBnQWOkFqrbi_-2JnpFtzCC0XIZ0V0&usqp=CAU",
                  'Roman reigns',
                  Icons.done,
                  'first roza kab hai',
                  'Yesterday'),
              customlisttile(
                  "https://www.discoverwalks.com/blog/wp-content/uploads/2022/01/776px-tom_hanks_tiff_2019.jpg",
                  'Sir Keshif',
                  Icons.done_all,
                  'Chal sahi hai',
                  'Yesterday'),
              customlisttile(
                  "https://st.depositphotos.com/1814084/1733/i/950/depositphotos_17334133-stock-photo-johnny-depp.jpg",
                  'Jones nick',
                  Icons.done_all,
                  'Thank you ali',
                  '07/03/2023',
                  Colors.blue),
              customlisttile(
                  "https://i.dawn.com/primary/2021/10/616940cb17834.png",
                  'Mahair khan',
                  Icons.done,
                  'hi how are you?',
                  '07/03/2023'),
              customlisttile(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAM7JjzuXrpaoYpK8LsHcqrXkbfk4ygxYPR3rabPrvzDmKG5JrSgJ2gRF5N53eAu14nnU&usqp=CAU",
                  'Imarn khan ',
                  Icons.done_all,
                  'ok by good night',
                  '07/05/2023',
                  Colors.blue),
            ],
          ),
        ],
      ),
    );
  }
}

customlisttile(img, title, icon, sub, trailing, [color]) {
  return ListTile(
    leading: CircleAvatar(radius: 25, backgroundImage: NetworkImage(img)),
    title: Text(
      '$title',
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    subtitle: Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text('$sub', style: const TextStyle(fontSize: 16)),
      ],
    ),
    trailing: Text('$trailing'),
    onTap: () {},
  );
}
