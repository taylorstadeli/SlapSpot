//
//  LevelOneView.m
//  SlapSpot
//
//  Created by Taylor Stadeli on 4/5/15.
//  Copyright (c) 2015 Taylor Stadeli. All rights reserved.
//
//levelOneView.m implements the spot actions for the first level of the game
//

#import "LevelOneView.h"

@implementation LevelOneView{
    
    // create variables to keep track of whether the spot was hit or not
    BOOL hit1;
    BOOL hit2;
    BOOL hit3;
    BOOL hit4;
    BOOL hit5;
    BOOL hit6;
    BOOL hit7;
    BOOL hit8;
    BOOL hit9;
    BOOL hit10;
    
    // create variables to keep track of whether the spot is highlighted
    BOOL yellow1;
    BOOL yellow2;
    BOOL yellow3;
    BOOL yellow4;
    BOOL yellow5;
    BOOL yellow6;
    BOOL yellow7;
    BOOL yellow8;
    BOOL yellow9;
    BOOL yellow10;
    
    // create a counter that will be used to keep track of how many spots have been missed
    int count;
    
    // create timers that will be used to determine when to change the spots' colors
    NSTimer *timer1;
    NSTimer *timer2;
    NSTimer *timer3;
    NSTimer *timer4;
    NSTimer *timer5;
    NSTimer *timer6;
    NSTimer *timer7;
    NSTimer *timer8;
    NSTimer *timer9;
    NSTimer *timer10;
    NSTimer *timer11;
}

@synthesize spot1;
@synthesize spot2;
@synthesize spot3;
@synthesize spot4;
@synthesize spot5;
@synthesize spot6;
@synthesize spot7;
@synthesize spot8;
@synthesize spot9;
@synthesize spot10;


-(void) onTimer {
    
//define the movement for spot1
    spot1.center = CGPointMake(spot1.center.x+pos1.x,spot1.center.y+pos1.y);
    
    if(spot1.center.x > 320 || spot1.center.x < 0)
        pos1.x = -pos1.x;
    if(spot1.center.y > 568 || spot1.center.y < 0)
        pos1.y = -pos1.y;
    
    //define the movement for spot2
    spot2.center = CGPointMake(spot2.center.x+pos2.x,spot2.center.y+pos2.y);
    
    if(spot2.center.x > 320 || spot2.center.x < 0)
        pos2.x = -pos2.x;
    if(spot2.center.y > 568 || spot2.center.y < 0)
        pos2.y = -pos2.y;
    
    //define the movement for spot3
    spot3.center = CGPointMake(spot3.center.x+pos3.x,spot3.center.y+pos3.y);
    
    if(spot3.center.x > 320 || spot3.center.x < 0)
        pos3.x = -pos3.x;
    if(spot3.center.y > 568 || spot3.center.y < 0)
        pos3.y = -pos3.y;
    
    
    //define the movement for spot4
    spot4.center = CGPointMake(spot4.center.x+pos4.x,spot4.center.y+pos4.y);
    
    if(spot4.center.x > 320 || spot4.center.x < 0)
        pos4.x = -pos4.x;
    if(spot4.center.y > 568 || spot4.center.y < 0)
        pos4.y = -pos4.y;
    
    
    //define the movement for spot5
    spot5.center = CGPointMake(spot5.center.x+pos5.x,spot5.center.y+pos5.y);
    
    if(spot5.center.x > 320 || spot5.center.x < 0)
        pos5.x = -pos5.x;
    if(spot5.center.y > 568 || spot5.center.y < 0)
        pos5.y = -pos5.y;
    
    
    //define the movement for spot6
    spot6.center = CGPointMake(spot6.center.x+pos6.x,spot6.center.y+pos6.y);
    
    if(spot6.center.x > 320 || spot6.center.x < 0)
        pos6.x = -pos6.x;
    if(spot6.center.y > 568 || spot6.center.y < 0)
        pos6.y = -pos6.y;
    
    
    //define the movement for spot7
    spot7.center = CGPointMake(spot7.center.x+pos7.x,spot7.center.y+pos7.y);
    
    if(spot7.center.x > 320 || spot7.center.x < 0)
        pos7.x = -pos7.x;
    if(spot7.center.y > 568 || spot7.center.y < 0)
        pos7.y = -pos7.y;
    
    //define the movement for spot8
    spot8.center = CGPointMake(spot8.center.x+pos8.x,spot8.center.y+pos8.y);
    
    if(spot8.center.x > 320 || spot8.center.x < 0)
        pos8.x = -pos8.x;
    if(spot8.center.y > 568 || spot8.center.y < 0)
        pos8.y = -pos8.y;
    
    //define the movement for spot9
    spot9.center = CGPointMake(spot9.center.x+pos9.x,spot9.center.y+pos9.y);
    
    if(spot9.center.x > 320 || spot9.center.x < 0)
        pos9.x = -pos9.x;
    if(spot9.center.y > 568 || spot9.center.y < 0)
        pos9.y = -pos9.y;
    
    //define the movement for spot10
    spot10.center = CGPointMake(spot10.center.x+pos10.x,spot10.center.y+pos10.y);
    
    if(spot10.center.x > 320 || spot10.center.x < 0)
        pos10.x = -pos10.x;
    if(spot10.center.y > 568 || spot10.center.y < 0)
        pos10.y = -pos10.y;
    
}



