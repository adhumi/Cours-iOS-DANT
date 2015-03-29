//
//  List.h
//  ListeChainee
//
//  Created by Adrien Humilière on 29/03/2015.
//  Copyright (c) 2015 Adrien Humilière. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface List : NSObject

- (instancetype)initWithFirstNode:(Node *)node;

- (BOOL)isEmpty;
- (void)addFirst:(Node *)node;
- (Node *)removeFirst;
- (void)addLast:(Node *)node;
- (Node *)removeLast;
- (Node *)nodeForKey:(int)key;

@end
