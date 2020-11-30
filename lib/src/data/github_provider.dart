import 'package:github/github.dart';
import 'dart:async';

Future<Repository> getRepository() async {
  var github = GitHub(auth: findAuthenticationFromEnvironment());

  Repository repo = await github.repositories
      .getRepository(RepositorySlug('Flutter-Buddies', 'Your-Destini'));

  return repo;
}
