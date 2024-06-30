enum HttpClientEndPoints {
  productList('/products?limit=11&skip=10');


  const HttpClientEndPoints(this.url);
  final String url;
}
