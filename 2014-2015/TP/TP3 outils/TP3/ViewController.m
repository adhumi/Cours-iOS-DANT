//
//  ViewController.m
//  TP3
//
//  Created by Adrien Humilière on 08/04/2015.
//  Copyright (c) 2015 Adrien Humilière. All rights reserved.
//

#import "ViewController.h"
#import "SoundCloudHolder.h"



@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) SoundCloudHolder      *holder;

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.holder = [[SoundCloudHolder alloc] init];
    [self.holder loadTracks:^(NSError *error) {
        [self.tableView reloadData];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.holder.tracks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"SoundCloudTrackCell"];
    
    SoundCloudTrack *track = self.holder.tracks[indexPath.row];
    
    cell.textLabel.text = track.title;
    
    return cell;
}

@end
