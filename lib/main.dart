import 'package:avaliacao_checkmob/app/core/tab/stores/tab_store.dart';
import 'package:avaliacao_checkmob/app/core/theme/stores/theme_store.dart';
import 'package:avaliacao_checkmob/app/modules/complete_questionnaire/presenter/pages/complete_questionnaire.dart';
import 'package:avaliacao_checkmob/app/modules/historic/presenter/controller/historic_controller.dart';
import 'package:avaliacao_checkmob/app/modules/questionnaire/domain/repositories/questionnaire_repository.dart';
import 'package:avaliacao_checkmob/app/modules/questionnaire/infra/datasources/remote_questionnaires_datasource.dart';
import 'package:avaliacao_checkmob/app/modules/questionnaire/presenter/controller/questionnaire_controller.dart';
import 'package:avaliacao_checkmob/app/utils/routes/main_routes.dart';
import 'package:avaliacao_checkmob/app/utils/themes/app_themes.dart';
import 'package:avaliacao_checkmob/app/app_widget.dart';
import 'package:avaliacao_checkmob/app/splash_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/modules/questionnaire/domain/repositories/interfaces/iquestionnaire_repository.dart';
import 'app/modules/questionnaire_form/presenter/pages/questionaire_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get darkTheme => null;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<RemoteQuestionnaireDatasource>(
          create: (_) {
            return RemoteQuestionnaireDatasource();
          },
        ),
        Provider<IQuestionnaireRepository>(
          create: (ctx) {
            return QuestionnaireRepository(
              Provider.of<RemoteQuestionnaireDatasource>(ctx, listen: false),
            );
          },
        ),
        ChangeNotifierProvider<ThemeStore>(create: (_) => ThemeStore()),
        ChangeNotifierProvider<TabStore>(create: (_) => TabStore()),
        ChangeNotifierProvider<QuestionnaireController>(
          create: (ctx) {
            return QuestionnaireController(
              repository:
                  Provider.of<IQuestionnaireRepository>(ctx, listen: false),
            );
          },
        ),
        ChangeNotifierProvider<HistoricController>(create: (_) {
          return HistoricController();
        }),
      ],
      child: Consumer<ThemeStore>(
        builder: (_, store, __) {
          return MaterialApp(
            theme: AppThemes.light,
            darkTheme: AppThemes.dark,
            themeMode: store.currentMode,
            initialRoute: AppRoutes.splash,
            routes: {
              AppRoutes.splash: (_) => const SplashScreen(),
              AppRoutes.home: (_) => const AppWidget(),
              AppRoutes.completeQuestionnaire: (_) {
                return const CompleteQuestionnaire();
              },
              AppRoutes.questionnaire: (_) {
                return const QuestionnaireForm();
              }
            },
          );
        },
      ),
    );
  }
}
