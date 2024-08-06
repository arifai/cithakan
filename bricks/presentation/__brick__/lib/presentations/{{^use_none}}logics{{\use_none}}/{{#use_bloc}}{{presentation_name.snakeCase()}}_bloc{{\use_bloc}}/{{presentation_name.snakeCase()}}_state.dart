part of '{{presentation_name.snakeCase()}}_bloc.dart';

/// {@template {{presentation_name.snakeCase()}}_state}
/// State for the {{presentation_name.pascalCase()}} presentation.
/// {@endtemplate}
final class {{presentation_name.pascalCase()}}State extends Equatable {
  /// {@macro {{presentation_name.snakeCase()}}_state}
  const {{presentation_name.pascalCase()}}State({
    this.status = LogicStatuses.initial,
    this.message,
  });

  final LogicStatuses status;
  final String? message;

  /// Creates a copy of the current {{presentation_name.pascalCase()}}State with new values.
  /// 
  /// If any parameter is not provided, the current value of that parameter
  /// will be used in the new {{presentation_name.pascalCase()}}State.
  ///
  /// Example usage:
  /// ```dart
  /// final {{presentation_name.pascalCase()}}State newState = currentState.copyWith(status: LogicStatuses.success, message: "Login successful");
  /// ```
  copyWith({LogicStatuses? status, String? message}) {
    return {{presentation_name.pascalCase()}}State(
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [status, message];
}