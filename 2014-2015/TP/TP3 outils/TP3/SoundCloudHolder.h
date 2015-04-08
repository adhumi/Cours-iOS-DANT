//
//  SoundCloudHolder.h
//  TP3
//
//  Created by Adrien Humilière on 08/04/2015.
//  Copyright (c) 2015 Adrien Humilière. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SoundCloudTrack.h"

@interface SoundCloudHolder : NSObject

@property (nonatomic, strong) NSMutableArray    *tracks;

- (void)loadTracks:(void (^)(NSError *error))completionBlock;

@end
