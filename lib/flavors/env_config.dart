class EnvConfig {
  final String appsName;
  final String baseUrl;
  final bool shouldCollectCrashLog;

  // late final Logger logger;

  EnvConfig({
    required this.appsName,
    required this.baseUrl,
    this.shouldCollectCrashLog = false,
  }) {
    // logger = Logger(
    //   printer: PrettyPrinter(
    //       methodCount: AppValues.loggerMethodCount,
    //       // number of method calls to be displayed
    //       errorMethodCount: AppValues.loggerErrorMethodCount,
    //       // number of method calls if stacktrace is provided
    //       lineLength: AppValues.loggerLineLength,
    //       // width of the output
    //       colors: true,
    //       // Colorful log messages
    //       printEmojis: true,
    //       // Print an emoji for each log message
    //       printTime: false // Should each log print contain a timestamp
    //   ),
    // );
  }
}