//
//  DemoNSURLConnectionTests.m
//  DemoNSURLConnectionTests
//
//  Created by Adrien Humilière on 01/04/2015.
//  Copyright (c) 2015 Adrien Humilière. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface DemoNSURLConnectionTests : XCTestCase

@end

@implementation DemoNSURLConnectionTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
