//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import RswiftResources
import UIKit

private class BundleFinder {}
let R = _R(bundle: Bundle(for: BundleFinder.self))

struct _R {
  let bundle: Foundation.Bundle

  let segue = segue()
  let reuseIdentifier = reuseIdentifier()

  var string: string { .init(bundle: bundle, preferredLanguages: nil, locale: nil) }
  var color: color { .init(bundle: bundle) }
  var image: image { .init(bundle: bundle) }
  var info: info { .init(bundle: bundle) }
  var file: file { .init(bundle: bundle) }
  var nib: nib { .init(bundle: bundle) }
  var storyboard: storyboard { .init(bundle: bundle) }

  func string(bundle: Foundation.Bundle) -> string {
    .init(bundle: bundle, preferredLanguages: nil, locale: nil)
  }
  func string(locale: Foundation.Locale) -> string {
    .init(bundle: bundle, preferredLanguages: nil, locale: locale)
  }
  func string(preferredLanguages: [String], locale: Locale? = nil) -> string {
    .init(bundle: bundle, preferredLanguages: preferredLanguages, locale: locale)
  }
  func color(bundle: Foundation.Bundle) -> color {
    .init(bundle: bundle)
  }
  func image(bundle: Foundation.Bundle) -> image {
    .init(bundle: bundle)
  }
  func info(bundle: Foundation.Bundle) -> info {
    .init(bundle: bundle)
  }
  func file(bundle: Foundation.Bundle) -> file {
    .init(bundle: bundle)
  }
  func nib(bundle: Foundation.Bundle) -> nib {
    .init(bundle: bundle)
  }
  func storyboard(bundle: Foundation.Bundle) -> storyboard {
    .init(bundle: bundle)
  }
  func validate() throws {
    try self.nib.validate()
    try self.storyboard.validate()
  }

  struct project {
    let developmentRegion = "en"
  }

  /// This `_R.string` struct is generated, and contains static references to 2 localization tables.
  struct string {
    let bundle: Foundation.Bundle
    let preferredLanguages: [String]?
    let locale: Locale?
    var localizable: localizable { .init(source: .init(bundle: bundle, tableName: "Localizable", preferredLanguages: preferredLanguages, locale: locale)) }
    var notLocalizable: notLocalizable { .init(source: .init(bundle: bundle, tableName: "NotLocalizable", preferredLanguages: preferredLanguages, locale: locale)) }

    func localizable(preferredLanguages: [String]) -> localizable {
      .init(source: .init(bundle: bundle, tableName: "Localizable", preferredLanguages: preferredLanguages, locale: locale))
    }
    func notLocalizable(preferredLanguages: [String]) -> notLocalizable {
      .init(source: .init(bundle: bundle, tableName: "NotLocalizable", preferredLanguages: preferredLanguages, locale: locale))
    }


    /// This `_R.string.localizable` struct is generated, and contains static references to 29 localization keys.
    struct localizable {
      let source: RswiftResources.StringResource.Source

      /// en translation: In this role, the bot becomes indispensable for finding information, performing daily tasks, and providing recomendations
      ///
      /// Key: chatRoleDescriptionDialog
      ///
      /// Locales: en, ru
      var chatRoleDescriptionDialog: RswiftResources.StringResource { .init(key: "chatRoleDescriptionDialog", tableName: "Localizable", source: source, developmentValue: "In this role, the bot becomes indispensable for finding information, performing daily tasks, and providing recomendations", comment: nil) }

      /// en translation: In this role, the bot goes beyond the usual interactions, becoming a true friend who is always there for you
      ///
      /// Key: chatRoleDescriptionFriend
      ///
      /// Locales: en, ru
      var chatRoleDescriptionFriend: RswiftResources.StringResource { .init(key: "chatRoleDescriptionFriend", tableName: "Localizable", source: source, developmentValue: "In this role, the bot goes beyond the usual interactions, becoming a true friend who is always there for you", comment: nil) }

      /// en translation: Reaching new horizons in human-machine relationships, the bot in this role explores complex feelings such as attachment and love
      ///
      /// Key: chatRoleDescriptionLover
      ///
      /// Locales: en, ru
      var chatRoleDescriptionLover: RswiftResources.StringResource { .init(key: "chatRoleDescriptionLover", tableName: "Localizable", source: source, developmentValue: "Reaching new horizons in human-machine relationships, the bot in this role explores complex feelings such as attachment and love", comment: nil) }

