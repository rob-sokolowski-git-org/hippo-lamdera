module Evergreen.V30.Types exposing (..)

import Browser
import Browser.Navigation
import Dict
import Evergreen.V30.Api.Card
import Evergreen.V30.Api.User
import Evergreen.V30.Auth.Common
import Evergreen.V30.Bridge
import Evergreen.V30.Gen.Pages
import Evergreen.V30.Shared
import Lamdera
import Time
import Url


type alias FrontendModel =
    { url : Url.Url
    , key : Browser.Navigation.Key
    , shared : Evergreen.V30.Shared.Model
    , page : Evergreen.V30.Gen.Pages.Model
    , authFlow : Evergreen.V30.Auth.Common.Flow
    , authRedirectBaseUrl : Url.Url
    }


type alias Session =
    { userId : Int
    , expires : Time.Posix
    }


type alias BackendModel =
    { sessions : Dict.Dict Lamdera.SessionId Session
    , users : Dict.Dict Int Evergreen.V30.Api.User.UserFull
    , cards : Dict.Dict Evergreen.V30.Api.Card.CardId Evergreen.V30.Api.Card.CardEnvelope
    , now : Time.Posix
    , nextCardId : Int
    , pendingAuths : Dict.Dict Lamdera.SessionId Evergreen.V30.Auth.Common.PendingAuth
    }


type FrontendMsg
    = ChangedUrl Url.Url
    | ClickedLink Browser.UrlRequest
    | Shared Evergreen.V30.Shared.Msg
    | Page Evergreen.V30.Gen.Pages.Msg
    | Noop


type alias ToBackend =
    Evergreen.V30.Bridge.ToBackend


type BackendMsg
    = AuthBackendMsg Evergreen.V30.Auth.Common.BackendMsg
    | CheckSession Lamdera.SessionId Lamdera.ClientId
    | RenewSession Evergreen.V30.Api.User.UserId Lamdera.SessionId Lamdera.ClientId Time.Posix
    | NoOpBackendMsg
    | Tick Time.Posix


type ToFrontend
    = AuthToFrontend Evergreen.V30.Auth.Common.ToFrontend
    | ActiveSession Evergreen.V30.Api.User.User
    | PageMsg Evergreen.V30.Gen.Pages.Msg
    | NoOpToFrontend
