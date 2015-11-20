//
//  Playlist.h
//  Algorhythm
//
//  Created by LiaoWenwen on 11/15/15.
//  Copyright © 2015 LiaoWenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Playlist : NSObject

@property(strong, nonatomic) NSString *playlistTitle;
@property(strong, nonatomic) NSString *playlistDescription;
@property(strong, nonatomic) UIImage *playlistIcon;
@property(strong, nonatomic) UIImage *playlistIconLarge;
@property(strong, nonatomic) NSArray *playlistArtists;
@property(strong, nonatomic) UIColor *backgroundColor;


- (instancetype)initWithIndex: (NSUInteger) index;

@end
