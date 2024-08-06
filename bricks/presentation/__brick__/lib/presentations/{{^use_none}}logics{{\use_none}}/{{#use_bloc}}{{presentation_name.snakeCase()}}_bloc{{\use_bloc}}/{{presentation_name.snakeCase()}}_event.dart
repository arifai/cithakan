part of '{{presentation_name.snakeCase()}}_bloc.dart';

/// {@template {{presentation_name.snakeCase()}}_event}
/// Event for the {{presentation_name.pascalCase()}} presentation.
/// {@endtemplate}
sealed class {{presentation_name.pascalCase()}}Event extends Equatable {}

/// {@template Loading{{presentation_name.pascalCase()}}Event}
/// Event for the {{presentation_name.pascalCase()}} presentation.
/// {@endtemplate}
final class Loading{{presentation_name.pascalCase()}}Event extends {{presentation_name.pascalCase()}}Event {
  Loading{{presentation_name.pascalCase()}}Event();

  @override
  List<Object?> get props => [];
}