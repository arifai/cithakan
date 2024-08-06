import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic_statuses.dart';

part '{{presentation_name.snakeCase()}}_state.dart';

/// {@template {{presentation_name.snakeCase()}}_cubit}
/// Cubit for the {{presentation_name.pascalCase()}} presentation.
/// {@endtemplate}
final class {{presentation_name.pascalCase()}}Cubit extends Cubit<{{presentation_name.pascalCase()}}State> {
  {{presentation_name.pascalCase()}}Cubit() : super(const {{presentation_name.pascalCase()}}State());

  void loading() => emit(state.copyWith(status: LogicStatuses.loading));
}