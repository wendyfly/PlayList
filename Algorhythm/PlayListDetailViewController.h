//
//  PlayListDetailViewController.h
//  Algorhythm
//
//  Created by LiaoWenwen on 11/15/15.
//  Copyright © 2015 LiaoWenwen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Playlist.h"

@interface PlayListDetailViewController : UIViewController

@property(strong, nonatomic) Playlist *playlist;

@property (weak, nonatomic) IBOutlet UIImageView *playlistCoverImage;


@property (weak, nonatomic) IBOutlet UILabel *playlistTitile;

@property (weak, nonatomic) IBOutlet UILabel *playlistDescription;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist0;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist1;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist2;

@end
