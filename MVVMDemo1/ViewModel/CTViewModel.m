//
//  CTViewModel.m
//  MVVMDemo1
//
//  Created by Helios on 2021/6/4.
//

#import "CTViewModel.h"
#import "CTModel.h"
#import "CTView.h"

@interface CTViewModel()<CTViewDelegate>

@property (weak, nonatomic) UIViewController *controller;
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *image;

@end

@implementation CTViewModel

- (instancetype)initWithController:(UIViewController *)controller
{
    self = [super init];
    if (self) {
        
        self.controller = controller;
        
        //创建view
        CTView *view = [[CTView alloc] init];
        view.frame = CGRectMake(100, 100, 100, 150);
        view.delegate = self;
        view.viewModel = self;
        [controller.view addSubview:view];
        
        //加载模型
        CTModel *model = [[CTModel alloc] init];
        model.name = @"名字";
        model.image = @"QQ";
        
        self.name  = model.name;
        self.image = model.image;
    }
    return self;
}

#pragma mark - CTViewDelegate
-(void)appViewDidClick:(CTView *)view{
    
    NSLog(@"点击了哦");
}

@end
