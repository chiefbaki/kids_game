import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_game/core/consts/app_color.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/data/provider/profile_info.dart';
import 'package:kids_game/presentation/blocs/categorybloc/category_bloc.dart';


class WordsScreen extends StatelessWidget {
  const WordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CategoryBloc>(context).add(GetListCategories());
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: AppColors.bgColor,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
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
                      context.watch<CharacterInfoProvider>().model!.nameOfCharacter,
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
                          context.watch<CharacterInfoProvider>().model!.photoOfCharacteForProfile,
                        ))
                  ],
                ),
                BlocConsumer<CategoryBloc, CategoryState>(
                  
                  listener: (context, state) {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> ))
                    print("work");
                  },
                  builder: (context, state) {
                    if (state is CategorySuccess) {
                      print("work success");
                      return Expanded(
                          child: ListView.builder(
                              itemCount: state.model.length,
                              itemBuilder: (context, i) {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () {
                                    print("object$i");
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
                    } else if (state is CategoryLoading) {
                      return const Padding(
                          padding: EdgeInsets.only(top: 300),
                          child: CircularProgressIndicator.adaptive(
                            backgroundColor: Colors.white,
                          ));
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
