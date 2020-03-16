#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    
    NSNumber *min = [array valueForKeyPath:@"@min.intValue"];
    NSNumber *max = [array valueForKeyPath:@"@max.intValue"];
    NSNumber *sum = [array valueForKeyPath:@"@sum.self"];
    
    NSNumber *maxSumValue = [NSNumber numberWithInt:[sum intValue] - [min intValue]];
    NSNumber *minSumValue = [NSNumber numberWithInt:[sum intValue] - [max intValue]];
        
    return @[minSumValue, maxSumValue];
}

@end
