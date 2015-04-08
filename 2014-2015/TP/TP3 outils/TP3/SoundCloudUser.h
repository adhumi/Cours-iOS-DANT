//
//  SoundCloudUser.h
//

#import "SoundCloudItem.h"

@interface SoundCloudUser : SoundCloudItem

@property (nonatomic, strong) NSString      *userId;
@property (nonatomic, strong) NSString		*permalink;
@property (nonatomic, strong) NSString		*username;
@property (nonatomic, strong) NSString		*uri;
@property (nonatomic, strong) NSString		*permalinkURL;
@property (nonatomic, strong) NSString		*avatarURL;
@property (nonatomic, strong) NSString		*country;
@property (nonatomic, strong) NSString		*fullName;
@property (nonatomic, strong) NSString		*city;
@property (nonatomic, strong) NSString		*soundCloudUserDescription;
@property (nonatomic, strong) NSString		*discogsName;
@property (nonatomic, strong) NSString		*myspaceName;
@property (nonatomic, strong) NSString		*website;
@property (nonatomic, strong) NSString		*websiteTitle;
@property (nonatomic, assign) BOOL          online;
@property (nonatomic, assign) int           trackCount;
@property (nonatomic, assign) int           playlistCount;
@property (nonatomic, assign) int           followersCount;
@property (nonatomic, assign) int           followingsCount;
@property (nonatomic, assign) int           publicFavoritesCount;
@property (nonatomic, strong) NSString		*plan;
@property (nonatomic, assign) int           privateTracksCount;
@property (nonatomic, assign) int           privatePlaylistsCount;
@property (nonatomic, assign) BOOL          primaryEmailConfirmed;

+ (SoundCloudUser *)userWithDictionary:(NSDictionary*)userData;

- (NSString *)avatarURLForSize:(SoundCloudImageSize)size;

@end
