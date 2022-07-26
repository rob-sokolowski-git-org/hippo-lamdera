module Evergreen.V26.Pages.Login exposing (..)

import Evergreen.V26.Api.Data
import Evergreen.V26.Api.User
import Evergreen.V26.Auth.Common
import Url


type alias Model =
    { email : String
    , password : String
    , authFlow : Evergreen.V26.Auth.Common.Flow
    , authRedirectBaseUrl : Url.Url
    }


type Msg
    = GoogleOAuthSignInRequested
    | GitHubOAuthSignInRequested
    | GotUser (Evergreen.V26.Api.Data.Data Evergreen.V26.Api.User.User)
