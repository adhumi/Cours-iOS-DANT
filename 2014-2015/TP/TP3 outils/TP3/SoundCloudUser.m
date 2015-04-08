//
//  SoundCloudUser.m
//

#import "SoundCloudUser.h"

@implementation SoundCloudUser

+ (SoundCloudUser *)userWithDictionary:(NSDictionary *)userData {
    SoundCloudUser *user = [[SoundCloudUser alloc] init];
    
    if (userData == nil) return nil;
    
    if (userData[@"id"] && ![userData[@"id"] isKindOfClass:[NSNull class]]) {
        user.userId = userData[@"id"];
    }
    if (userData[@"permalink"] && ![userData[@"permalink"] isKindOfClass:[NSNull class]]) {
        user.permalink = userData[@"permalink"];
    }
    if (userData[@"username"] && ![userData[@"username"] isKindOfClass:[NSNull class]]) {
        user.username = userData[@"username"];
    }
    if (userData[@"uri"] && ![userData[@"uri"] isKindOfClass:[NSNull class]]) {
        user.uri = userData[@"uri"];
    }
    if (userData[@"permalink_url"] && ![userData[@"permalink_url"] isKindOfClass:[NSNull class]]) {
        user.permalinkURL = userData[@"permalink_url"];
    }
    if (userData[@"avatar_url"] && ![userData[@"avatar_url"] isKindOfClass:[NSNull class]]) {
        user.avatarURL = userData[@"avatar_url"];
    }
    if (userData[@"country"] && ![userData[@"country"] isKindOfClass:[NSNull class]]) {
        user.country = userData[@"country"];
    }
    if (userData[@"full_name"] && ![userData[@"full_name"] isKindOfClass:[NSNull class]]) {
        user.fullName = userData[@"full_name"];
    }
    if (userData[@"city"] && ![userData[@"city"] isKindOfClass:[NSNull class]]) {
        user.city = userData[@"city"];
    }
    if (userData[@"soundCloudUserDescription"] && ![userData[@"soundCloudUserDescription"] isKindOfClass:[NSNull class]]) {
        user.soundCloudUserDescription = userData[@"soundCloudUserDescription"];
    }
    if (userData[@"discogs-name"] && ![userData[@"discogs-name"] isKindOfClass:[NSNull class]]) {
        user.discogsName = userData[@"discogs-name"];
    }
    if (userData[@"myspace-name"] && ![userData[@"myspace-name"] isKindOfClass:[NSNull class]]) {
        user.myspaceName = userData[@"myspace-name"];
    }
    if (userData[@"website"] && ![userData[@"website"] isKindOfClass:[NSNull class]]) {
        user.website = userData[@"website"];
    }
    if (userData[@"website-title"] && ![userData[@"website-title"] isKindOfClass:[NSNull class]]) {
        user.websiteTitle = userData[@"website-title"];
    }
    if (userData[@"online"] && ![userData[@"online"] isKindOfClass:[NSNull class]]) {
        user.online = [userData[@"online"] boolValue];
    }
    if (userData[@"track_count"] && ![userData[@"track_count"] isKindOfClass:[NSNull class]]) {
        user.trackCount = [userData[@"track_count"] intValue];
    }
    if (userData[@"playlist_count"] && ![userData[@"playlist_count"] isKindOfClass:[NSNull class]]) {
        user.playlistCount = [userData[@"playlist_count"] intValue];
    }
    if (userData[@"followers_count"] && ![userData[@"followers_count"] isKindOfClass:[NSNull class]]) {
        user.followersCount = [userData[@"followers_count"] intValue];
    }
    if (userData[@"followings_count"] && ![userData[@"followings_count"] isKindOfClass:[NSNull class]]) {
        user.followingsCount = [userData[@"followings_count"] intValue];
    }
    if (userData[@"public_favorites_count"] && ![userData[@"public_favorites_count"] isKindOfClass:[NSNull class]]) {
        user.publicFavoritesCount = [userData[@"public_favorites_count"] intValue];
    }
    if (userData[@"plan"] && ![userData[@"plan"] isKindOfClass:[NSNull class]]) {
        user.plan = userData[@"plan"];
    }
    if (userData[@"private_tracks_count"] && ![userData[@"private_tracks_count"] isKindOfClass:[NSNull class]]) {
        user.privateTracksCount = [userData[@"private_tracks_count"] intValue];
    }
    if (userData[@"private_playlists_count"] && ![userData[@"private_playlists_count"] isKindOfClass:[NSNull class]]) {
        user.privatePlaylistsCount = [userData[@"private_playlists_count"] intValue];
    }
    if (userData[@"primary_email_confirmed"] && ![userData[@"primary_email_confirmed"] isKindOfClass:[NSNull class]]) {
        user.primaryEmailConfirmed = [userData[@"primary_email_confirmed"] boolValue];
    }
    
    return user;
}

- (NSString *)avatarURLForSize:(SoundCloudImageSize)size {
	return [super imageURLForSize:size originalURL:self.avatarURL];
}

- (NSString *)description {
	return [NSString stringWithFormat:@"<%@:%@> %@", NSStringFromClass([self class]), self.userId, self.username];
}

@end
