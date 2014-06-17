//
//  MovieCell.h
//  RottenTomatoes
//
//  Created by Ryan Chen on 6/9/14.
//  Copyright (c) 2014 Ryan Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *movieTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UIImageView *posterView;

- (void)setMovie:(NSDictionary *)movie;

@end
