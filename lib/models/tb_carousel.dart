part of 'models.dart';

class BannerCarousel extends Equatable {
  final int idBanner;
  final String pathBanner;

  BannerCarousel(this.idBanner,this.pathBanner);

  @override
  List<Object> get props => [pathBanner];
}

List<BannerCarousel> imageList = [
  BannerCarousel(1,'assets/img/banner_home.png'),
  BannerCarousel(2,'assets/img/404.png'),
  BannerCarousel(3,'assets/img/daftar.png'),
];
