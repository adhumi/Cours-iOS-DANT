//
//  Node.h
//  ListeChainee
//
//  Created by Adrien Humilière on 29/03/2015.
//  Copyright (c) 2015 Adrien Humilière. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (nonatomic, assign, readonly) int     key;
@property (nonatomic, strong) Node              *next;

- (instancetype)initWithKey:(int)key;

@end
