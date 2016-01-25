//
//  ContainerViewController.m
//  ContainerViewControllerDemo
//
//  Created by 吴珂 on 16/1/25.
//  Copyright © 2016年 MyCompany. All rights reserved.
//

#import "ContainerViewController.h"
#import "LeftViewViewController.h"
#import "RightViewViewController.h"

@interface ContainerViewController ()

@property (strong, nonatomic) LeftViewViewController *leftVC;
@property (strong, nonatomic) RightViewViewController *rightVC;

@end

@implementation ContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    switch (_createType) {
        case CreateContainerTypeCode: {
            [self addLeftVC];
            [self addRightVC];
            break;
        }
        case CreateContainerTypeIB: {
            
            break;
        }
    }
    
}

- (void)addLeftVC
{
    if (!_leftVC) {
        _leftVC = [[LeftViewViewController alloc] init];
    }
    
    
    [self addChildViewController:_leftVC];
    _leftVC.view.frame = CGRectMake(0, 0, CGRectGetWidth(self.view.bounds) / 2, CGRectGetHeight(self.view.bounds));
    [self.view addSubview:_leftVC.view];
    [_leftVC didMoveToParentViewController:self];
    
}

- (void)addRightVC
{
    
    if (!_rightVC) {
        _rightVC = [[RightViewViewController alloc] init];
    }
    
    [self addChildViewController:_rightVC];
    _rightVC.view.frame = CGRectMake(CGRectGetWidth(self.view.bounds) / 2, 0, CGRectGetWidth(self.view.bounds) / 2, CGRectGetHeight(self.view.bounds));
    [self.view addSubview:_rightVC.view];
    [_rightVC didMoveToParentViewController:self];
}



@end