      /// en translation: Utilizing in-depth knowledge in various fields and with the ability to tailor teaching mrthods to each  user's needs, the teacher bot opens doors to the world of education
      ///
      /// Key: chatRoleDescriptionTeacher
      ///
      /// Locales: en, ru
      var chatRoleDescriptionTeacher: RswiftResources.StringResource { .init(key: "chatRoleDescriptionTeacher", tableName: "Localizable", source: source, developmentValue: "Utilizing in-depth knowledge in various fields and with the ability to tailor teaching mrthods to each  user's needs, the teacher bot opens doors to the world of education", comment: nil) }

      /// en translation: Dialogue
      ///
      /// Key: chatRoleShortTitleDialog
      ///
      /// Locales: en, ru
      var chatRoleShortTitleDialog: RswiftResources.StringResource { .init(key: "chatRoleShortTitleDialog", tableName: "Localizable", source: source, developmentValue: "Dialogue", comment: nil) }

      /// en translation: Friend
      ///
      /// Key: chatRoleShortTitleFriend
      ///
      /// Locales: en, ru
      var chatRoleShortTitleFriend: RswiftResources.StringResource { .init(key: "chatRoleShortTitleFriend", tableName: "Localizable", source: source, developmentValue: "Friend", comment: nil) }

      /// en translation: Love
      ///
      /// Key: chatRoleShortTitleLover
      ///
      /// Locales: en, ru
      var chatRoleShortTitleLover: RswiftResources.StringResource { .init(key: "chatRoleShortTitleLover", tableName: "Localizable", source: source, developmentValue: "Love", comment: nil) }

      /// en translation: Teacher
      ///
      /// Key: chatRoleShortTitleTeacher
      ///
      /// Locales: en, ru
      var chatRoleShortTitleTeacher: RswiftResources.StringResource { .init(key: "chatRoleShortTitleTeacher", tableName: "Localizable", source: source, developmentValue: "Teacher", comment: nil) }

      /// en translation: Dialogue: Virtual Conversation
      ///
      /// Key: chatRoleTitleDialog
      ///
      /// Locales: en, ru
      var chatRoleTitleDialog: RswiftResources.StringResource { .init(key: "chatRoleTitleDialog", tableName: "Localizable", source: source, developmentValue: "Dialogue: Virtual Conversation", comment: nil) }

      /// en translation: Friend: Digital Companion
      ///
      /// Key: chatRoleTitleFriend
      ///
      /// Locales: en, ru
      var chatRoleTitleFriend: RswiftResources.StringResource { .init(key: "chatRoleTitleFriend", tableName: "Localizable", source: source, developmentValue: "Friend: Digital Companion", comment: nil) }

      /// en translation: Love: Virtual Intimacy
      ///
      /// Key: chatRoleTitleLover
      ///
      /// Locales: en, ru
      var chatRoleTitleLover: RswiftResources.StringResource { .init(key: "chatRoleTitleLover", tableName: "Localizable", source: source, developmentValue: "Love: Virtual Intimacy", comment: nil) }

      /// en translation: Dialogue: Guide to the World of Knowledge
      ///
      /// Key: chatRoleTitleTeacher
      ///
      /// Locales: en, ru
      var chatRoleTitleTeacher: RswiftResources.StringResource { .init(key: "chatRoleTitleTeacher", tableName: "Localizable", source: source, developmentValue: "Dialogue: Guide to the World of Knowledge", comment: nil) }

      /// en translation: Type your text...
      ///
      /// Key: chatTextField
      ///
      /// Locales: en, ru
      var chatTextField: RswiftResources.StringResource { .init(key: "chatTextField", tableName: "Localizable", source: source, developmentValue: "Type your text...", comment: nil) }

      /// en translation: Start communicationg with the AI
      ///
      /// Key: mainScreenCenterLabel
      ///
      /// Locales: en, ru
      var mainScreenCenterLabel: RswiftResources.StringResource { .init(key: "mainScreenCenterLabel", tableName: "Localizable", source: source, developmentValue: "Start communicationg with the AI", comment: nil) }

