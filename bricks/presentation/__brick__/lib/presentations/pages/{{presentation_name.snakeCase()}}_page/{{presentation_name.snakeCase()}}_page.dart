import 'package:flutter/material.dart';
{{#use_bloc}}
import 'package:flutter_bloc/flutter_bloc.dart';
{{/use_bloc}}

{{#use_cubit}}
import 'package:flutter_bloc/flutter_bloc.dart';
{{/use_cubit}}

{{#use_bloc}}
import '../../logics/{{presentation_name.snakeCase()}}_bloc/{{presentation_name.snakeCase()}}_bloc.dart'; 
import '../../logics/logic_statuses.dart'; 
{{/use_bloc}}

{{#use_cubit}}
import '../../logics/{{presentation_name.snakeCase()}}_cubit/{{presentation_name.snakeCase()}}_cubit.dart'; 
{{/use_cubit}}

{{#use_stateful}}
final class {{presentation_name.pascalCase()}} extends StatefulWidget {
  const {{presentation_name.pascalCase()}}({super.key});

  @override
  State<{{presentation_name.pascalCase()}}> createState() => _{{presentation_name.pascalCase()}}State();
}

class _{{presentation_name.pascalCase()}}State extends State<{{presentation_name.pascalCase()}}> {
  {{#use_cubit}}
  late {{presentation_name.pascalCase()}}Cubit _cubit;

  @override
  void initState() {
    _cubit = context.read<{{presentation_name.pascalCase()}}Cubit>();
    super.initState();
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }
  {{/use_cubit}}

  {{#use_bloc}}
  late {{presentation_name.pascalCase()}}Bloc _bloc;
  
  @override
  void initState() {
    _bloc = context.read<{{presentation_name.pascalCase()}}Bloc>();
    super.initState();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }
  {{/use_bloc}}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('{{presentation_name.titleCase()}}')),
      {{#use_bloc}}
      body: switch (_bloc.state.status) {
        LogicStatuses.initial => const SizedBox.shrink(),
        LogicStatuses.loading => const Center(child: CircularProgressIndicator()),
        LogicStatuses.success => const SizedBox.shrink(),
        LogicStatuses.error => const SizedBox.shrink(),
      },
      {{/use_bloc}}

      {{#use_none}}
      body: const SizedBox.shrink(),
      {{/use_none}}
    );
  }
}
{{/use_stateful}}

{{#use_stateless}}
final class {{presentation_name.pascalCase()}} extends StatelessWidget { 
  const {{presentation_name.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context) {
    {{#use_cubit}}
    final {{presentation_name.pascalCase()}}Cubit cubit = context.read<{{presentation_name.pascalCase()}}Cubit>();
    {{/use_cubit}}

    {{#use_bloc}}
    final {{presentation_name.pascalCase()}}Bloc bloc = context.read<{{presentation_name.pascalCase()}}Bloc>();
    {{/use_bloc}}
    
    return Scaffold(
      appBar: AppBar(title: const Text('{{presentation_name.titleCase()}}')),
      {{#use_bloc}}
      body: switch (bloc.state.status) {
        LogicStatuses.initial => const SizedBox.shrink(),
        LogicStatuses.loading => const Center(child: CircularProgressIndicator()),
        LogicStatuses.success => const SizedBox.shrink(),
        LogicStatuses.error => const SizedBox.shrink(),
      },
      {{/use_bloc}}

      {{#use_none}}
      body: const SizedBox.shrink(),
      {{/use_none}}
    );
  }
}
{{/use_stateless}}