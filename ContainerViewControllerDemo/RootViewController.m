//
//  RootViewController.m
//  ContainerViewControllerDemo
//
//  Created by 吴珂 on 16/1/25.
//  Copyright © 2016年 MyCompany. All rights reserved.
//

#import "RootViewController.h"
#import "ContainerViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    [self configureCell:cell forRowAtIndexPath:indexPath];
    
    return cell;
}

- (void)configureCell:(UITableViewCell *)cell
    forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        cell.textLabel.text = @"纯代码";
    }else{
        cell.textLabel.text = @"IB";
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:{
            ContainerViewController *containerVC = [[ContainerViewController alloc] init];
            containerVC.createType = CreateContainerTypeCode;
            [self.navigationController pushViewController:containerVC animated:YES];
            break;
        }
            
            
        case 1:{
            [self performSegueWithIdentifier:@"gotoContainer" sender:nil];
            break;
        }
        default:
            break;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ContainerViewController *containerVC = (ContainerViewController *)segue.destinationViewController;
    containerVC.createType = CreateContainerTypeIB;
}

@end
