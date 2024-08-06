part of '{{presentation_name.snakeCase()}}_bloc.dart';

/// {@template {{presentation_name.snakeCase()}}_event}
/// Event for the {{presentation_name.pascalCase()}} presentation.
/// {@endtemplate}
sealed class {{presentation_name.pascalCase()}}Event extends Equatable {}

/// {@template Initialize{{presentation_name.pascalCase()}}Event}
/// Event for the initialization of the {{presentation_name.pascalCase()}} presentation.
/// {@endtemplate}
final class Initialize{{presentation_name.pascalCase()}}Event extends {{presentation_name.pascalCase()}}Event {
  Initialize{{presentation_name.pascalCase()}}Event();

  @override
  List<Object?> get props => [];
}