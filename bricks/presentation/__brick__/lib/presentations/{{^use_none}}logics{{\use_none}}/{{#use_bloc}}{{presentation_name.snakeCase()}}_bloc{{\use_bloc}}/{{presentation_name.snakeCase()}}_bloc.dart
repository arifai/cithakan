import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../logic_statuses.dart';

part '{{presentation_name.snakeCase()}}_event.dart';
part '{{presentation_name.snakeCase()}}_state.dart';

/// {@template {{presentation_name.snakeCase()}}_bloc}
/// Bloc for the {{presentation_name.pascalCase()}} presentation.
/// {@endtemplate}
@Injectable() 
final class {{presentation_name.pascalCase()}}Bloc extends Bloc<{{presentation_name.pascalCase()}}Event, {{presentation_name.pascalCase()}}State> {
  /// {@macro {{presentation_name.snakeCase()}}_bloc}
  {{presentation_name.pascalCase()}}Bloc() : super(const {{presentation_name.pascalCase()}}State()) {
    on<Loading{{presentation_name.pascalCase()}}Event>(_doLoading);
  }

  void _doLoading(Loading{{presentation_name.pascalCase()}}Event event, Emitter<{{presentation_name.pascalCase()}}State> emit) async {
    emit(state.copyWith(status: LogicStatuses.loading));
  }
}