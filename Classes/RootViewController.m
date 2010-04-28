//
//  RootViewController.m
//  ColorSquares
//
//  Created by Barry Ezell on 4/27/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "RootViewController.h"
#import "SquareView.h"

@implementation RootViewController

- (void)dealloc {
    [super dealloc];
}


#pragma mark -
#pragma mark View lifecycle


- (void)viewDidLoad {
    [super viewDidLoad];

	self.navigationItem.title = @"Squares";
}


/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}
*/

/*
 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
 */

#pragma mark -
#pragma mark Touch methods

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	
	//get the point of any touch (since we're not handling multitouch, any will do)
	CGPoint pt = [[touches anyObject] locationInView:self.view];
	
	//create a color square centered on the touch
	SquareView *sqView = [[SquareView alloc] initWithFrame:CGRectMake(pt.x - 50.0, pt.y - 50.0, 100.0, 100.0)];
	[self.view addSubview:sqView];
	[sqView release];
}

#pragma mark -
#pragma mark Color methods

- (IBAction)backgroundButtonWasPressed {
	ColorEditViewController *colorVC = [[ColorEditViewController alloc] initWithNibName:@"ColorEditViewController" 
																				 bundle:nil];
	
	//become the delegate of ColorEditViewController so self knows
	//when a color is chosen (via the delegate method colorWasSelected:)
	colorVC.delegate = self;
	
	//hand off to navigationController and release
	[self.navigationController pushViewController:colorVC 
										 animated:YES];
	[colorVC release];	 
}

//implementation of ColorEditViewControllerDelegate
- (void)colorWasSelected:(UIColor *)color {
	self.view.backgroundColor = color;
}

#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


@end

