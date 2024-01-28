//API base url

const String baseUrl = 'https://disneyland.wardrobesetc.com/api/v1';

//API endpoints
const String authEndpoint = '/Auth';
const String adminEndpoint = '/Admin';
const String usersEndpoint = '/User';
const String disneylandEndPoint = '/Disneyland';
const String voteEndpoint = '/Vote';

/// Print Long String
void printLongString(String text) {
  final RegExp pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((RegExpMatch match) => print(match.group(0)));
}
