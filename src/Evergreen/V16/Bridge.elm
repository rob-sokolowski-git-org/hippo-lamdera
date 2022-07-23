module Evergreen.V16.Bridge exposing (..)

import Evergreen.V16.Api.Card
import Evergreen.V16.Api.User


type ToBackend
    = SignedOut Evergreen.V16.Api.User.User
    | ProfileGet_Profile__Username_
        { username : String
        }
    | UserAuthentication_Login
        { params :
            { email : String
            , password : String
            }
        }
    | UserRegistration_Register
        { params :
            { username : String
            , email : String
            , password : String
            }
        }
    | UserUpdate_Settings
        { params :
            { username : String
            , email : String
            , password : Maybe String
            , image : String
            , bio : String
            }
        }
    | CreateCard_Cards Evergreen.V16.Api.Card.FlashCard Evergreen.V16.Api.User.UserId
    | FetchUsersStudyCards_Study Evergreen.V16.Api.User.User
    | FetchUsersStudySummary_Study Evergreen.V16.Api.User.User
    | UserSubmitGrade_Study Evergreen.V16.Api.Card.CardId Evergreen.V16.Api.Card.Grade
    | FetchUsersCatalog_Catalog Evergreen.V16.Api.User.User
