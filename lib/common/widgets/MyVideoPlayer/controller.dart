import 'package:flutter_meedu_videoplayer/meedu_player.dart';
import 'package:get/get.dart';

class MyVideoPlayerController extends GetxController {
  late  MeeduPlayerController _meeduPlayerController;
  late String _title="plauyMode:${playMode ? "视频模式":"图片模式"}";

  String get title {
    return "plauyMode:${playMode ? "视频模式":"图片模式"}";
  }

  MeeduPlayerController get meeduPlayerController => _meeduPlayerController;
  final String videoUrl;
  final String? poster;
  double aspectRatio;
  //当前播放模式  false 是 为占位图片的模式     true 的时候为视频组件模式
  bool playMode = false;
  bool initialized = false;
  MyVideoPlayerController(
      {required this.videoUrl, this.poster, this.aspectRatio = 1});
  _initData() {
    /*//初始化videoPlayer 控制器
    print("meeduPlayerController 初始化了");
    _meeduPlayerController = MeeduPlayerController(
      controlsStyle: ControlsStyle.primary,
    );
    _meeduPlayerController
        .setDataSource(
            DataSource(type: DataSourceType.network, source: videoUrl),
            autoplay: false)
        .then((value){
            this.aspectRatio = _meeduPlayerController.getAspectRatio();
            update(['videoPlayer']);
        });*/

    update(['videoPlayer']);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _initData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement dispose

    print("_meeduPlayerController close:${title}");
    try {
      if(initialized){
        _meeduPlayerController.dispose().then((value){
          playMode = false;
          update(['videoPlayer']);
        });
      }
    }catch(e){
      print(e);
    }
  }

  updateVideoUrl(String videoUrl) {
    //_meeduPlayerController.dispose();
    // _meeduPlayerController = MeeduPlayerController(
    //   controlsStyle: ControlsStyle.primary,
    // );
    _meeduPlayerController.setDataSource(
        DataSource(type: DataSourceType.network, source: videoUrl),
        autoplay: false).then((value){
      this.aspectRatio = _meeduPlayerController.getAspectRatio();
      update(['videoPlayer']);
    });
  }

  /**
   * 更新展示模式
   */
  Future<void> changePlayMode() async{
    if(!playMode){//图片模式
      if(initialized){
        return;
      }
      //初始化videoPlayer 控制器
      print("meeduPlayerController 开始初始化了");
      _meeduPlayerController = MeeduPlayerController(
        controlsStyle: ControlsStyle.primary,
        controlsEnabled: false,
      );
      initialized = true;
      print("meeduPlayerController 设置播放源");
      await _meeduPlayerController //设置播放地址
          .setDataSource(
          DataSource(type: DataSourceType.network, source: videoUrl),
          autoplay: true);
      var videoPlayerController = _meeduPlayerController.videoPlayerController;
      videoPlayerController?.addListener(() {
        if(_meeduPlayerController.playerStatus.completed){
          if(playMode){
            playMode=!playMode;
            update(['videoPlayer']);
          }
        }
      });
      //视频初始化完成  开启播放
      print("meeduPlayerController 播放源初始化完成  更新界面");
      playMode=!playMode;
      update(['videoPlayer']);
    }else{ //视频模式  将当前视频停止播放  并且 dispose
      if(!initialized){
        return;
      }
      try {
        await _meeduPlayerController.dispose();
        initialized = false;
      }catch(e){
        print(e);
      }
      playMode = !playMode;
      update(['videoPlayer']);
    }
  }
}
