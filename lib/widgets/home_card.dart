import 'package:flutter/material.dart';

// class HomeCard extends StatelessWidget {
//   const HomeCard({super.key});
//
//   @override
//   Widget build(BuildContext context) => Container(
//     margin: const EdgeInsets.all(20),
//     width: MediaQuery.of(context).size.width * 0.4,
//     decoration: BoxDecoration(
//       color: Colors.grey.withOpacity(0.1),
//       borderRadius: BorderRadius.circular(20),
//     ),
//     padding: const EdgeInsets.all(20),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Header Icon
//         Image.asset('assets/icons/twitter.png', width: 40),
//
//         // Header Text
//         const Padding(
//           padding: EdgeInsets.only(top: 25),
//           child: Text(
//             'Twitter',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//
//         // Header Description
//         const Padding(
//           padding: EdgeInsets.only(top: 5),
//           child: Text(
//             'See what’s happening in the world right now',
//             style: TextStyle(
//               fontSize: 15,
//               color: Colors.grey,
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }

class HomeCard extends StatelessWidget {
  final String headerIcon;
  final String headerText;
  final String headerDescription;
  final VoidCallback onTap;

  const HomeCard({
    super.key,
    required this.headerIcon,
    required this.headerText,
    required this.headerDescription,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Container(
          // margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Icon
          Image.asset(headerIcon, width: 40),

          // Header Text
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              headerText,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Header Description
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              headerDescription,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}