// import 'package:flutter/material.dart';
// import 'package:kids_game/core/consts/app_colors.dart';
// import 'package:kids_game/core/consts/app_fonts.dart';
// import 'package:kids_game/data/model/character_model.dart';
// import 'package:kids_game/presentation/screens/profile_screen.dart';
// import 'package:kids_game/presentation/widgets/character_card.dart';

// class ChooseCharacterScreen extends StatelessWidget {
//   const ChooseCharacterScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//           gradient: LinearGradient(
//               colors: AppColors.bgColor,
//               begin: Alignment.topRight,
//               end: Alignment.bottomRight)),
//       child: Scaffold(
//           body: SafeArea(
//               child: Padding(
//         padding: const EdgeInsets.only(left: 35),
//         child: Center(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 40),
//                 child: Center(
//                   child: Text(
//                     "КААРМАН ТАНДАНЫЗ",
//                     style: AppFonts.s30w600,
//                   ),
//                 ),
//               ),
//               Expanded(
//                   child: ListView.builder(
//                       itemBuilder: (context, index) {
//                         return InkWell(
//                           onTap: () => Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => ProfileScreen(
//                                         nameOfCharacter: CharacterModelList
//                                             .modelList[index].nameOfCharacter,
//                                         profilePhoto: CharacterModelList
//                                             .modelList[index]
//                                             .photoOfCharacteForProfile,
//                                       ))),
//                           child: CharacterCard(
//                             name: CharacterModelList
//                                 .modelList[index].nameOfCharacter,
//                             photo: CharacterModelList
//                                 .modelList[index].photoOfCharacter,
//                             colors:
//                                 CharacterModelList.modelList[index].colorOfCard,
//                             positionRight:
//                                 CharacterModelList.modelList[index].positionRight,
//                           ),
//                         );
//                       },
//                       itemCount: CharacterModelList.modelList.length))
//             ],
//           ),
//         ),
//       ))),
//     );
//   }
// }
