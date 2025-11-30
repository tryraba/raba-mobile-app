import 'package:raba_mobile/src/services/local_storage_service.dart';

abstract class UserStorageService {
  void saveToken(String token);

  String? getToken();

  void clearStorage();
}

class UserStorageServiceImpl implements UserStorageService {
  UserStorageServiceImpl(this._localStorageService);
  final LocalStorageService _localStorageService;

  final _tokenKey = '__token';

  @override
  String? getToken() {
    try {
      return _localStorageService.getPreference(key: _tokenKey);
    } on Exception catch (_) {
      return null;
    }
  }

  @override
  Future<void> saveToken(String token) async {
    try {
      await _localStorageService.savePreference(key: _tokenKey, data: token);
    } on Exception catch (_) {
      return;
    }
  }

  @override
  void clearStorage() {}
}
