@import Foundation;

@interface NNIntegerArray : NSObject <NSFastEnumeration>
{
	NSInteger* _array;
}

-(id)initWithCount:(NSUInteger)count;
-(NSInteger)integerAtIndex:(NSUInteger)index;
-(void)setInteger:(NSInteger)value atIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSUInteger count;

@end