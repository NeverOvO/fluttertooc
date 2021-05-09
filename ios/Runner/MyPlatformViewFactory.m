//
//  MyPlatformViewFactory.m
//  Runner
//
//  Created by 赖海波 on 2021/5/9.
//

#import "MyPlatformViewFactory.h"
#import "FlutterToOCViewController.h"
@implementation MyPlatformViewFactory
- (NSObject <FlutterPlatformView> *)createWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id _Nullable)args
{
    FlutterToOCViewController *myPlatformViewObject = [[FlutterToOCViewController alloc] initWithFrame:frame viewId:viewId args:args];
    return myPlatformViewObject;
}

@end
