//
//  FizzBuzzTests.m
//  FizzBuzzTests
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

- (void)testThatItReturnNumberIfNotDivisibleByThreeOrFive{
    XCTAssertEqualObjects(@"1", [fizzBuzz getAnswerFor:1], @"Answer should be 1 for input 1");
    XCTAssertEqualObjects(@"2", [fizzBuzz getAnswerFor:2], @"Answer should be 2 for input 2");
    XCTAssertEqualObjects(@"4", [fizzBuzz getAnswerFor:4], @"Answer should be 4 for input 4");
    XCTAssertEqualObjects(@"7", [fizzBuzz getAnswerFor:7], @"Answer should be 7 for input 7");
}

- (void)testThatItReturnFizzForMultiplesOfThree{
    XCTAssertEqualObjects(@"Fizz", [fizzBuzz getAnswerFor:3], @"Should print Fizz");
    XCTAssertEqualObjects(@"Fizz", [fizzBuzz getAnswerFor:6], @"Should print Fizz");
}

- (void)testThatItReturnBuzzForMultiplesOfFive{
    XCTAssertEqualObjects(@"Buzz", [fizzBuzz getAnswerFor:5], @"Should print Buzz");
    XCTAssertEqualObjects(@"Buzz", [fizzBuzz getAnswerFor:10], @"Should print Buzz");
}

- (void)testThatItReturnFizzBuzzIfDivisibleByThreeOrFive{
    XCTAssertEqualObjects(@"FizzBuzz", [fizzBuzz getAnswerFor:15], @"Should print FizzBuzz");
    XCTAssertEqualObjects(@"FizzBuzz", [fizzBuzz getAnswerFor:30], @"Should print FizzBuzz");
}

- (void)testThatItThrowForZero{
    XCTAssertThrowsSpecificNamed([fizzBuzz getAnswerFor:0], NSException, NSInvalidArgumentException, @"should throw NSInvalidArgumentException");
}

- (void)testThatItThrowForMinusOne{
    XCTAssertThrowsSpecificNamed([fizzBuzz getAnswerFor:-1], NSException, NSInvalidArgumentException, @"should throw NSInvalidArgumentException");
}

@end
