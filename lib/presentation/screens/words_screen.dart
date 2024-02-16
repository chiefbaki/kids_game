import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_game/core/consts/app_color.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/data/model/category_model.dart';
import 'package:kids_game/data/provider/profile_info.dart';
import 'package:kids_game/presentation/blocs/category_bloc/category_bloc.dart';
import 'package:kids_game/presentation/screens/learn_words_screen.dart';

class WordsScreen extends StatelessWidget {
  const WordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CategoryBloc>(context).add(GetListCategories());
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: AppColors.bgColor,
              begin: Alignment.topRight,
              end: Alignment.bottomRight)),
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 39),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context
                          .watch<CharacterInfoProvider>()
                          .model!
                          .nameOfCharacter,
                      style: AppFonts.s40w600
                          .copyWith(color: AppColors.white, shadows: [
                        Shadow(
                            blurRadius: 4,
                            color: Colors.black.withOpacity(0.35),
                            offset: const Offset(0, 4))
                      ]),
                    ),
                    CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          context
                              .watch<CharacterInfoProvider>()
                              .model!
                              .photoOfCharacteForProfile,
                        ))
                  ],
                ),
                BlocBuilder<CategoryBloc, CategoryState>(
                    builder: (context, state) {
                  if (state is CategoryLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is CategorySuccess) {
                    return Expanded(
                        child: ListView.builder(
                            itemCount: state.model.length,
                            itemBuilder: (context, i) {
                              return InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {
                                  print("work");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LearnWordsScreen()));
                                },
                                child: SizedBox(
                                  child: Image.network(
                                    state.model[i].image ?? "",
                                    height: 170,
                                    width: 350,
                                  ),
                                ),
                              );
                            }));
                  } else if (state is CategoryError) {
                    print(state.errorText);
                  }
                  return const SizedBox();
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
