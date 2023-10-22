#import <UIKit/UIKit.h>

%hook APIUser
- (bool)isPlus {
	return YES;
}
%end

%hook AllTrailsPatchedSwiftClassNameIndexUser
- (bool)isPlus {
	return YES;
}
%end

%hook AllTrailsPatchedSwiftClassNamePhotoGalleryItem
- (bool)photographerIsPlus {
	return YES;
}
%end

%hook AllTrailsPatchedSwiftClassNamePurchaseCTAAdapter
- (bool)hasAllProducts {
	return YES;
}
%end

%hook AllTrailsPatchedSwiftClassNamePurchaseCTAAdapterV3
- (bool)hasAllProducts {
	return YES;
}
%end

%hook AllTrailsPatchedSwiftClassNameUserService
- (bool)userIsPlus {
	return YES;
}
%end

%hook GADDynamicHeightSearchRequest
- (void)setPlusOnesExtensionEnabled:(bool)arg1 {
	arg1 = YES;
	%orig;
}

- (bool)plusOnesExtensionEnabled {
	return YES;
}
%end

%hook LegacyPurchaseManager
- (bool)wasPlus {
	return YES;
}

- (void)setWasPlus:(bool)arg1 {
	arg1 = YES;
	%orig;
}
%end

%hook NavigatorViewController
- (bool)userIsPlus {
	return YES;
}

- (void)setUserIsPlus:(bool)arg1 {
	arg1 = YES;
	%orig;
}
%end

%hook TrailReview
- (bool)isOwnedByCurrentProfile {
	return YES;
}
%end

%hook UserViewModel
- (bool)isPlus {
	return YES;
}

- (void)setIsPlus:(bool)arg1 {
	arg1 = YES;
	%orig;
}
%end

%ctor {
	%init(AllTrailsPatchedSwiftClassNamePurchaseCTAAdapter = objc_getClass("AllTrails.PurchaseCTAAdapter"),
		AllTrailsPatchedSwiftClassNamePurchaseCTAAdapterV3 = objc_getClass("AllTrails.PurchaseCTAAdapterV3"),
		AllTrailsPatchedSwiftClassNameIndexUser = objc_getClass("AllTrails.IndexUser"),
		AllTrailsPatchedSwiftClassNameUserService = objc_getClass("AllTrails.UserService"),
		AllTrailsPatchedSwiftClassNamePhotoGalleryItem = objc_getClass("AllTrails.PhotoGalleryItem"));

}