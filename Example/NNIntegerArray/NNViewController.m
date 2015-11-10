#import "NNViewController.h"
#import <NNIntegerArray.h>

@implementation NNViewController{
	NNIntegerArray* _intArray;
	NSMutableArray* _numArray;
}

- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	NSInteger count = 1000000;
	
	NSLog(@"start");
	_intArray = [[NNIntegerArray alloc] initWithCount:count];
	for (int i=0; i<count; i++) {
		[_intArray addInteger:i];
	}
	
	for (NSInteger i=0; i<count; i++) {
		NSInteger hoge = _intArray.array[i];
	}
	NSLog(@"end");
}


@end
