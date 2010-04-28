//
//  ColorEditViewController.m
//  ColorSquares
//
//  Created by Barry Ezell on 4/28/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ColorEditViewController.h"


@implementation ColorEditViewController

@synthesize redSlider, greenSlider, blueSlider, delegate;

- (void)dealloc {
	[redSlider release];
	[greenSlider release];
	[blueSlider release];
    [super dealloc];
}

- (IBAction)sliderValuesChanged {
	UIColor *color = [UIColor colorWithRed:redSlider.value 
									 green:greenSlider.value 
									  blue:blueSlider.value 
									 alpha:1.0];
	self.view.backgroundColor = color;
	
	//notify the delegate of a color change
	if (delegate) {
		[delegate colorWasSelected:color];
	}
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}



@end
