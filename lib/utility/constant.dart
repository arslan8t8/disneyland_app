//ward robe API base url

const String baseUrl = 'https://disneyland.wardrobesetc.com/api/v1';

//wardrobe API endpoints
const String auth = '/Auth';
const String admin = '/Admin';
// const String users = '/';
// const String favourite = '/Favourite';
// const String brands = '/Brands';
// const String shop = '/shop';
// const String info = '/info';
// const String notification = '/Notification';
// const String promo = '/promo';
// const String items_path = '/Items';
// const String cart = '/cart';
// const String orders = '/orders';
// const String review = '/review';
// const String chat = '/chat';
// const String dashboard = '/Dashborad';

/// Print Long String
void printLongString(String text) {
  final RegExp pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((RegExpMatch match) => print(match.group(0)));
}
