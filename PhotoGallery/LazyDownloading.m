//
//  LazyDownloading.m
//  PhotoGallery
//
//  Created by cuelogic on 03/09/15.
//  Copyright (c) 2015 Cuelogic Technologies. All rights reserved.
//

#import "LazyDownloading.h"

@implementation LazyDownloading
{
    
}



-(void)downloadImagesDetailsWithBlocks:(ImageDataBlock)withImageDetailsBlock;
{
    
    
    // Back Ground Thread
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        
        
    // Get Image Data
    NSData *data=[self fetchImageDataWithImageURL:@"http://192.168.10.34/imageData.php"];
    
    
    // Parse the data
    NSError *error=nil;
    id response=[NSJSONSerialization JSONObjectWithData:data options:
                 NSJSONReadingMutableContainers error:&error];
    
    NSMutableDictionary *finalDictionary=[[NSMutableDictionary alloc] init];
    
    for (NSString* key in response) {
        
        id value = [response objectForKey:key];
        
        NSMutableArray *imagesURLArray=[[NSMutableArray alloc] init];
        for (NSMutableDictionary* key in value) {
            
            // make complete URL
            NSString *imageURL=[NSString stringWithFormat:@"http://192.168.10.34/%@",[key valueForKey:@"imgURL"]];
            
            // fetch and save Data
            [imagesURLArray addObject:[self fetchImageDataWithImageURL:imageURL]];
        }
        
        [finalDictionary setObject:imagesURLArray forKey:key];
    }
    
       
        // Do on main thread
         dispatch_async(dispatch_get_main_queue(), ^{
                 withImageDetailsBlock(finalDictionary);
             });
        
    });
}

-(NSData *)fetchImageDataWithImageURL:(NSString *)imageURL
{
    
    NSURL *url=[NSURL URLWithString:imageURL];
    NSData *data=[NSData dataWithContentsOfURL:url];
    return data;
}

@end
