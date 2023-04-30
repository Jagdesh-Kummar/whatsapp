import 'package:flutter/material.dart';

void main() {
  runApp(const CallPage());
}

class CallPage extends StatelessWidget {
  const CallPage({super.key});

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
                color: const Color(0xff128C7E),
                borderRadius: BorderRadius.circular(75),
              ),
              child: const Icon(
                Icons.add_ic_call,
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
                  "https://e7.pngegg.com/pngimages/383/404/png-clipart-computer-icons-hyperlink-polaris-learning-ltd-links-miscellaneous-blue.png",
                  'Create call link',
                  Icons.call,
                  'Share a link WhatsApp call',
                  Colors.green),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Text(
                    'Recent update',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.9),
                    ),
                  ),
                ),
              ),
              customlisttile(
                  "https://imageio.forbes.com/specials-images/imageserve/60ab995dbe7dcc922ab5b642/FRANCE-ART-LUXURY-MUSUEM/1960x0.jpg?format=jpg&width=960",
                  'Danish kumar',
                  Icons.north_east,
                  '(3) Today, 5:34 pm',
                  Colors.green),
              customlisttile(
                  "https://cdn.hswstatic.com/gif/play/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg",
                  'Jeevat kumar',
                  Icons.south_west,
                  'Today, 6:32 pm',
                  Colors.red),
              customlisttile(
                  "https://i.insider.com/5cb8b133b8342c1b45130629?width=1136&format=jpeg",
                  'Ayesha',
                  Icons.north_east,
                  '(2) Today, 12:55 am',
                  Colors.green),
              customlisttile(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTesYHGP4l74PIcF3vMXOqYTxF_0KQ1E3kegg&usqp=CAU",
                  'Sanwan Malik',
                  Icons.north_east,
                  'Yesterday, 3:37 pm',
                  Colors.green),
              customlisttile(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuobcN4-OrcPsoLF0qzowgRh32YQ_O0EjhHdt5TRBnQWOkFqrbi_-2JnpFtzCC0XIZ0V0&usqp=CAU",
                  'Roman reigns',
                  Icons.south_west,
                  '(4) Yesterday, 1:22 am',
                  Colors.red),
              customlisttile(
                  "https://www.discoverwalks.com/blog/wp-content/uploads/2022/01/776px-tom_hanks_tiff_2019.jpg",
                  'Sir Keshif',
                  Icons.north_east,
                  '9 April, 7:00 pm ',
                  Colors.green),
              customlisttile(
                  "https://st.depositphotos.com/1814084/1733/i/950/depositphotos_17334133-stock-photo-johnny-depp.jpg",
                  'Jones nick',
                  Icons.south_west,
                  '5 March, 3:38 am',
                  Colors.red),
              customlisttile(
                  "https://i.dawn.com/primary/2021/10/616940cb17834.png",
                  'Mahair khan',
                  Icons.south_west,
                  '12 March, 12:05 am',
                  Colors.red),
              customlisttile(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAM7JjzuXrpaoYpK8LsHcqrXkbfk4ygxYPR3rabPrvzDmKG5JrSgJ2gRF5N53eAu14nnU&usqp=CAU",
                  'Imarn khan ',
                  Icons.north_east,
                  '28 March, 1:26 am',
                  Colors.green),
            ],
          ),
        ],
      ),
    );
  }
}

customlisttile(img, title, icon, sub, [color]) {
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
    onTap: () {},
  );
}
