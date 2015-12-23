//
//  FizzBuzz.m
//  FizzBuzz
//

#import "FizzBuzz.h"

@implementation FizzBuzz

- (NSString *)getAnswerFor:(int)number{
    [self checkArguments:number];
    return [self computeAnswer:number];
}

- (void)checkArguments:(int)number {
    if (number <= 0) {
        [NSException raise:NSInvalidArgumentException format:@"number is out of range 1 - 100"];
    }
}

- (NSString *)computeAnswer:(int)number {
    NSString *answer = [NSString stringWithFormat:@"%d", number];
    
    if ([self isMultipleOfThree:number]&&[self isMultipleOfFive:number]) {
        answer = @"FizzBuzz";
    }
    else if([self isMultipleOfThree:number]){
        answer = @"Fizz";
    }
    else if ([self isMultipleOfFive:number]){
        answer = @"Buzz";
    }
    return answer;
}


- (BOOL) isMultipleOfFive:(int) number{
    return number % 5 == 0;
}

- (BOOL) isMultipleOfThree:(int) number{
    return number % 3 == 0;
}

@end
