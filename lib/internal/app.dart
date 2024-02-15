import 'package:flutter/material.dart';
import 'package:kids_game/core/network/dio_settings.dart';
import 'package:kids_game/data/provider/profile_info.dart';
import 'package:kids_game/domain/repositories/get_category_repository.dart';
import 'package:kids_game/presentation/blocs/categorybloc/category_bloc.dart';
<<<<<<< HEAD
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_game/presentation/screens/quiz_fruits_screen.dart';
import 'package:kids_game/presentation/screens/quiz_story_screen.dart';
import 'package:kids_game/presentation/screens/splash_screen.dart';
=======
import 'package:kids_game/presentation/screen/learn_words_screen.dart';
import 'package:kids_game/presentation/screen/splash_screen.dart';
import 'package:kids_game/presentation/screen/words_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_game/presentation/widgets/test.dart';
import 'package:provider/provider.dart';
>>>>>>> murat-branch

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => DioSettings(),
          ),
          RepositoryProvider(
            create: (context) => GetCategoryRepository(
                dio: RepositoryProvider.of<DioSettings>(context).dio),
          ),
        ],
<<<<<<< HEAD
        child: MaterialApp(
          theme: ThemeData(scaffoldBackgroundColor: Colors.transparent),
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
        ),
      ),
    );
=======
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => CategoryBloc(
                  repository:
                      RepositoryProvider.of<GetCategoryRepository>(context)),
            ),
          ],
          child: ChangeNotifierProvider(
            create: (context) => CharacterInfoProvider(),
            child: MaterialApp(
              theme: ThemeData(scaffoldBackgroundColor: Colors.transparent),
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
            ),
          ),
        ));
>>>>>>> murat-branch
  }
}
