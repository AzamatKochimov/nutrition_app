// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class Onboarding extends StatefulWidget {
//   const Onboarding({super.key});
//
//   @override
//   _OnboardingState createState() => _OnboardingState();
// }
//
// class _OnboardingState extends State<Onboarding> {
//   int currentIndex = 0;
//   late PageController _controller;
//
//   @override
//   void initState() {
//     _controller = PageController(initialPage: 0);
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: PageView.builder(
//               controller: _controller,
//               itemCount: contents.length,
//               onPageChanged: (int index) {
//                 setState(() {
//                   currentIndex = index;
//                 });
//               },
//               itemBuilder: (_, i) {
//                 return Padding(
//                   padding: const EdgeInsets.all(40),
//                   child: Column(
//                     children: [
//                       SvgPicture.asset(
//                         contents[i].image,
//                         height: 300,
//                       ),
//                       Text(
//                         contents[i].title,
//                         style: const TextStyle(
//                           fontSize: 35,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       Text(
//                         contents[i].discription,
//                         textAlign: TextAlign.center,
//                         style: const TextStyle(
//                           fontSize: 18,
//                           color: Colors.grey,
//                         ),
//                       )
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               contents.length,
//                   (index) => buildDot(index, context),
//             ),
//           ),
//           Container(
//             height: 60,
//             margin: const EdgeInsets.all(40),
//             width: double.infinity,
//             child: MaterialButton(
//               onPressed: () {
//                 if (currentIndex == contents.length - 1) {
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                       builder: (_) => Home(),
//                     ),
//                   );
//                 }
//                 _controller.nextPage(
//                   duration: const Duration(milliseconds: 100),
//                   curve: Curves.bounceIn,
//                 );
//               },
//               color: Theme.of(context).primaryColor,
//               textColor: Colors.white,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Text(
//                   currentIndex == contents.length - 1 ? "Continue" : "Next"),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   Container buildDot(int index, BuildContext context) {
//     return Container(
//       height: 10,
//       width: currentIndex == index ? 25 : 10,
//       margin: const EdgeInsets.only(right: 5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Theme.of(context).primaryColor,
//       ),
//     );
//   }
// }
//
// class UnbordingContent {
//   String image;
//   String title;
//   String discription;
//
//   UnbordingContent({required this.image, required this.title, required this.discription});
// }
//
// List<UnbordingContent> contents = [
//   UnbordingContent(
//       title: 'Quality Food',
//       image: 'images/quality.svg',
//       discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
//           "industry's standard dummy text ever since the 1500s, "
//           "when an unknown printer took a galley of type and scrambled it "
//   ),
//   UnbordingContent(
//       title: 'Fast Delevery',
//       image: 'images/delevery.svg',
//       discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
//           "industry's standard dummy text ever since the 1500s, "
//           "when an unknown printer took a galley of type and scrambled it "
//   ),
//   UnbordingContent(
//       title: 'Reward surprises',
//       image: 'images/reward.svg',
//       discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
//           "industry's standard dummy text ever since the 1500s, "
//           "when an unknown printer took a galley of type and scrambled it "
//   ),
// ];