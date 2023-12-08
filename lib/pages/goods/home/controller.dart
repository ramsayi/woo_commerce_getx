import 'package:get/get.dart';
import 'package:woo/common/index.dart';

class HomeController extends GetxController {
  HomeController();

  // Banner 当前位置
  int bannerCurrentIndex = 0;

  // Banner 数据
  List<KeyValueModel> bannerItems = [];

  // Banner 切换事件
  void onChangeBanner(int index, /*CarouselPageChangedReason*/ reason) {
    bannerCurrentIndex = index;
    update(["home_banner"]);
  }

  _initData() async {
    // 首页
    // banner
    bannerItems = await SystemApi.banners();

    update(["home"]);
  }
  void onTap() {}

  // 导航点击事件
  void onAppBarTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
