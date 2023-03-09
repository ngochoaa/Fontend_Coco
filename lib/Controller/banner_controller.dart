
import 'package:cocotea_eco/Models/bannerdb.dart';
import 'package:cocotea_eco/Service/remote_services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class BannerController extends GetxController{
  var box = GetStorage();
  var isLoading = false;
  List<Banners> bannerData = [];

  @override
  void onInit() {
    fetchCarousel();
    if(box.read('bannerData') != null)
      bannerData.assignAll(box.read('bannerData'));
    super.onInit();
  }

  void fetchCarousel() async {
    try{
      isLoading = true;
      update();

      List<Banners> _data = await RemoteService.fetchCarouselData();
      if(_data != null){
        bannerData.assignAll(_data);
        box.write('bannerData', _data);
      }
    }finally{
      isLoading = false;
      update();
      print('data fetch done');
    }
  }
}