// Implement viewDidLoad to do additional setup after loading the view.
- (void)viewDidLoad {
    
    //none of the spots have been missed yet
    count = 0;
    
    //none of the spots have been hit yet
    hit1 = NO;
    hit2 = NO;
    hit3 = NO;
    hit4 = NO;
    hit5 = NO;
    hit6 = NO;
    hit7 = NO;
    hit8 = NO;
    hit9 = NO;
    hit10 = NO;
    
    //none of the spots have been highlighted yet
    yellow1 = NO;
    yellow2 = NO;
    yellow3 = NO;
    yellow4 = NO;
    yellow5 = NO;
    yellow6 = NO;
    yellow7 = NO;
    yellow8 = NO;
    yellow9 = NO;
    yellow10 = NO;
    
    //determine the starting points and speed of the spots
    pos1 = CGPointMake(5.0,4.0);
    pos2 = CGPointMake(5.0,4.0);
    pos3 = CGPointMake(5.0,4.0);
    pos4 = CGPointMake(5.0,4.0);
    pos5 = CGPointMake(5.0,4.0);
    pos6 = CGPointMake(5.0,4.0);
    pos7 = CGPointMake(5.0,4.0);
    pos8 = CGPointMake(5.0,4.0);
    pos9 = CGPointMake(5.0,4.0);
    pos10  = CGPointMake(5.0,4.0);
    
   
    
     yellowspot = [UIImage imageNamed:@"yellowdot.png"];
     redspot    = [UIImage imageNamed:@"reddot.png"];
     greenspot  = [UIImage imageNamed:@"greendot.png"];
    
    [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(onTimer) userInfo:nil repeats:YES];


   timer1 = [NSTimer scheduledTimerWithTimeInterval: 3.0 target:self selector:@selector(timesUp1 )userInfo:nil repeats:NO];
    
    timer2 = [NSTimer scheduledTimerWithTimeInterval:6.0 target:self selector:@selector(timesUp2 )userInfo:nil repeats:NO];
    
  timer3 =  [NSTimer scheduledTimerWithTimeInterval: 9.0 target:self selector:@selector(timesUp3 )userInfo:nil repeats:NO];
    
  timer4 =  [NSTimer scheduledTimerWithTimeInterval: 12.0 target:self selector:@selector(timesUp4 )userInfo:nil repeats:NO];
    
   timer5 = [NSTimer scheduledTimerWithTimeInterval: 15.0 target:self selector:@selector(timesUp5 )userInfo:nil repeats:NO];
    
   timer6 =  [NSTimer scheduledTimerWithTimeInterval: 18.0 target:self selector:@selector(timesUp6 )userInfo:nil repeats:NO];
    
   timer7 = [NSTimer scheduledTimerWithTimeInterval: 21.0 target:self selector:@selector(timesUp7 )userInfo:nil repeats:NO];
    
  timer8 = [NSTimer scheduledTimerWithTimeInterval: 24.0 target:self selector:@selector(timesUp8 )userInfo:nil repeats:NO];
    
  timer9 =  [NSTimer scheduledTimerWithTimeInterval: 27.0 target:self selector:@selector(timesUp9 )userInfo:nil repeats:NO];
    
   timer10 = [NSTimer scheduledTimerWithTimeInterval: 30.0 target:self selector:@selector(timesUp10 )userInfo:nil repeats:NO];

    timer11 = [NSTimer scheduledTimerWithTimeInterval: 33.0 target:self selector:@selector(timesUp )userInfo:nil repeats:NO];
}
//timer method for spot 1, turn spot yellow
-(void)timesUp1{
    yellow1 = YES;
    spot1.image = yellowspot;
    
}
//timer for spot 2, turn spot 1 red or green depending if they hit the spot, turn spot 2 yellow
-(void)timesUp2{
    yellow2 = YES;
    if(hit1==NO){
    spot1.image = redspot;
        count++;
    }
    spot2.image = yellowspot;
}
//timer for spot 3, turn spot 2 red or green depending if they hit the spot, turn spot 3 yellow
-(void)timesUp3{
    yellow3 = YES;
    if(hit2==NO){
        spot2.image = redspot;
        count++;
    }
    spot3.image = yellowspot;
}
//timer for spot 4, turn spot 3 red or green depending if they hit the spot, turn spot 4 yellow
-(void)timesUp4{
    yellow4 = YES;
    if(hit3==NO){
        spot3.image = redspot;
        count++;
    }
    if(count==3)
    {
       //alert the user if they failed the level
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Loser"
                                                        message:[NSString stringWithFormat:@"You lost level 1"]
                                                       delegate:self
                                              cancelButtonTitle:@"Start Over"
                                              otherButtonTitles:nil];
        [alert show];
        [timer1 invalidate];
        [timer2 invalidate];
        [timer3 invalidate];
        [timer4 invalidate];
        [timer5 invalidate];
        [timer6 invalidate];
        [timer7 invalidate];
        [timer8 invalidate];
        [timer9 invalidate];
        [timer10 invalidate];
        [timer11 invalidate];
    }
    spot4.image = yellowspot;
}
//timer for spot 5, turn spot 4 red or green depending if they hit the spot, turn spot 5 yellow
-(void)timesUp5{
    yellow5 = YES;
    if(hit4==NO){
        spot4.image = redspot;
        count++;
    }
    if(count==3)
    {
        //alert the user if they failed the level
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Loser"
                                                        message:[NSString stringWithFormat:@"You lost level 1"]
                                                       delegate:self
                                              cancelButtonTitle:@"Start Over"
                                              otherButtonTitles:nil];
        [alert show];
        [timer1 invalidate];
        [timer2 invalidate];
        [timer3 invalidate];
        [timer4 invalidate];
        [timer5 invalidate];
        [timer6 invalidate];
        [timer7 invalidate];
        [timer8 invalidate];
        [timer9 invalidate];
        [timer10 invalidate];
        [timer11 invalidate];
    }
    spot5.image = yellowspot;
}
//timer for spot 6, turn spot 5 red or green depending if they hit the spot, turn spot 5 yellow
-(void)timesUp6{
    yellow6 = YES;
    if(hit5==NO){
        spot5.image = redspot;
        count++;
    }
    if(count==3)
    {
        //alert the user if they failed the level
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Loser"
                                                        message:[NSString stringWithFormat:@"You lost level 1"]
                                                       delegate:self
                                              cancelButtonTitle:@"Start Over"
                                              otherButtonTitles:nil];
        [alert show];
        [timer1 invalidate];
        [timer2 invalidate];
        [timer3 invalidate];
        [timer4 invalidate];
        [timer5 invalidate];
        [timer6 invalidate];
        [timer7 invalidate];
        [timer8 invalidate];
        [timer9 invalidate];
        [timer10 invalidate];
        [timer11 invalidate];
    }
    spot6.image = yellowspot;
}
//timer for spot 7, turn spot 6 red or green depending if they hit the spot, turn spot 7 yellow
-(void)timesUp7{
    yellow7 = YES;
    if(hit6==NO){
        spot6.image = redspot;
        count++;
    }
    if(count==3)
    {
        //alert the user if they failed the level
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Loser"
                                                        message:[NSString stringWithFormat:@"You lost level 1"]
                                                       delegate:self
                                              cancelButtonTitle:@"Start Over"
                                              otherButtonTitles:nil];
        [alert show];
        [timer1 invalidate];
        [timer2 invalidate];
        [timer3 invalidate];
        [timer4 invalidate];
        [timer5 invalidate];
        [timer6 invalidate];
        [timer7 invalidate];
        [timer8 invalidate];
        [timer9 invalidate];
        [timer10 invalidate];
        [timer11 invalidate];
    }
    spot7.image = yellowspot;
}
//timer for spot 8, turn spot 7 red or green depending if they hit the spot, turn spot 8 yellow
-(void)timesUp8{
    yellow8 = YES;
    if(hit7==NO){
        spot7.image = redspot;
        count++;
    }
    if(count==3)
    {
        //alert the user if they failed the level
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Loser"
                                                        message:[NSString stringWithFormat:@"You lost level 1"]
                                                       delegate:self
                                              cancelButtonTitle:@"Start Over"
                                              otherButtonTitles:nil];
        [alert show];
        [timer1 invalidate];
        [timer2 invalidate];
        [timer3 invalidate];
        [timer4 invalidate];
        [timer5 invalidate];
        [timer6 invalidate];
        [timer7 invalidate];
        [timer8 invalidate];
        [timer9 invalidate];
        [timer10 invalidate];
        [timer11 invalidate];
    }
    spot8.image = yellowspot;
}
//timer for spot 9, turn spot 8 red or green depending if they hit the spot, turn spot 9 yellow
-(void)timesUp9{
    yellow9 = YES;
    if(hit8==NO){
        spot8.image = redspot;
        count++;
    }
    if(count==3)
    {
        //alert the user if they failed the level
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Loser"
                                                        message:[NSString stringWithFormat:@"You lost level 1"]
                                                       delegate:self
                                              cancelButtonTitle:@"Start Over"
                                              otherButtonTitles:nil];
        [alert show];
        [timer1 invalidate];
        [timer2 invalidate];
        [timer3 invalidate];
        [timer4 invalidate];
        [timer5 invalidate];
        [timer6 invalidate];
        [timer7 invalidate];
        [timer8 invalidate];
        [timer9 invalidate];
        [timer10 invalidate];
        [timer11 invalidate];
    }
   spot9.image = yellowspot;
}
//timer for spot 10, turn spot 9 red or green depending if they hit the spot, turn spot 10 yellow
-(void)timesUp10{
    yellow10 = YES;
    if(hit9==NO){
        spot9.image = redspot;
        count++;
    }
    if(count==3)
    {
        //alert the user if they failed the level
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Loser"
                                                        message:[NSString stringWithFormat:@"You lost level 1"]
                                                       delegate:self
                                              cancelButtonTitle:@"Start Over"
                                              otherButtonTitles:nil];
        [alert show];
        [timer1 invalidate];
        [timer2 invalidate];
        [timer3 invalidate];
        [timer4 invalidate];
        [timer5 invalidate];
        [timer6 invalidate];
        [timer7 invalidate];
        [timer8 invalidate];
        [timer9 invalidate];
        [timer10 invalidate];
        [timer11 invalidate];
    }
   spot10.image = yellowspot;
}

