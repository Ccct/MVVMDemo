//
//  CTView.h
//  MVVMDemo1
//
//  Created by Helios on 2021/6/4.
//

#import <UIKit/UIKit.h>

@class CTView,CTViewModel;

@protocol CTViewDelegate <NSObject>

@optional
-(void)appViewDidClick:(CTView *)view;

@end

@interface CTView : UIView

@property (weak, nonatomic) CTViewModel *viewModel;

@property (weak, nonatomic) id<CTViewDelegate> delegate;

@end


