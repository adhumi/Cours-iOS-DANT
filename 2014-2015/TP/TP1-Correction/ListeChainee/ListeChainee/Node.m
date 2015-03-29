//
//  Node.m
//  ListeChainee
//
//  Created by Adrien Humilière on 29/03/2015.
//  Copyright (c) 2015 Adrien Humilière. All rights reserved.
//

#import "Node.h"

@implementation Node

- (instancetype)initWithKey:(int)key {
    self = [self init];
    if (self) {
        _key = key;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"[%d]", self.key];
}

@end
