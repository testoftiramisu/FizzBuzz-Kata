//
//  FizzBuzzTests.m
//  FizzBuzzTests
//
//  Created by Denys Khlivnyy on 11/17/15.
//  Copyright © 2015 Denys Khlivnyy. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FizzBuzz.h"

@interface FizzBuzzTests : XCTestCase {
    
@private FizzBuzz *fizzBuzz;
    
}

@end



@implementation FizzBuzzTests

- (void)setUp {
    [super setUp];
    fizzBuzz = [[FizzBuzz alloc] init];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testOne {
    XCTAssertEqualObjects(@"1", [fizzBuzz convert:1], @"Answer should be 1 for input 1");
}


@end
