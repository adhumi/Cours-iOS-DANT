//
//  SoundCloudItem.h
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, SoundCloudImageSize) {
    SoundCloudImageSize500		= 0,
	SoundCloudImageSize400		= 1,
    SoundCloudImageSize300		= 2,
	SoundCloudImageSize100		= 3,
	SoundCloudImageSize67		= 4,
	SoundCloudImageSize47		= 5,
	SoundCloudImageSize32		= 6,
	SoundCloudImageSize20		= 7,
	SoundCloudImageSize18		= 8,
	SoundCloudImageSize16		= 9,
	SoundCloudImageSizeOriginal	= 10
};

@interface SoundCloudItem : NSObject

- (NSString *)imageURLForSize:(SoundCloudImageSize)size originalURL:(NSString *)original;

@end