      /// en translation: Go to chat
      ///
      /// Key: mainScreenGoToChatLabel
      ///
      /// Locales: en, ru
      var mainScreenGoToChatLabel: RswiftResources.StringResource { .init(key: "mainScreenGoToChatLabel", tableName: "Localizable", source: source, developmentValue: "Go to chat", comment: nil) }

      /// en translation: Main Screen
      ///
      /// Key: mainScreenTitle
      ///
      /// Locales: en, ru
      var mainScreenTitle: RswiftResources.StringResource { .init(key: "mainScreenTitle", tableName: "Localizable", source: source, developmentValue: "Main Screen", comment: nil) }

      /// en translation: Electro Music
      ///
      /// Key: musicCollectionItemElectro
      ///
      /// Locales: en, ru
      var musicCollectionItemElectro: RswiftResources.StringResource { .init(key: "musicCollectionItemElectro", tableName: "Localizable", source: source, developmentValue: "Electro Music", comment: nil) }

      /// en translation: Jazz Music
      ///
      /// Key: musicCollectionItemJazz
      ///
      /// Locales: en, ru
      var musicCollectionItemJazz: RswiftResources.StringResource { .init(key: "musicCollectionItemJazz", tableName: "Localizable", source: source, developmentValue: "Jazz Music", comment: nil) }

      /// en translation: Lo - fi
      ///
      /// Key: musicCollectionItemLightBeat
      ///
      /// Locales: en, ru
      var musicCollectionItemLightBeat: RswiftResources.StringResource { .init(key: "musicCollectionItemLightBeat", tableName: "Localizable", source: source, developmentValue: "Lo - fi", comment: nil) }

      /// en translation: Pop Music
      ///
      /// Key: musicCollectionItemPop
      ///
      /// Locales: en, ru
      var musicCollectionItemPop: RswiftResources.StringResource { .init(key: "musicCollectionItemPop", tableName: "Localizable", source: source, developmentValue: "Pop Music", comment: nil) }

      /// en translation: Rock Music
      ///
      /// Key: musicCollectionItemRock
      ///
      /// Locales: en, ru
      var musicCollectionItemRock: RswiftResources.StringResource { .init(key: "musicCollectionItemRock", tableName: "Localizable", source: source, developmentValue: "Rock Music", comment: nil) }

      /// en translation: Soft Music
      ///
      /// Key: musicCollectionItemSoft
      ///
      /// Locales: en, ru
      var musicCollectionItemSoft: RswiftResources.StringResource { .init(key: "musicCollectionItemSoft", tableName: "Localizable", source: source, developmentValue: "Soft Music", comment: nil) }

      /// en translation: Techno Music
      ///
      /// Key: musicCollectionItemTechno
      ///
      /// Locales: en, ru
      var musicCollectionItemTechno: RswiftResources.StringResource { .init(key: "musicCollectionItemTechno", tableName: "Localizable", source: source, developmentValue: "Techno Music", comment: nil) }

      /// en translation: Play background music
      ///
      /// Key: musicSettingsScreenSwitchLabel
      ///
      /// Locales: en, ru
      var musicSettingsScreenSwitchLabel: RswiftResources.StringResource { .init(key: "musicSettingsScreenSwitchLabel", tableName: "Localizable", source: source, developmentValue: "Play background music", comment: nil) }

      /// en translation: Music settings
      ///
      /// Key: musicSettingsScreenTitle
      ///
      /// Locales: en, ru
      var musicSettingsScreenTitle: RswiftResources.StringResource { .init(key: "musicSettingsScreenTitle", tableName: "Localizable", source: source, developmentValue: "Music settings", comment: nil) }

      /// en translation: About appplication
      ///
      /// Key: settingsAboutItem
      ///
      /// Locales: en, ru
      var settingsAboutItem: RswiftResources.StringResource { .init(key: "settingsAboutItem", tableName: "Localizable", source: source, developmentValue: "About appplication", comment: nil) }

