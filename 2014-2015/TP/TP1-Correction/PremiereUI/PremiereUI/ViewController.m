//
//  ViewController.m
//  PremiereUI
//
//  Created by Adrien Humilière on 29/03/2015.
//  Copyright (c) 2015 Adrien Humilière. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondLabel;

@property (nonatomic, strong) NSDate    *lastTouchDate;

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.lastTouchDate = [NSDate date];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)onTouchButton:(UIButton *)sender {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"h' h 'mm' min 'ss' sec'"];
    
    self.firstLabel.text = [dateFormatter stringFromDate:[NSDate date]];
    self.secondLabel.text = [NSString stringWithFormat:@"Temps depuis le dernier clic : %.3fs", -[self.lastTouchDate timeIntervalSinceNow]];
        
    self.lastTouchDate = [NSDate date];
}

@end
