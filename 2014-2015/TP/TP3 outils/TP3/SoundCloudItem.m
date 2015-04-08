//
//  SoundCloudItem.m
//

#import "SoundCloudItem.h"

@implementation SoundCloudItem

- (NSString *)imageURLForSize:(SoundCloudImageSize)size originalURL:(NSString *)original {
	if (!original || ![original isKindOfClass:[NSString class]]) {
		return original;
	}
	
	NSString *sizeString = @"large";
	
	switch (size) {
		case SoundCloudImageSize500:
			sizeString = @"t500x500";
			break;
		case SoundCloudImageSize400:
			sizeString = @"crop";
			break;
		case SoundCloudImageSize300:
			sizeString = @"t300x300";
			break;
		case SoundCloudImageSize100:
			sizeString = @"large";
			break;
		case SoundCloudImageSize67:
			sizeString = @"t67x67";
			break;
		case SoundCloudImageSize47:
			sizeString = @"badge";
			break;
		case SoundCloudImageSize32:
			sizeString = @"small";
			break;
		case SoundCloudImageSize20:
			sizeString = @"tiny";
			break;
		case SoundCloudImageSize18:
			sizeString = @"tiny";
			break;
		case SoundCloudImageSize16:
			sizeString = @"mini";
			break;
		case SoundCloudImageSizeOriginal:
			sizeString = @"original";
			break;
			
		default:
			break;
	}
	
	return [original stringByReplacingOccurrencesOfString:@"large" withString:sizeString];
}

@end
