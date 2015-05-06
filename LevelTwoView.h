//
//  LevelTwoView.h
//  SlapSpot
//
//  Created by Taylor Stadeli on 4/18/15.
//  Copyright (c) 2015 Taylor Stadeli. All rights reserved.
//
//levelTwoView.h defines atrributes that will be used in the first level
//

#import <UIKit/UIKit.h>

@interface LevelTwoView : UIViewController{

UIImage *yellowspot;
UIImage *redspot;
UIImage *greenspot;

    IBOutlet UIImageView *spot1;
    IBOutlet UIImageView *spot2;
    IBOutlet UIImageView *spot3;
    IBOutlet UIImageView *spot4;
    IBOutlet UIImageView *spot5;
    IBOutlet UIImageView *spot6;
    IBOutlet UIImageView *spot7;
    IBOutlet UIImageView *spot8;
    IBOutlet UIImageView *spot9;
    IBOutlet UIImageView *spot10;
    
    CGPoint pos1;
    CGPoint pos2;
    CGPoint pos3;
    CGPoint pos4;
    CGPoint pos5;
    CGPoint pos6;
    CGPoint pos7;
    CGPoint pos8;
    CGPoint pos9;
    CGPoint pos10;
}

@property(nonatomic,retain)  UIImageView *spot1;
@property(nonatomic,retain)  UIImageView *spot2;
@property(nonatomic,retain)  UIImageView *spot3;
@property(nonatomic,retain)  UIImageView *spot4;
@property(nonatomic,retain)  UIImageView *spot5;
@property(nonatomic,retain)  UIImageView *spot6;
@property(nonatomic,retain)  UIImageView *spot7;
@property(nonatomic,retain)  UIImageView *spot8;
@property(nonatomic,retain)  UIImageView *spot9;
@property(nonatomic,retain)  UIImageView *spot10;

@end
