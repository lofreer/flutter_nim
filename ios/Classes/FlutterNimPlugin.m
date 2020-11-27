#import "FlutterNimPlugin.h"
#if __has_include(<flutter_nim/flutter_nim-Swift.h>)
#import <flutter_nim/flutter_nim-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_nim-Swift.h"
#endif

@implementation FlutterNimPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterNIMPlugin registerWithRegistrar:registrar];
}
@end
