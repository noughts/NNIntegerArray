@import Foundation;

@interface NNIntegerArray : NSObject <NSFastEnumeration>
{
	NSInteger* _array;
}

-(id)initWithCount:(NSUInteger)count;

/// 実際にデータが入ったサイズ
-(NSUInteger)actualSize;

-(void)addInteger:(NSInteger)value;
-(NSInteger)integerAtIndex:(NSUInteger)index;
-(void)setInteger:(NSInteger)value atIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSUInteger count;

@end