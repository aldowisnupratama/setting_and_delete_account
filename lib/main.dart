import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:setting_and_component/app_route.dart';
import 'package:setting_and_component/cubit/reason_list_tile_cubit.dart';

void main(List<String> args) {
  runApp(const SettingApp());
}

class SettingApp extends StatelessWidget {
  const SettingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => ReasonListTileCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRoute().generateRoute,
      ),
    );
  }
}
