import 'package:flutter/material.dart';
import 'package:harry_potter_app/src/core/app_colors.dart';
import 'package:harry_potter_app/src/modules/home/components/characters_list.dart';
import 'package:harry_potter_app/src/shared/components/custom_app_bar.dart';
import 'package:harry_potter_app/src/modules/home/home_controller.dart';
import 'package:harry_potter_app/src/modules/home/home_state.dart';
import 'package:harry_potter_app/src/shared/components/app_loading_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();

  @override
  void initState() {
    homeController.fetchCharacters();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: CustomAppBar(
          onLogoTap: () {
            homeController.scrollController.animateTo(
              0.0,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeIn,
            );
          },
        ),
        body: ValueListenableBuilder<HomeState>(
          valueListenable: homeController.homeStateNotifier,
          builder: (context, state, _) {
            if (state.runtimeType == HomeStateError) {
              final errorState = state as HomeStateError;
              return Center(
                child: Text(errorState.message),
              );
            } else if (state.runtimeType == HomeStateLoading) {
              return const Center(
                child: AppLoadingIcon(),
              );
            } else if (state.runtimeType == HomeStateSuccess) {
              final successState = state as HomeStateSuccess;

              return CharactersList(
                characters: successState.characters,
                controller: homeController.scrollController,
                onRefresh: homeController.refresh,
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
