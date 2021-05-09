//
//  FlutterToOCViewController.h
//  Runner
//
//  Created by 赖海波 on 2021/5/9.
//

#import <UIKit/UIKit.h>
#import <Flutter/Flutter.h>
NS_ASSUME_NONNULL_BEGIN

@interface FlutterToOCViewController : UIViewController<FlutterPlatformView>

@property (weak, nonatomic) IBOutlet UIButton *back;

//此方法必须
- (id)initWithFrame:(CGRect)frame viewId:(int64_t)viewId args:(id)args;

@end

NS_ASSUME_NONNULL_END
