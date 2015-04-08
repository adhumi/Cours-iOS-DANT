//
//  SoundCloudHolder.m
//  TP3
//
//  Created by Adrien Humilière on 08/04/2015.
//  Copyright (c) 2015 Adrien Humilière. All rights reserved.
//

#import "SoundCloudHolder.h"
#import "AFNetworking.h"

@implementation SoundCloudHolder

- (instancetype)init {
    self = [super init];
    if (self) {
        self.tracks = [NSMutableArray array];
    }
    return self;
}

- (void)loadTracks:(void (^)(NSError *error))completionBlock {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://api.soundcloud.com/users/9042353/tracks" parameters:@{@"client_id": @"536cb4abde71eb8d9a3afebe8877f388"} success:^(AFHTTPRequestOperation *operation, id responseObject) {
        [self.tracks removeAllObjects];
        
        for (NSDictionary *trackDic in responseObject) {
            SoundCloudTrack *track = [SoundCloudTrack trackWithDictionary:trackDic];
            [self.tracks addObject:track];
        }

        if (completionBlock) {
            completionBlock(nil);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {        
        if (completionBlock) {
            completionBlock(error);
        }
    }];
}

@end
