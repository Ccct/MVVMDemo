//
//  ViewController.m
//  MVVMDemo1
//
//  Created by Helios on 2021/6/4.
//

#import "ViewController.h"
#import "CTViewModel.h"

@interface ViewController ()

@property (strong,nonatomic) CTViewModel *viewModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewModel = [[CTViewModel alloc] initWithController:self];
}

@end
