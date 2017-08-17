//
//  CustomTableViewCell.m
//  LinkTest
//
//  Created by Stanislav Volskyi on 8/17/17.
//  Copyright © 2017 Stanislav Volskyi. All rights reserved.
//

#import "CustomTableViewCell.h"
#import "CustomCollectionViewCell.h"

@interface CustomTableViewCell () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation CustomTableViewCell

- (void)awakeFromNib
{
  [super awakeFromNib];
  self.collectionView.delegate = self;
  self.collectionView.dataSource = self;
  
  UINib *nib = [UINib nibWithNibName:@"CustomCollectionViewCell" bundle:nil];
  [self.collectionView registerNib:nib forCellWithReuseIdentifier:@"CustomCollectionViewCell"];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
  return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
  CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CustomCollectionViewCell" forIndexPath:indexPath];
  return cell;
}

#pragma mark - UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
  NSLog(@"selected item at index %zd", indexPath.row);
}

@end
