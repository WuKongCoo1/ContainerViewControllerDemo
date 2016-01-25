//
//  ContainerViewController.h
//  ContainerViewControllerDemo
//
//  Created by 吴珂 on 16/1/25.
//  Copyright © 2016年 MyCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, CreateContainerType) {
    CreateContainerTypeCode,
    CreateContainerTypeIB
};

@interface ContainerViewController : UIViewController

@property (nonatomic, assign) CreateContainerType createType;

@end
