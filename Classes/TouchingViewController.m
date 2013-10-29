#import "TouchingViewController.h"

@implementation TouchingViewController

UILabel * xLabel;
UILabel * yLabel;

UIView * babyView;

- (void)viewDidLoad {
   
	babyView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
	babyView.backgroundColor = [UIColor yellowColor];
	[self.view addSubview: babyView];
	
	xLabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 50, 200, 20)];
	[babyView addSubview: xLabel];
	
	yLabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 200, 20)];
	[babyView addSubview: yLabel];
}

// Fires once when you press your finger down
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

	// Get the touch and place it's location in a CGPoint
	UITouch * myTouch = [touches anyObject];
	CGPoint touchCenterPoint = [myTouch locationInView:self.view];
	
	xLabel.text = [ NSString stringWithFormat:@"BEGAN: X %f", touchCenterPoint.x];
	yLabel.text = [ NSString stringWithFormat:@"BEGAN: Y %f", touchCenterPoint.y];					   
		
	// Set Center Point
	babyView.center = touchCenterPoint;
	babyView.backgroundColor = [UIColor redColor];
}

// Fires every time finger is moved, this goes fast!
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
	
	// Get the touch and place it's location in a CGPoint
	UITouch * myTouch = [touches anyObject];
	CGPoint touchCenterPoint = [myTouch locationInView:self.view];
	
	xLabel.text = [ NSString stringWithFormat:@"MOVE: X %0.2f", touchCenterPoint.x];
	yLabel.text = [ NSString stringWithFormat:@"MOVE: Y %0.2f", touchCenterPoint.y];					   
	
	babyView.center = touchCenterPoint;
	
	// Set Center Point
	//babyView.center = touchCenterPoint;
	babyView.backgroundColor = [UIColor purpleColor];
}

// Fires the once user picks removes finger from screen
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
	
	
	// Get the touch and place it's location in a CGPoint
	UITouch * myTouch = [touches anyObject];
	CGPoint touchCenterPoint = [myTouch locationInView:self.view];
	
	xLabel.text = [ NSString stringWithFormat:@"ENDED: X %0.2f", touchCenterPoint.x];
	yLabel.text = [ NSString stringWithFormat:@"ENDED: Y %0.2f", touchCenterPoint.y];					   
	
	// Set Center Point
	babyView.center = touchCenterPoint;
	babyView.backgroundColor = [UIColor darkGrayColor];
}

@end
