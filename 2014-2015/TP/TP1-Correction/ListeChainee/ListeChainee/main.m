//
//  main.m
//  ListeChainee
//
//  Created by Adrien Humilière on 29/03/2015.
//  Copyright (c) 2015 Adrien Humilière. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "List.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Initialisation des objets
        Node *node1 = [[Node alloc] initWithKey:1];
        Node *node2 = [[Node alloc] initWithKey:2];
        Node *node3 = [[Node alloc] initWithKey:3];
        Node *node4 = [[Node alloc] initWithKey:4];
        Node *node5 = [[Node alloc] initWithKey:5];
        Node *node6 = [[Node alloc] initWithKey:6];
        Node *node7 = [[Node alloc] initWithKey:7];
        Node *node8 = [[Node alloc] initWithKey:8];
        Node *node9 = [[Node alloc] initWithKey:9];
        Node *node10 = [[Node alloc] initWithKey:10];
        Node *node11 = [[Node alloc] initWithKey:11];
        
        List *list = [[List alloc] initWithFirstNode:node1];
        
        [list addFirst:node2];
        [list addFirst:node3];
        [list addFirst:node4];
        [list addLast:node5];
        [list addLast:node6];
        [list addLast:node7];
        [list addLast:node8];
        [list addLast:node9];
        [list addLast:node10];
        [list addLast:node11];
        
        NSLog(@"%@", list);
        
        NSLog(@"Node for key 5: %@", [list nodeForKey:5]);
        
        [list removeFirst];
        [list removeLast];
        
        NSLog(@"%@", list);
    }
    return 0;
}
