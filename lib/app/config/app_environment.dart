class AppEnvironment {
  final String name;
  final String baseUrl;
  final String path;
  final String adminToken;

  const AppEnvironment._({
    required this.name,
    required this.baseUrl,
    required this.path,
    required this.adminToken,
  });

  static late final AppEnvironment instance;

  factory AppEnvironment.dev() {
    const env = AppEnvironment._(
        name: 'development',
        baseUrl: 'https://apps-api-elearning-l6qjx7umtq-uc.a.run.app',
        path: '/api/v1',
        adminToken: 'fc5805d5-4e3f-11ed-98b0-fa163efd7b12');
    instance = env;

    return env;
  }

  factory AppEnvironment.prod() {
    const env = AppEnvironment._(
        name: 'production',
        baseUrl: 'https://apps-api-elearning-l6qjx7umtq-uc.a.run.app',
        path: '/api/v1/',
        adminToken: 'fc5805d5-4e3f-11ed-98b0-fa163efd7b12');
    instance = env;

    return env;
  }
}
