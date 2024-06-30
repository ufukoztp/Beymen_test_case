enum AppRoutes {
  myProductList('/myProductList'),
  barkodReader('/barkodReader');



  const AppRoutes(this.routeName);
  final String routeName;
}
