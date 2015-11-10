#import "NNIntegerArray.h"

@interface NNIntegerArray ()

-(void)checkBounds:(NSUInteger)index;

@end

@implementation NNIntegerArray

@synthesize count = _count;

- (id)init
{
	self = [super init];
	if (self) {
		_count = 0;
		_array = 0;
	}
	return self;
}

- (id)initWithCount:(NSUInteger)count
{
	self = [super init];
	if (self) {
		_count = count;
		_array = calloc(count, sizeof(NSInteger));
	}
	return self;
}

- (void)dealloc
{
	free(_array);
#if !__has_feature(objc_arc)
	[super dealloc];
#endif
}

-(NSInteger)integerAtIndex:(NSUInteger)index
{
	[self checkBounds:index];
	return (NSInteger) _array[index];
}

-(void)setInteger:(NSInteger)value atIndex:(NSUInteger)index
{
	[self checkBounds:index];
	_array[index] = value;
}

-(void)checkBounds:(NSUInteger)index
{
	if (index >= _count) {
		NSString* message = [NSString stringWithFormat:@"*** %s: index (%@) beyond bounds (%@)",
							 __PRETTY_FUNCTION__, @(index), @(_count)];
		NSException* rangeException = [NSException exceptionWithName:NSRangeException
															  reason:message
															userInfo:nil];
		@throw rangeException;
	}
}


#pragma mark - NSFastEnumeration

-(NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state
								 objects:(__unsafe_unretained id [])buffer
								   count:(NSUInteger)len
{
	NSUInteger count = 0;
	
	if(state->state == 0) state->mutationsPtr = &state->extra[0];
	
	if(state->state < _count)
	{
		state->itemsPtr = buffer;
		while((state->state < _count) && (count < len))
		{
			buffer[count] = [NSNumber numberWithInteger:_array[state->state]];
			state->state++;
			count++;
		}
	}
	else
	{
		count = 0;
	}
	return count;
}

@end