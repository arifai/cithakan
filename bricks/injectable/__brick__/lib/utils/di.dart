import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

/// Define [GetIt] instance.
final GetIt getIt = GetIt.instance;

/// Initialize [GetIt] for dependencies injection. Can used in `main()` method
/// inside `main.dart` file or inside `setUp()` method when using testing.
///
/// Example inside `main.dart`.
/// ```dart
/// void main() async {
///   WidgetsFlutterBinding.ensureInitialized();
///   await configureDI();
/// }
/// ```
///
/// Example inside testing file.
/// ```dart
/// setUp(() async {
///   TestWidgetsFlutterBinding.ensureInitialized();
///   await configureDI(true);
/// })
/// ```
@InjectableInit()
void configureDI() => getIt.init();
