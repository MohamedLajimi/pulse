import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pulse/shared/presentation/blocs/app_user/app_user_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:pulse/app.dart';
import 'package:pulse/core/config/env_config.dart';
import 'package:pulse/core/di/service_locator.dart';
import 'package:pulse/shared/data/models/profile_model_adapter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: .light,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: .light,
    ),
  );

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await dotenv.load(fileName: '.env');

  await Supabase.initialize(
    url: EnvConfig.supabaseUrl,
    anonKey: EnvConfig.supabaseAnonKey,
  );

  await Hive.initFlutter();
  Hive.registerAdapter(ProfileModelAdapter());

  await initDependencies();

  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (context) => sl<AppUserBloc>())],
      child: const PulseApp(),
    ),
  );
}