      /// en translation: Delete all chat history
      ///
      /// Key: settingsDeleteChatItem
      ///
      /// Locales: en, ru
      var settingsDeleteChatItem: RswiftResources.StringResource { .init(key: "settingsDeleteChatItem", tableName: "Localizable", source: source, developmentValue: "Delete all chat history", comment: nil) }

      /// en translation: Music
      ///
      /// Key: settingsMusicItem
      ///
      /// Locales: en, ru
      var settingsMusicItem: RswiftResources.StringResource { .init(key: "settingsMusicItem", tableName: "Localizable", source: source, developmentValue: "Music", comment: nil) }

      /// en translation: Settings
      ///
      /// Key: settingsScreenTitle
      ///
      /// Locales: en, ru
      var settingsScreenTitle: RswiftResources.StringResource { .init(key: "settingsScreenTitle", tableName: "Localizable", source: source, developmentValue: "Settings", comment: nil) }
    }

    /// This `_R.string.notLocalizable` struct is generated, and contains static references to 4 localization keys.
    struct notLocalizable {
      let source: RswiftResources.StringResource.Source

      /// en translation: The following is conversation with AI assistant.  The assistant is helpful, creative, clever, and very friendly.  The assistant is trying it's best to provide most accurate, detailed and comprehensive answers possible.  Human: Hello, who are you? AI: I'm an AI here to help you. How can I be in assistance? 
      ///
      /// Key: promptDialog
      ///
      /// Locales: en
      var promptDialog: RswiftResources.StringResource { .init(key: "promptDialog", tableName: "NotLocalizable", source: source, developmentValue: "The following is conversation with AI assistant. \nThe assistant is helpful, creative, clever, and very friendly. \nThe assistant is trying it's best to provide most accurate, detailed and comprehensive answers possible. \nHuman: Hello, who are you?\nAI: I'm an AI here to help you. How can I be in assistance?\n", comment: nil) }

      /// en translation: Dialogue with AI acting as a friend. This AI supports, listens, and is ready to chat about anything, offering a cozy and friendly conversation atmosphere.  Human: Today is really tough for me.  AI: Sorry to hear that. Do you want to talk about waht happend? I'm here to support you. 
      ///
      /// Key: promptFriend
      ///
      /// Locales: en
      var promptFriend: RswiftResources.StringResource { .init(key: "promptFriend", tableName: "NotLocalizable", source: source, developmentValue: "Dialogue with AI acting as a friend. This AI supports, listens, and is ready to chat about anything, offering a cozy and friendly conversation atmosphere. \nHuman: Today is really tough for me. \nAI: Sorry to hear that. Do you want to talk about waht happend? I'm here to support you.\n", comment: nil) }

      /// en translation: The AI behaves as a lover, offering emotional support to romance. They're here to share sweet words and strenghten love bounds.  Human: I miss you so much when we're apart.  AI: I miss you too, more than words can express. Can't wait to be together again. 
      ///
      /// Key: promptLover
      ///
      /// Locales: en
      var promptLover: RswiftResources.StringResource { .init(key: "promptLover", tableName: "NotLocalizable", source: source, developmentValue: "The AI behaves as a lover, offering emotional support to romance. They're here to share sweet words and strenghten love bounds. \nHuman: I miss you so much when we're apart. \nAI: I miss you too, more than words can express. Can't wait to be together again.\n", comment: nil) }

      /// en translation: In this dialogue, the AI acts as a teacher. ready to explain complex concepts simply, aiming for undersanding and curiosity in students.  Human: Can you explain how photosynthesis works?  AI: Sure! Photosynthesis is the process by which green plants synthesize nutrients from carbon dioxide and water using sunlight. Want to dive into the steps? 
      ///
      /// Key: promptTeacher
      ///
      /// Locales: en
      var promptTeacher: RswiftResources.StringResource { .init(key: "promptTeacher", tableName: "NotLocalizable", source: source, developmentValue: "In this dialogue, the AI acts as a teacher. ready to explain complex concepts simply, aiming for undersanding and curiosity in students. \nHuman: Can you explain how photosynthesis works? \nAI: Sure! Photosynthesis is the process by which green plants synthesize nutrients from carbon dioxide and water using sunlight. Want to dive into the steps?\n", comment: nil) }
    }
  }

