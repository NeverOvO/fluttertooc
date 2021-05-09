//
//  FlutterToOCViewController.m
//  Runner
//
//  Created by 赖海波 on 2021/5/9.
//

#import "FlutterToOCViewController.h"


@implementation FlutterToOCViewController

{
    CGRect _frame;
    int64_t _viewId;
    id _args;
    UILabel *_subLabel;
}

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
- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)onBack:(id)sender {
    NSLog(@"1");
   
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
