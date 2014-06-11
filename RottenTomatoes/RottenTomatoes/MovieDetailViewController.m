//
//  MovieDetailViewController.m
//  RottenTomatoes
//
//  Created by Ryan Chen on 6/10/14.
//  Copyright (c) 2014 Ryan Chen. All rights reserved.
//

#import "MovieDetailViewController.h"
#import "UIImageView+AFNetworking.h"

@interface MovieDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) NSDictionary *movie;

@end

@implementation MovieDetailViewController

- (id)initWithMovie:(NSDictionary *)movie {
    self.movie = movie;
    return [self init];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = self.movie[@"title"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.synopsisLabel.text = self.movie[@"synopsis"];

    NSString *imageUrl = self.movie[@"posters"][@"original"];
    NSURL *url = [NSURL URLWithString:imageUrl];
    [self.posterView setImageWithURL:url];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