//timer for end of game displays message of whether they passed or failed the level
-(void)timesUp{
    
    if(hit10==NO){
        spot10.image = redspot;
        count++;
    }
    if(count==3)
    {
        //alert the user if they failed the level
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Loser"
                                                        message:[NSString stringWithFormat:@"You lost level 1"]
                                                       delegate:self
                                              cancelButtonTitle:@"Start Over"
                                              otherButtonTitles:nil];
        [alert show];
        [timer1 invalidate];
        [timer2 invalidate];
        [timer3 invalidate];
        [timer4 invalidate];
        [timer5 invalidate];
        [timer6 invalidate];
        [timer7 invalidate];
        [timer8 invalidate];
        [timer9 invalidate];
        [timer10 invalidate];
        [timer11 invalidate];
    }
    else{
        //alert the user if they passed the level 
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Winner"
                                                        message:[NSString stringWithFormat:@"You beat level 1"]
                                                       delegate:self
                                              cancelButtonTitle:@"Start Over"
                                              otherButtonTitles:@"Level 2", nil];
        [alert show];
        [timer1 invalidate];
        [timer2 invalidate];
        [timer3 invalidate];
        [timer4 invalidate];
        [timer5 invalidate];
        [timer6 invalidate];
        [timer7 invalidate];
        [timer8 invalidate];
        [timer9 invalidate];
        [timer10 invalidate];
        [timer11 invalidate];
    }
}