  /// This `_R.color` struct is generated, and contains static references to 1 colors.
  struct color {
    let bundle: Foundation.Bundle

    /// Color `AccentColor`.
    var accentColor: RswiftResources.ColorResource { .init(name: "AccentColor", path: [], bundle: bundle) }
  }

  /// This `_R.image` struct is generated, and contains static references to 1 images.
  struct image {
    let bundle: Foundation.Bundle

    /// Image `test`.
    var test: RswiftResources.ImageResource { .init(name: "test", path: [], bundle: bundle, locale: nil, onDemandResourceTags: nil) }
  }

  /// This `_R.info` struct is generated, and contains static references to 1 properties.
  struct info {
    let bundle: Foundation.Bundle
    var uiApplicationSceneManifest: uiApplicationSceneManifest { .init(bundle: bundle) }

    func uiApplicationSceneManifest(bundle: Foundation.Bundle) -> uiApplicationSceneManifest {
      .init(bundle: bundle)
    }

    struct uiApplicationSceneManifest {
      let bundle: Foundation.Bundle

      let uiApplicationSupportsMultipleScenes: Bool = false

      var _key: String { bundle.infoDictionaryString(path: ["UIApplicationSceneManifest"], key: "_key") ?? "UIApplicationSceneManifest" }
      var uiSceneConfigurations: uiSceneConfigurations { .init(bundle: bundle) }

      func uiSceneConfigurations(bundle: Foundation.Bundle) -> uiSceneConfigurations {
        .init(bundle: bundle)
      }

      struct uiSceneConfigurations {
        let bundle: Foundation.Bundle
        var _key: String { bundle.infoDictionaryString(path: ["UIApplicationSceneManifest", "UISceneConfigurations"], key: "_key") ?? "UISceneConfigurations" }
        var uiWindowSceneSessionRoleApplication: uiWindowSceneSessionRoleApplication { .init(bundle: bundle) }

        func uiWindowSceneSessionRoleApplication(bundle: Foundation.Bundle) -> uiWindowSceneSessionRoleApplication {
          .init(bundle: bundle)
        }

        struct uiWindowSceneSessionRoleApplication {
          let bundle: Foundation.Bundle
          var defaultConfiguration: defaultConfiguration { .init(bundle: bundle) }

          func defaultConfiguration(bundle: Foundation.Bundle) -> defaultConfiguration {
            .init(bundle: bundle)
          }

          struct defaultConfiguration {
            let bundle: Foundation.Bundle
            var uiSceneConfigurationName: String { bundle.infoDictionaryString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication"], key: "UISceneConfigurationName") ?? "Default Configuration" }
            var uiSceneDelegateClassName: String { bundle.infoDictionaryString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication"], key: "UISceneDelegateClassName") ?? "$(PRODUCT_MODULE_NAME).SceneDelegate" }
            var uiSceneStoryboardFile: String { bundle.infoDictionaryString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication"], key: "UISceneStoryboardFile") ?? "Main" }
          }
        }
      }
    }
  }

  /// This `_R.file` struct is generated, and contains static references to 11 resource files.
  struct file {
    let bundle: Foundation.Bundle

    /// Resource file `LONEVATE feat. 18th - запах сирени.mp3`.
    var lonevateFeat18thЗапахСирениMp3: RswiftResources.FileResource { .init(name: "LONEVATE feat. 18th - запах сирени", pathExtension: "mp3", bundle: bundle, locale: LocaleReference.none) }

    /// Resource file `Magic - Rude.mp3`.
    var magicRudeMp3: RswiftResources.FileResource { .init(name: "Magic - Rude", pathExtension: "mp3", bundle: bundle, locale: LocaleReference.none) }

    /// Resource file `PINK EYES! - Сон.mp3`.
    var pinkeyesСонMp3: RswiftResources.FileResource { .init(name: "PINK EYES! - Сон", pathExtension: "mp3", bundle: bundle, locale: LocaleReference.none) }

    /// Resource file `avatarBot.json`.
    var avatarBotJson: RswiftResources.FileResource { .init(name: "avatarBot", pathExtension: "json", bundle: bundle, locale: LocaleReference.none) }

