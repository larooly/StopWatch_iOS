//
//  ViewController.h
//  stopwatch
//
//  Created by active on 2020/05/06.
//  Copyright © 2020 activeKJS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer *timer;
    BOOL runnig;
    int count;
}
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UIButton *resetBtn;
@property (weak, nonatomic) IBOutlet UIButton *startBtn;

- (IBAction)startBtnPushed:(id)sender;
- (IBAction)resetBtnPushed:(id)sender;

-(void)updateTimer;

@end

