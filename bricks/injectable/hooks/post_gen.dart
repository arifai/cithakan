import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  _runAddDependencies(context);
}

void _runAddDependencies(HookContext context) async {
  final progress = context.logger.progress('Adding dependencies');

  await Process.run('flutter', ['pub', 'add', 'get_it']);
  await Process.run('flutter', ['pub', 'add', 'injectable']);
  await Process.run('flutter', ['pub', 'add', '--dev', 'build_runner']);
  await Process.run('flutter', ['pub', 'add', '--dev', 'injectable_generator']);

  progress.complete();
}
