//
//  ViewController.h
//  MultiVideoPlay
//
//  Created by Nandeep Mali on 05/09/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController {    
    MPMoviePlayerController *moviePlayer1;
    MPMoviePlayerController *moviePlayer2;
    MPMoviePlayerController *moviePlayer3;
    MPMoviePlayerController *moviePlayer4;
    MPMoviePlayerController *moviePlayer5;
    MPMoviePlayerController *moviePlayer6;
}

- (IBAction)handleMovie1:(id)sender;
- (IBAction)handleMovie2:(id)sender;
- (IBAction)handleMovie3:(id)sender;
- (IBAction)handleMovie4:(id)sender;
- (IBAction)handleMovie5:(id)sender;
- (IBAction)handleMovie6:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *movieView;

@property(weak, nonatomic) MPMoviePlayerController *currentPlayer;

@end
