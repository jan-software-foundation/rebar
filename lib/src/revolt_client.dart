export 'revolt_client.dart';

import 'package:dartvolt/dartvolt.dart';

var clientConfig = ClientConfig(
    apiUrl: 'https://api.revolt.chat',
    debug: true,
    user_agent: 'Rebar/1.0 (+https://github.com/janderedev/rebar)'
);
Client? client;

Future<Client> createClient(SessionInfo auth, { ClientConfig? config }) async {
    if (client != null) throw 'Client already exists';
    config ??= clientConfig;

    client = Client(config);
    await (client as Client).useExistingSession(auth)
        .catchError((error) {
            // Delete the client if authentication failed
            client = null;
            throw error;
        });

    return client as Client;
}
