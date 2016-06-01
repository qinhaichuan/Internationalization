//
//  ViewController.m
//
//  Created by QHC on 10/17/15.
//  Copyright © 2015 秦海川. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *viewControllerLikeButotn;
@property (weak, nonatomic) IBOutlet UILabel *viewControllerNumLabel;
@property (weak, nonatomic) IBOutlet UIImageView *viewControllerImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    _viewControllerNumLabel.text = @"I write 1000000000 lines every day.";
//    [_viewControllerLikeButotn setTitle:@"Do you like coding ?" forState:UIControlStateNormal];
    
//    _viewControllerNumLabel.text = [NSString stringWithFormat:NSLocalizedString(@"I write %@ lines every day.", nil),@1000000000];
    [_viewControllerLikeButotn setTitle:NSLocalizedString(@"Do you like coding ?", nil) forState:UIControlStateNormal];
     _viewControllerImageView.image = [UIImage imageNamed:NSLocalizedString(@"imageName",nil)];
    
    
    NSNumberFormatter *numberFormatter = [NSNumberFormatter new];
    numberFormatter.numberStyle =NSNumberFormatterDecimalStyle;
    NSString *numberString = [numberFormatter stringFromNumber:@1000000000];

    _viewControllerNumLabel.text = [NSString stringWithFormat:NSLocalizedString(@"I write %@ lines every day.", nil),numberString];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
