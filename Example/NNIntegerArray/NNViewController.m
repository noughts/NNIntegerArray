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
	NSLog( @"%@", @([_intArray integerAtIndex:0]) );
	NSLog( @"%@", @([_intArray count]) );
	
	NSUInteger len = _intArray.count;
	for (NSInteger i=0; i<len; i++) {
		NSLog(@"%@", @([_intArray integerAtIndex:i]));
	}
}


@end
