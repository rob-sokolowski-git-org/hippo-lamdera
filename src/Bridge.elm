module Bridge exposing (..)

import Api.User exposing (User)
import Lamdera


sendToBackend =
    Lamdera.sendToBackend


type ToBackend
    = SignedOut User
      -- Req/resp paired messages
    | ProfileGet_Profile__Username_ { username : String }
    | UserAuthentication_Login { params : { email : String, password : String } }
    | UserRegistration_Register { params : { username : String, email : String, password : String } }
    | UserUpdate_Settings
        { params :
            { username : String
            , email : String
            , password : Maybe String
            , image : String
            , bio : String
            }
        }
    | NoOpToBackend
