import 'package:mason/mason.dart';

void run(HookContext context) async {
  final String widgetType = context.vars['widget_type'];
  final String blocType = context.vars['bloc_type'];
  final progress = context.logger.progress('Generating presentation...');

  context.vars = {
    ...context.vars,
    'use_stateful': widgetType == 'stateful',
    'use_stateless': widgetType == 'stateless',
    'use_bloc': blocType == 'bloc',
    'use_cubit': blocType == 'cubit',
    'use_none': blocType == 'none',
  };

  progress.complete();
}
