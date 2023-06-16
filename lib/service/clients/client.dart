class Client {
  // Prevent from being instantiated
  const Client._();

  // No need to be set in .env file
  // .env file can be de-compiled easily
  // and the api request can be intercepted with root :)
  static const String apiKey = "38c0079aca-fca76500c4-rwcibv";

  static const String baseUrl = "https://api.fastforex.io/";
}
