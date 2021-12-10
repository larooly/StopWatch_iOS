//
//  ViewController.m
//  stopwatch
//
//  Created by active on 2020/05/06.
//  Copyright © 2020 activeKJS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize timerLabel,startBtn,resetBtn;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    runnig =NO;
    count=0;
    timerLabel.text=@"00:00.00";
    startBtn.layer.cornerRadius=45;
    resetBtn.layer.cornerRadius=45;
    
}


- (IBAction)resetBtnPushed:(id)sender {
    [self stoptimer];
    count=0;
    timerLabel.text = @"00:00.00";
}

- (IBAction)startBtnPushed:(id)sender {
    if(runnig==NO){
        runnig=YES;
        [startBtn setTitle:@"STOP" forState:UIControlStateNormal];
        if(timer ==nil){
            timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        }
    }else{
        [self stoptimer];
       
    }
}
-(void)stoptimer{
    runnig=NO;
    [timer invalidate];
    timer = nil;
    [startBtn setTitle:@"START" forState:UIControlStateNormal];
    
}
-(void)updateTimer{
    count++;
    int min= floor(count/100/60);
    int sec = floor(count/100);
    int mSec = count%100;
    if(sec>=60){
        sec=sec%60;
    }
    timerLabel.text=[NSString stringWithFormat:@"%02d:%02d.%02d",min,sec,mSec];
}
@end
