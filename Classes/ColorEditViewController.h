//
//  ColorEditViewController.h
//  ColorSquares
//
//  Created by Barry Ezell on 4/28/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ColorEditViewControllerDelegate
@required
- (void)colorWasSelected:(UIColor *)color;
@end

@interface ColorEditViewController : UIViewController {
	UISlider *redSlider;
	UISlider *greenSlider;
	UISlider *blueSlider;
	id delegate;
}

@property (nonatomic, retain) IBOutlet UISlider *redSlider;
@property (nonatomic, retain) IBOutlet UISlider *greenSlider;
@property (nonatomic, retain) IBOutlet UISlider *blueSlider;
@property (assign) id <ColorEditViewControllerDelegate> delegate;

- (IBAction)sliderValuesChanged;

@end
