//
//  List.m
//  ListeChainee
//
//  Created by Adrien Humilière on 29/03/2015.
//  Copyright (c) 2015 Adrien Humilière. All rights reserved.
//

#import "List.h"

@interface List ()

@property (nonatomic, strong) Node  *firstNode;

@end



@implementation List

- (instancetype)init {
    self = [super init];
    if (self) {
        self.firstNode = nil;
    }
    return self;
}

- (instancetype)initWithFirstNode:(Node *)node {
    self = [super init];
    if (self) {
        self.firstNode = node;
    }
    return self;
}

- (NSString *)description {
    NSMutableString *mutableString = [NSMutableString string];
    
    [mutableString appendString:self.firstNode.description];
    Node *currentNode = self.firstNode;
    while (currentNode.next) {
        currentNode = currentNode.next;
        
        [mutableString appendFormat:@"->%@", currentNode.description];
    }
    
    return mutableString;
}


#pragma mark - Methods

- (BOOL)isEmpty {
    return self.firstNode == nil;
}

- (void)addFirst:(Node *)node {
    if (self.firstNode) {
        node.next = self.firstNode;
        self.firstNode = node;
    } else {
        self.firstNode = node;
    }
}

- (Node *)removeFirst {
    Node *first = self.firstNode;
    self.firstNode = self.firstNode.next;
    
    return first;
}

- (void)addLast:(Node *)node {
    if ([self isEmpty]) {
        self.firstNode = node;
        return;
    }
    
    Node *currentNode = self.firstNode;
    while (currentNode.next) {
        currentNode = currentNode.next;
    }
    currentNode.next = node;
}

- (Node *)removeLast {
    Node *lastNode;
    
    Node *currentNode = self.firstNode;
    while (currentNode.next.next) {
        currentNode = currentNode.next;
    }
    
    lastNode = currentNode.next;
    currentNode.next = nil;
    
    return lastNode;
}

- (Node *)nodeForKey:(int)key {
    Node *currentNode = self.firstNode;
    while (currentNode.next) {
        currentNode = currentNode.next;
        
        if (currentNode.key == key) {
            return currentNode;
        }
    }
    
    return nil;
}

@end
