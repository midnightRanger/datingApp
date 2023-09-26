import 'package:dating_app/auth/data/repository/impl/auth_impl.dart';
import 'package:dating_app/auth/data/repository/interface/auth_repository.dart';

class DI {
  static DI? instance;

  late AuthRepository authRepository;

  DI._();

  static DI getInstance() {
    return instance ?? (instance = DI._());
  }

  Future<void> init() async {
    authRepository = AuthRepositoryImpl();
  }
}