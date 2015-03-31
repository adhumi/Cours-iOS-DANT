//
//  DetailViewController.h
//  DemoAFNetworking
//
//  Created by Adrien Humilière on 01/04/2015.
//  Copyright (c) 2015 Adrien Humilière. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

