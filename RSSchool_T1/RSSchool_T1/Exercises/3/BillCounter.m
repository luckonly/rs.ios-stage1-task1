#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    
    NSMutableArray *billWithoutAnnDish = [[NSMutableArray alloc] initWithArray:bill];
    [billWithoutAnnDish removeObjectAtIndex:index];
    int annBillSum = [[billWithoutAnnDish valueForKeyPath:@"@sum.self"] intValue] / 2;
   
    if ([sum intValue] == annBillSum) {
        return @"Bon Appetit";
    } else {
        return [NSString stringWithFormat:@"%d", [sum intValue] - annBillSum];
    }

}

@end
