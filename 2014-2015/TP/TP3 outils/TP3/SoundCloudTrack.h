//
//  SoundCloudTrack.h
//

#import "SoundCloudItem.h"
#import "SoundCloudUser.h"

@interface SoundCloudTrack : SoundCloudItem

@property (nonatomic, strong) NSString			*trackId;
@property (nonatomic, strong) NSDate			*createdAt; // Timestamp
@property (nonatomic, strong) NSString			*userId;
@property (nonatomic, retain) SoundCloudUser	*user;
@property (nonatomic, strong) NSString			*title;
@property (nonatomic, strong) NSString			*permalink;
@property (nonatomic, strong) NSString			*permalinkUrl;
@property (nonatomic, strong) NSString			*uri;
@property (nonatomic, strong) NSString*         sharing;
@property (nonatomic, strong) NSString*         purchaseUrl;
@property (nonatomic, strong) NSString*         artworkURL;
@property (nonatomic, strong) NSString*         soundCloudTrackDescription; // code html
@property (nonatomic, assign) int               duration;
@property (nonatomic, strong) NSString*         genre;
@property (nonatomic, assign) int               sharedToCount;
@property (nonatomic, strong) NSString*         tagList;
@property (nonatomic, strong) NSString*         label;
@property (nonatomic, assign) int               releaseDay;
@property (nonatomic, assign) int               releaseMonth;
@property (nonatomic, assign) int               releaseYear;
@property (nonatomic, assign) bool              streamable;
@property (nonatomic, assign) bool              downloadable;
@property (nonatomic, strong) NSString*         license;
@property (nonatomic, strong) NSString*         waveformUrl;
@property (nonatomic, strong) NSString*         downloadUrl;
@property (nonatomic, strong) NSString*         streamUrl;
@property (nonatomic, assign) int               bpm;
@property (nonatomic, assign) bool              userFavorite;

+ (SoundCloudTrack*)trackWithDictionary:(NSDictionary*)trackData;

- (NSString *)artworkURLForSize:(SoundCloudImageSize)size;

@end
