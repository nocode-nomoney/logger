import 'package:logger/src/logger.dart';
import 'package:logger/src/log_output.dart';
import 'dart:io';
import 'dart:developer' as developer;

/// Default implementation of [LogOutput].
///
/// It sends everything to the system console.
class ConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    if (!Platform.isIOS)
      event.lines.forEach(print);
    else
      event.lines.forEach(developer.log);
  }
}
