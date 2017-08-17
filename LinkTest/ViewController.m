//
//  ViewController.m
//  LinkTest
//
//  Created by Stanislav Volskyi on 8/16/17.
//  Copyright © 2017 Stanislav Volskyi. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  UINib *nib = [UINib nibWithNibName:@"CustomTableViewCell" bundle:nil];
  [self.tableView registerNib:nib forCellReuseIdentifier:@"CustomTableViewCell"];
  self.tableView.tableFooterView = [UIView new];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomTableViewCell" forIndexPath:indexPath];
  return cell;
}

@end
