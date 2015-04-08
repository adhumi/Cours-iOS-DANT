//
//  SoundCloudTrack.m
//

#import "SoundCloudTrack.h"

@implementation SoundCloudTrack

+ (SoundCloudTrack*)trackWithDictionary:(NSDictionary*)trackData {
    SoundCloudTrack* track = [[SoundCloudTrack alloc] init];
    
    if (trackData == nil) return nil;

    if (trackData[@"id"] && ![trackData[@"id"] isKindOfClass:[NSNull class]]) {
        track.trackId = trackData[@"id"];
    }
    if (trackData[@"created_at"] && ![trackData[@"created_at"] isKindOfClass:[NSNull class]]) {
		NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss Z"];
		track.createdAt = [dateFormatter dateFromString:trackData[@"created_at"]];
	}
    if (trackData[@"user_id"] && ![trackData[@"user_id"] isKindOfClass:[NSNull class]]) {
        track.userId = trackData[@"user_id"];
    }
    if (trackData[@"user"] && ![trackData[@"user"] isKindOfClass:[NSNull class]]) {
        track.user = [SoundCloudUser userWithDictionary:trackData[@"user"]];
    }
    if (trackData[@"title"] && ![trackData[@"title"] isKindOfClass:[NSNull class]]) {
        track.title = trackData[@"title"];
    }
    if (trackData[@"permalink"] && ![trackData[@"permalink"] isKindOfClass:[NSNull class]]) {
        track.permalink = trackData[@"permalink"];
    }
    if (trackData[@"permalink_url"] && ![trackData[@"permalink_url"] isKindOfClass:[NSNull class]]) {
        track.permalinkUrl = trackData[@"permalink_url"];
    }
    if (trackData[@"uri"] && ![trackData[@"uri"] isKindOfClass:[NSNull class]]) {
        track.uri = trackData[@"uri"];
    }
    if (trackData[@"sharing"] && ![trackData[@"sharing"] isKindOfClass:[NSNull class]]) {
        track.sharing = trackData[@"sharing"];
    }
    if (trackData[@"purchase_url"] && ![trackData[@"purchase_url"] isKindOfClass:[NSNull class]]) {
        track.purchaseUrl = trackData[@"purchase_url"];
    }
    if (trackData[@"artwork_url"] && ![trackData[@"artwork_url"] isKindOfClass:[NSNull class]]) {
        track.artworkURL = trackData[@"artwork_url"];
    }
    if (trackData[@"soundCloudTrackDescription"] && ![trackData[@"soundCloudTrackDescription"] isKindOfClass:[NSNull class]]) {
        track.soundCloudTrackDescription = trackData[@"soundCloudTrackDescription"];
    }
    if (trackData[@"duration"] && ![trackData[@"duration"] isKindOfClass:[NSNull class]]) {
        track.duration = [trackData[@"duration"] intValue];
    }
    if (trackData[@"genre"] && ![trackData[@"genre"] isKindOfClass:[NSNull class]]) {
        track.genre = trackData[@"genre"];
    }
    if (trackData[@"shared_to_count"] && ![trackData[@"shared_to_count"] isKindOfClass:[NSNull class]]) {
        track.sharedToCount = [trackData[@"shared_to_count"] intValue];
    }
    if (trackData[@"tag_list"] && ![trackData[@"tag_list"] isKindOfClass:[NSNull class]]) {
        track.tagList = trackData[@"tag_list"];
    }
    if (trackData[@"label_name"] && ![trackData[@"label_name"] isKindOfClass:[NSNull class]]) {
        track.label = trackData[@"label_name"];
    }
    if (trackData[@"release_day"] && ![trackData[@"release_day"] isKindOfClass:[NSNull class]]) {
        track.releaseDay = [trackData[@"release_day"] intValue];
    }
    if (trackData[@"release_month"] && ![trackData[@"release_month"] isKindOfClass:[NSNull class]]) {
        track.releaseMonth = [trackData[@"release_month"] intValue];
    }
    if (trackData[@"release_year"] && ![trackData[@"release_year"] isKindOfClass:[NSNull class]]) {
        track.releaseYear = [trackData[@"release_year"] intValue];
    }
    if (trackData[@"streamable"] && ![trackData[@"streamable"] isKindOfClass:[NSNull class]]) {
        track.streamable = [trackData[@"streamable"] boolValue];
    }
    if (trackData[@"downloadable"] && ![trackData[@"downloadable"] isKindOfClass:[NSNull class]]) {
        track.downloadable = [trackData[@"downloadable"] boolValue];
    }
    if (trackData[@"license"] && ![trackData[@"license"] isKindOfClass:[NSNull class]]) {
        track.license = trackData[@"license"];
    }
    if (trackData[@"waveform_url"] && ![trackData[@"waveform_url"] isKindOfClass:[NSNull class]]) {
        track.waveformUrl = trackData[@"waveform_url"];
    }
    if (trackData[@"download_url"] && ![trackData[@"download_url"] isKindOfClass:[NSNull class]]) {
        track.downloadUrl = trackData[@"download_url"];
    }
    if (trackData[@"stream_url"] && ![trackData[@"stream_url"] isKindOfClass:[NSNull class]]) {
        track.streamUrl = trackData[@"stream_url"];
    }
    if (trackData[@"bpm"] && ![trackData[@"bpm"] isKindOfClass:[NSNull class]]) {
        track.bpm = [trackData[@"bpm"] intValue];
    }
    if (trackData[@"user_favorite"] && ![trackData[@"user_favorite"] isKindOfClass:[NSNull class]]) {
        track.userFavorite = [trackData[@"user_favorite"] boolValue];
    }
    
    return track;
}

- (NSString *)artworkURLForSize:(SoundCloudImageSize)size {
	return [super imageURLForSize:size originalURL:self.artworkURL];
}

- (NSString *)description {
	return [NSString stringWithFormat:@"<%@:%@> %@", NSStringFromClass([self class]), self.trackId, self.title];
}

- (BOOL)isEqual:(NSObject *)object {
	if ([super isEqual:object]) {
		return YES;
	}
	
	if ([object isKindOfClass:[self class]]) {
		return [self.trackId isEqual:[(typeof(self))object trackId]];
	}
	
	return NO;
}

@end
