//
//  RootViewController.h
//  ColorSquares
//
//  Created by Barry Ezell on 4/27/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorEditViewController.h"

@interface RootViewController : UIViewController <ColorEditViewControllerDelegate> {
	
}

- (IBAction)backgroundButtonWasPressed;


@end