-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        [self performSegueWithIdentifier:@"reset" sender:self];
    }
    else{
        [self performSegueWithIdentifier:@"level2" sender:self];
    }
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}




-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
//if spot1 is yellow and is touched change the spot to green
if(yellow1==YES){
    for (UITouch *touch in touches) { // we really only have one on the simulator
        CGPoint point = [touch locationInView:self.view];
        CGRect frame = [[spot1.layer presentationLayer] frame];
        // find center of spot
        CGPoint center = CGPointMake(frame.origin.x + frame.size.width/2, frame.origin.y + frame.size.height/2);
        // find distance between spot's center and touch
        float distance = pow(center.x-point.x, 2) + pow(center.y-point.y, 2);
        distance = sqrt(distance);

        // check if touch is within spot frame
        if (distance <= frame.size.width/2) {
            spot1.image = greenspot;
            hit1 = YES;
            yellow1  = NO;
        }
    }// end for touch1
}//end yellow1
    
    //if spot2 is yellow and is touched change the spot to green
    if(yellow2==YES){
        for (UITouch *touch in touches) { // we really only have one on the simulator
            CGPoint point = [touch locationInView:self.view];
            CGRect frame = [[spot2.layer presentationLayer] frame];
            // find center of spot
            CGPoint center = CGPointMake(frame.origin.x + frame.size.width/2, frame.origin.y + frame.size.height/2);
            // find distance between spot's center and touch
            float distance = pow(center.x-point.x, 2) + pow(center.y-point.y, 2);
            distance = sqrt(distance);
            
            // check if touch is within spot frame
            if (distance <= frame.size.width/2) {
                spot2.image = greenspot;
                hit2 = YES;
                yellow2  = NO;
            }
        }// end for touch2
    }//end yellow2


    //if spot3 is yellow and is touched change the spot to green
    if(yellow3==YES){
        for (UITouch *touch in touches) { // we really only have one on the simulator
            CGPoint point = [touch locationInView:self.view];
            CGRect frame = [[spot3.layer presentationLayer] frame];
            // find center of spot
            CGPoint center = CGPointMake(frame.origin.x + frame.size.width/2, frame.origin.y + frame.size.height/2);
            // find distance between spot's center and touch
            float distance = pow(center.x-point.x, 2) + pow(center.y-point.y, 2);
            distance = sqrt(distance);
            
            // check if touch is within spot frame
            if (distance <= frame.size.width/2) {
                spot3.image = greenspot;
                hit3 = YES;
                yellow3  = NO;
            }
        }// end for touch3
    }//end yellow3
    
    //if spot4 is yellow and is touched change the spot to green
    if(yellow4==YES){
        for (UITouch *touch in touches) { // we really only have one on the simulator
            CGPoint point = [touch locationInView:self.view];
            CGRect frame = [[spot4.layer presentationLayer] frame];
            // find center of spot
            CGPoint center = CGPointMake(frame.origin.x + frame.size.width/2, frame.origin.y + frame.size.height/2);
            // find distance between spot's center and touch
            float distance = pow(center.x-point.x, 2) + pow(center.y-point.y, 2);
            distance = sqrt(distance);
            
            // check if touch is within spot frame
            if (distance <= frame.size.width/2) {
                spot4.image = greenspot;
                hit4 = YES;
                yellow4  = NO;
            }
        }// end for touch4
    }//end yellow4
    
    
    //if spot5 is yellow and is touched change the spot to green
    if(yellow5==YES){
        for (UITouch *touch in touches) { // we really only have one on the simulator
            CGPoint point = [touch locationInView:self.view];
            CGRect frame = [[spot5.layer presentationLayer] frame];
            // find center of spot
            CGPoint center = CGPointMake(frame.origin.x + frame.size.width/2, frame.origin.y + frame.size.height/2);
            // find distance between spot's center and touch
            float distance = pow(center.x-point.x, 2) + pow(center.y-point.y, 2);
            distance = sqrt(distance);
            
            // check if touch is within spot frame
            if (distance <= frame.size.width/2) {
                spot5.image = greenspot;
                hit5 = YES;
                yellow5  = NO;
            }
        }// end for touch5
    }//end yellow5
    
    //if spot6 is yellow and is touched change the spot to green
    if(yellow6==YES){
        for (UITouch *touch in touches) { // we really only have one on the simulator
            CGPoint point = [touch locationInView:self.view];
            CGRect frame = [[spot6.layer presentationLayer] frame];
            // find center of spot
            CGPoint center = CGPointMake(frame.origin.x + frame.size.width/2, frame.origin.y + frame.size.height/2);
            // find distance between spot's center and touch
            float distance = pow(center.x-point.x, 2) + pow(center.y-point.y, 2);
            distance = sqrt(distance);
            
            // check if touch is within spot frame
            if (distance <= frame.size.width/2) {
                spot6.image = greenspot;
                hit6 = YES;
                yellow6  = NO;
            }
        }// end for touch6
    }//end yellow6
    
    //if spot7 is yellow and is touched change the spot to green
    if(yellow7==YES){
        for (UITouch *touch in touches) { // we really only have one on the simulator
            CGPoint point = [touch locationInView:self.view];
            CGRect frame = [[spot7.layer presentationLayer] frame];
            // find center of spot
            CGPoint center = CGPointMake(frame.origin.x + frame.size.width/2, frame.origin.y + frame.size.height/2);
            // find distance between spot's center and touch
            float distance = pow(center.x-point.x, 2) + pow(center.y-point.y, 2);
            distance = sqrt(distance);
            
            // check if touch is within spot frame
            if (distance <= frame.size.width/2) {
                spot7.image = greenspot;
                hit7 = YES;
                yellow7  = NO;
            }
        }// end for touch7
    }//end yellow7
    
    //if spot8 is yellow and is touched change the spot to green
    if(yellow8==YES){
        for (UITouch *touch in touches) { // we really only have one on the simulator
            CGPoint point = [touch locationInView:self.view];
            CGRect frame = [[spot8.layer presentationLayer] frame];
            // find center of spot
            CGPoint center = CGPointMake(frame.origin.x + frame.size.width/2, frame.origin.y + frame.size.height/2);
            // find distance between spot's center and touch
            float distance = pow(center.x-point.x, 2) + pow(center.y-point.y, 2);
            distance = sqrt(distance);
            
            // check if touch is within spot frame
            if (distance <= frame.size.width/2) {
                spot8.image = greenspot;
                hit8 = YES;
                yellow8  = NO;
            }
        }// end for touch8
    }//end yellow8
    
    //if spot9 is yellow and is touched change the spot to green
    if(yellow9==YES){
        for (UITouch *touch in touches) { // we really only have one on the simulator
            CGPoint point = [touch locationInView:self.view];
            CGRect frame = [[spot9.layer presentationLayer] frame];
            // find center of spot
            CGPoint center = CGPointMake(frame.origin.x + frame.size.width/2, frame.origin.y + frame.size.height/2);
            // find distance between spot's center and touch
            float distance = pow(center.x-point.x, 2) + pow(center.y-point.y, 2);
            distance = sqrt(distance);
            
            // check if touch is within spot frame
            if (distance <= frame.size.width/2) {
                spot9.image = greenspot;
                hit9 = YES;
                yellow9  = NO;
            }
        }// end for touch9
    }//end yellow9
    
    //if spot10 is yellow and is touched change the spot to green
    if(yellow10==YES){
        for (UITouch *touch in touches) { // we really only have one on the simulator
            CGPoint point = [touch locationInView:self.view];
            CGRect frame = [[spot10.layer presentationLayer] frame];
            // find center of spot
            CGPoint center = CGPointMake(frame.origin.x + frame.size.width/2, frame.origin.y + frame.size.height/2);
            // find distance between spot's center and touch
            float distance = pow(center.x-point.x, 2) + pow(center.y-point.y, 2);
            distance = sqrt(distance);
            
            // check if touch is within spot frame
            if (distance <= frame.size.width/2) {
                spot10.image = greenspot;
                hit10 = YES;
                yellow10  = NO;
            }
        }// end for touch10
    }//end yellow10
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}



@end
