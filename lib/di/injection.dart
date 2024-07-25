import 'package:get_it/get_it.dart';
import 'module/cubit_module.dart';
import 'module/local_module.dart';
import 'module/remote_module.dart';
import 'module/repository_module.dart';

final getIt = GetIt.instance;

Future<void> setupDI() async {
  // Local data sources
  await LocalModule.initModule();
  // Repository sources
  await RepositoryModule.initModule();
  // Cubit sources
  await CubitModule.initModule();
  // Remote sources
  await RemoteModule.initModule();
}