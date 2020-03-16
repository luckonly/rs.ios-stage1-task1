#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    
    NSMutableArray *happyArray = [NSMutableArray arrayWithArray:sadArray];
    
    if (happyArray.count > 2) {
        for (int i=1; i < happyArray.count - 1; i++) {
            
            int sum = [happyArray[i - 1] intValue] + [happyArray[i + 1] intValue];
            int curentElement = [happyArray[i] intValue];
            
            if (curentElement > sum) {
                [happyArray removeObjectAtIndex:i];
                i = 0;
            }
        }
    }
    
    return happyArray;
}

@end