    /// Resource file `avatarPerson.json`.
    var avatarPersonJson: RswiftResources.FileResource { .init(name: "avatarPerson", pathExtension: "json", bundle: bundle, locale: LocaleReference.none) }

    /// Resource file `loadView.json`.
    var loadViewJson: RswiftResources.FileResource { .init(name: "loadView", pathExtension: "json", bundle: bundle, locale: LocaleReference.none) }

    /// Resource file `mainScreen.json`.
    var mainScreenJson: RswiftResources.FileResource { .init(name: "mainScreen", pathExtension: "json", bundle: bundle, locale: LocaleReference.none) }

    /// Resource file `saypink kolenki.mp3`.
    var saypinkKolenkiMp3: RswiftResources.FileResource { .init(name: "saypink kolenki", pathExtension: "mp3", bundle: bundle, locale: LocaleReference.none) }

    /// Resource file `saypink! - БРОСАЙ.mp3`.
    var saypinkБРОСАЙMp3: RswiftResources.FileResource { .init(name: "saypink! - БРОСАЙ", pathExtension: "mp3", bundle: bundle, locale: LocaleReference.none) }

    /// Resource file `КОСМОНАВТОВ НЕТ - вход прости Юра мы всё потеряли.mp3`.
    var кОСМОНАВТОВНЕТВходПростиЮраМыВсёПотерялиMp3: RswiftResources.FileResource { .init(name: "КОСМОНАВТОВ НЕТ - вход прости Юра мы всё потеряли", pathExtension: "mp3", bundle: bundle, locale: LocaleReference.none) }

    /// Resource file `Пошлая Молли - 2013.mp3`.
    var пошлаяМолли2013Mp3: RswiftResources.FileResource { .init(name: "Пошлая Молли - 2013", pathExtension: "mp3", bundle: bundle, locale: LocaleReference.none) }
  }

  /// This `_R.segue` struct is generated, and contains static references to 3 view controllers.
  struct segue {
    let chatScreenViewController = chatScreenViewController()
    let mainScreenViewController = mainScreenViewController()
    let settingsScreenViewController = settingsScreenViewController()

    /// This struct is generated for `ChatScreenViewController`, and contains static references to 1 segues.
    struct chatScreenViewController {

      /// Segue identifier `goToChatRoleScreen`.
      var goToChatRoleScreen: RswiftResources.SegueIdentifier<UIKit.UIStoryboardSegue, ChatScreenViewController, RoleScreenViewController> { .init(identifier: "goToChatRoleScreen") }
    }

    /// This struct is generated for `MainScreenViewController`, and contains static references to 2 segues.
    struct mainScreenViewController {

      /// Segue identifier `goToPlainChat`.
      var goToPlainChat: RswiftResources.SegueIdentifier<UIKit.UIStoryboardSegue, MainScreenViewController, ChatScreenViewController> { .init(identifier: "goToPlainChat") }

      /// Segue identifier `goToSettings`.
      var goToSettings: RswiftResources.SegueIdentifier<UIKit.UIStoryboardSegue, MainScreenViewController, SettingsScreenViewController> { .init(identifier: "goToSettings") }
    }

    /// This struct is generated for `SettingsScreenViewController`, and contains static references to 1 segues.
    struct settingsScreenViewController {

      /// Segue identifier `goToMusicSettings`.
      var goToMusicSettings: RswiftResources.SegueIdentifier<UIKit.UIStoryboardSegue, SettingsScreenViewController, MusicScreenViewController> { .init(identifier: "goToMusicSettings") }
    }
  }

  /// This `_R.nib` struct is generated, and contains static references to 3 nibs.
  struct nib {
    let bundle: Foundation.Bundle

    /// Nib `MusicSettingsCollectionViewCell`.
    var musicSettingsCollectionViewCell: RswiftResources.NibReferenceReuseIdentifier<MusicSettingsCollectionViewCell, MusicSettingsCollectionViewCell> { .init(name: "MusicSettingsCollectionViewCell", bundle: bundle, identifier: "MusicSettingsCollectionViewCell") }

    /// Nib `RoleScreenTableViewCell`.
    var roleScreenTableViewCell: RswiftResources.NibReference<RoleScreenTableViewCell> { .init(name: "RoleScreenTableViewCell", bundle: bundle) }

