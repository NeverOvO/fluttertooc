# fluttertooc Flutter内嵌OC页面的实现

## 首先 在Info.plist中新增

    io.flutter.embedded_views_preview  

## Flutter端核心代码 其中 MyUiKitView 作为一个唯一标识符即可

    Widget getMyPatformView() {
        if (defaultTargetPlatform == TargetPlatform.android) {
          return AndroidView(
            viewType: 'MyUiKitView',
          );
        } else if (defaultTargetPlatform == TargetPlatform.iOS) {
          return UiKitView(
            viewType: 'MyUiKitView',
          );
        }

        return Text('$defaultTargetPlatform is not yet supported by this plugin');
      }

## OC端核心代码

### AppDelegate

新增如下语句 ，MyPlatformViewFactory 为自定义工厂类，MyUiKitView 为相应页面在Flutter中的唯一标识

     MyPlatformViewFactory *myPlatformViewFactory = [[MyPlatformViewFactory alloc] init];
     [[self registrarForPlugin:@"Lipuzhi"] registerViewFactory:myPlatformViewFactory withId:@"MyUiKitView"];
     
### MyPlatformViewFactory 新增文件

MyPlatformViewFactory.m 中的

    FlutterToOCViewController *myPlatformViewObject = [[FlutterToOCViewController alloc] initWithFrame:frame viewId:viewId args:args];
    
可以替换成你自己的对应的页面

### FlutterToOCViewController 对应OC文件

FlutterToOCViewController.h  新增 <FlutterPlatformView> 代理
  
与必须实现方法

    - (id)initWithFrame:(CGRect)frame viewId:(int64_t)viewId args:(id)args;


FlutterToOCViewController.m

复写

    - (id)initWithFrame:(CGRect)frame viewId:(int64_t)viewId args:(id)args
    {
        if (self = [super init])
        {
            _frame = frame;
            _viewId = viewId;
            _args = args;
        }
        return self;
    }
    
其他按原来代码实现即可，支持XIB




## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
