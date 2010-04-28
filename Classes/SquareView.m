//
//  SquareView.m
//  ColorSquares
//
//  Created by Barry Ezell on 4/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "SquareView.h"


@implementation SquareView


- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        
		//set a random background color (see ColorSquaresAppDelegate for randomizer seeding)
		float red = (random() % 256) / 256.0;
		float green = (random() % 256) / 256.0;
		float blue = (random() % 256) / 256.0;
		
		self.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:0.8];
		
    }
	
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

#pragma mark -
#pragma mark Touch events

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	
	orgPoint = [[touches anyObject] locationInView:self];
	
	//ensure this view is topmost in parent view
	[self.superview bringSubviewToFront:self];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	CGPoint curPoint = [[touches anyObject] locationInView:self];
	float xDiff = curPoint.x - orgPoint.x;
	float yDiff = curPoint.y - orgPoint.y;
	self.center = CGPointMake(self.center.x + xDiff, self.center.y + yDiff);
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
	
}

- (void)dealloc {
    [super dealloc];
}


@end
