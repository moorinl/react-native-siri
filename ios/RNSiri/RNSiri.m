#import "RNSiri.h"

@implementation RNSiri

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(requestAuthorization:(RCTResponseSenderBlock)callback)
{
  [INPreferences requestSiriAuthorization:^(INSiriAuthorizationStatus status) {
    NSString *result = nil;
    
    switch(status) {
      case INSiriAuthorizationStatusNotDetermined:
        result = @"NotDetermined";
        break;
      case INSiriAuthorizationStatusRestricted:
        result = @"Restricted";
        break;
      case INSiriAuthorizationStatusDenied:
        result = @"Denied";
        break;
      case INSiriAuthorizationStatusAuthorized:
        result = @"Authorized";
        break;

      default:
        result = @"Unknown";
    }
    
    callback(@[result]);
  }];
}

@end
