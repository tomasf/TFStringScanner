#import <Foundation/Foundation.h>
#import "TFStringScanner.h"


int main (int argc, const char * argv[]) {
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	
	NSString *testString = @"4+54 1000% hello.foo _bar!";
	TFStringScanner *scanner = [TFStringScanner scannerWithString:testString];
	
	NSString *token = nil;
	while((token = [scanner scanToken]))
		NSLog(@"%@", token);
	
	
	[pool drain];
    return 0;
}

