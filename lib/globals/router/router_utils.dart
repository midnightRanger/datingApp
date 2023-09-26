enum AppPages 
{
  auth,
  register, 
  home, 
  profile,
  messages, 
  likes,  
  onboard,
}

const String auth_ = 'auth';
const String register_ = 'register';
const String home_ = 'home';
const String profile_ = 'profile';
const String messages_ = 'messages';
const String likes_ = 'likes'; 
const String onboard_ = 'onBoard'; 

const String authPath_ = '/';
const String registerPath_ = '/register';
const String homePath_ = '/home';
const String profilePath_ = '/profile';
const String messagesPath_ = '/messages';
const String likesPath_ = '/likes';  
const String onboardPath_ = '/onboard';

extension AppPageExtensions on AppPages {
  String get routePath {
    switch(this) {
      case AppPages.auth:
        return authPath_;

      case AppPages.register:
        return registerPath_;

      case AppPages.home: 
        return homePath_;
      
      case AppPages.profile:
        return profilePath_;
      
      case AppPages.messages: 
        return messagesPath_; 
      
      case AppPages.likes:
        return likesPath_; 

      case AppPages.onboard:
        return onboardPath_; 
      
      default: 
        return authPath_;
    }
  }

    String get routeName {
    switch(this) {
      case AppPages.auth:
        return auth_;

      case AppPages.register:
        return register_;

      case AppPages.home: 
        return home_;
      
      case AppPages.profile:
        return profile_;
      
      case AppPages.messages: 
        return messages_; 
      
      case AppPages.likes:
        return likes_; 
      
      case AppPages.onboard:
        return onboard_; 
      
      default: 
        return auth_;
    }
  }


}