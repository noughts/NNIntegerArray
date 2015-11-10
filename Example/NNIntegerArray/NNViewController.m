#import "NNViewController.h"
#import <NNIntegerArray.h>
#import <NNProfiler.h>

@implementation NNViewController{
	NNIntegerArray* _intArray;
	NSMutableArray* _numArray;
}

- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	NSInteger count = 10000000;
	
	[NNProfiler start:@"set"];
	_intArray = [[NNIntegerArray alloc] initWithCount:count];
	for (int i=0; i<count; i++) {
		[_intArray addInteger:i];
	}
	
	
	[NNProfiler end];
}


-(IBAction)hoge:(id)sender{
	NSInteger count = 10000000;
	
	[NNProfiler start:@"get"];
	NSInteger result = 0;
	NSInteger* ary = _intArray.array;
	for (NSInteger i=0; i<count; i++) {
		result += ary[i];
	}
	[NNProfiler end];
}



@end