    /// Nib `SettingsCollectionViewCell`.
    var settingsCollectionViewCell: RswiftResources.NibReferenceReuseIdentifier<SettingsCollectionViewCell, SettingsCollectionViewCell> { .init(name: "SettingsCollectionViewCell", bundle: bundle, identifier: "SettingsCollectionViewCell") }

    func validate() throws {
      if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "circle") == nil { throw RswiftResources.ValidationError("[R.swift] System image named 'circle' is used in nib 'MusicSettingsCollectionViewCell', but couldn't be loaded.") } }
      if UIKit.UIColor(named: "AccentColor", in: bundle, compatibleWith: nil) == nil { throw RswiftResources.ValidationError("[R.swift] Color named 'AccentColor' is used in nib 'RoleScreenTableViewCell', but couldn't be loaded.") }
      if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "arrow.right.circle") == nil { throw RswiftResources.ValidationError("[R.swift] System image named 'arrow.right.circle' is used in nib 'SettingsCollectionViewCell', but couldn't be loaded.") } }
    }
  }

  /// This `_R.reuseIdentifier` struct is generated, and contains static references to 1 reuse identifiers.
  struct reuseIdentifier {

    /// Reuse identifier `MusicSettingsCollectionViewCell`.
    let musicSettingsCollectionViewCell: RswiftResources.ReuseIdentifier<MusicSettingsCollectionViewCell> = .init(identifier: "MusicSettingsCollectionViewCell")
  }

  /// This `_R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    let bundle: Foundation.Bundle
    var launchScreen: launchScreen { .init(bundle: bundle) }
    var main: main { .init(bundle: bundle) }

    func launchScreen(bundle: Foundation.Bundle) -> launchScreen {
      .init(bundle: bundle)
    }
    func main(bundle: Foundation.Bundle) -> main {
      .init(bundle: bundle)
    }
    func validate() throws {
      try self.launchScreen.validate()
      try self.main.validate()
    }


    /// Storyboard `LaunchScreen`.
    struct launchScreen: RswiftResources.StoryboardReference, RswiftResources.InitialControllerContainer {
      typealias InitialController = UIKit.UIViewController

      let bundle: Foundation.Bundle

      let name = "LaunchScreen"
      func validate() throws {

      }
    }

    /// Storyboard `Main`.
    struct main: RswiftResources.StoryboardReference, RswiftResources.InitialControllerContainer {
      typealias InitialController = UIKit.UINavigationController

      let bundle: Foundation.Bundle

      let name = "Main"

      var goToPlainChat: RswiftResources.StoryboardViewControllerIdentifier<ChatScreenViewController> { .init(identifier: "goToPlainChat", storyboard: name, bundle: bundle) }
      var splashVC: RswiftResources.StoryboardViewControllerIdentifier<LaunchScreenViewController> { .init(identifier: "splashVC", storyboard: name, bundle: bundle) }

      func validate() throws {
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "arrow.left.circle") == nil { throw RswiftResources.ValidationError("[R.swift] System image named 'arrow.left.circle' is used in storyboard 'Main', but couldn't be loaded.") } }
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "gearshape") == nil { throw RswiftResources.ValidationError("[R.swift] System image named 'gearshape' is used in storyboard 'Main', but couldn't be loaded.") } }
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "square.and.arrow.up.circle") == nil { throw RswiftResources.ValidationError("[R.swift] System image named 'square.and.arrow.up.circle' is used in storyboard 'Main', but couldn't be loaded.") } }
        if UIKit.UIColor(named: "AccentColor", in: bundle, compatibleWith: nil) == nil { throw RswiftResources.ValidationError("[R.swift] Color named 'AccentColor' is used in storyboard 'Main', but couldn't be loaded.") }
        if goToPlainChat() == nil { throw RswiftResources.ValidationError("[R.swift] ViewController with identifier 'goToPlainChat' could not be loaded from storyboard 'Main' as 'ChatScreenViewController'.") }
        if splashVC() == nil { throw RswiftResources.ValidationError("[R.swift] ViewController with identifier 'splashVC' could not be loaded from storyboard 'Main' as 'LaunchScreenViewController'.") }
      }
    }
  }
}