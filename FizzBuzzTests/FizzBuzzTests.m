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

- (void)testShouldReturnOneAsNumber{
    XCTAssertEqualObjects(@"1", [fizzBuzz getAnswerFor:1], @"Answer should be 1 for input 1");
}

- (void)testShouldReturnTwoAsNumber{
    XCTAssertEqualObjects(@"2", [fizzBuzz getAnswerFor:2], @"Answer should be 2 for input 2");
}

- (void)testShouldReturnThreeAsFizz{
    XCTAssertEqualObjects(@"Fizz", [fizzBuzz getAnswerFor:3], @"Should print Fizz");
}

- (void)testShouldReturnSixAsFizz{
    XCTAssertEqualObjects(@"Fizz", [fizzBuzz getAnswerFor:6], @"Should print Fizz");
}

- (void)testShouldReturnFiveAsBuzz{
    XCTAssertEqualObjects(@"Buzz", [fizzBuzz getAnswerFor:5], @"Should print Buzz");
}

- (void)testShouldReturnTenAsBuzz{
    XCTAssertEqualObjects(@"Buzz", [fizzBuzz getAnswerFor:10], @"Should print Buzz");
}

- (void)testShouldReturnFifteenAsFizzBuzz{
    XCTAssertEqualObjects(@"FizzBuzz", [fizzBuzz getAnswerFor:15], @"Should print FizzBuzz");
}

- (void)testShouldReturnThirtyAsFizzBuzz{
    XCTAssertEqualObjects(@"FizzBuzz", [fizzBuzz getAnswerFor:30], @"Should print FizzBuzz");
}

- (void)testShouldThrowForZero{
    XCTAssertEqualObjects(@"FizzBuzz", [fizzBuzz getAnswerFor:0], @"Should print FizzBuzz");
}



@end
