//
//  LazyDownloading.h
//  PhotoGallery
//
//  Created by cuelogic on 03/09/15.
//  Copyright (c) 2015 Cuelogic Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ImageDataBlock)(NSMutableDictionary *imageDetailsDictionary);

@interface LazyDownloading : NSObject<NSURLConnectionDataDelegate,NSURLConnectionDelegate>


-(void)downloadImagesDetailsWithBlocks:(ImageDataBlock)withImageDetailsBlock;

@end
