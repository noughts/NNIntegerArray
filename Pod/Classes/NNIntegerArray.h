/*
 
 高速に要素にアクセスしたいときは、
 [ary integerAtIndex:42]; の代わりに
 ary.array[42];しましょう。メッセージ送信の処理が省けます
 
 
 */

@import Foundation;

@interface NNIntegerArray : NSObject{
	NSInteger* _array;
}

-(id)initWithCount:(NSUInteger)count;

/// 実際にデータが入ったサイズ
-(NSUInteger)actualSize;

-(NSInteger*)array;

-(void)addInteger:(NSInteger)value;
-(NSInteger)integerAtIndex:(NSUInteger)index;
-(void)setInteger:(NSInteger)value atIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSUInteger count;

@end