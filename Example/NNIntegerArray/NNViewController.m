#import "NNViewController.h"
#import <NNIntegerArray.h>

@implementation NNViewController{
	NNIntegerArray* _intArray;
	NSMutableArray* _numArray;
}

- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	_intArray = [[NNIntegerArray alloc] initWithCount:100];
	NSLog( @"%@", @([_intArray actualSize]) );
	[_intArray addInteger:42];
	NSLog( @"%@", @([_intArray actualSize]) );
	
	NSUInteger len = _intArray.count;
	for (NSInteger i=0; i<len; i++) {
		NSLog(@"%@", @([_intArray integerAtIndex:i]));
	}
}


@end
