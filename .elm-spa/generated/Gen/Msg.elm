module Gen.Msg exposing (Msg(..))

import Gen.Params.Cards
import Gen.Params.Catalog
import Gen.Params.Home_
import Gen.Params.Login
import Gen.Params.NotFound
import Gen.Params.Study
import Gen.Params.Login.Provider_.Callback
import Pages.Cards
import Pages.Catalog
import Pages.Home_
import Pages.Login
import Pages.NotFound
import Pages.Study
import Pages.Login.Provider_.Callback


type Msg
    = Cards Pages.Cards.Msg
    | Catalog Pages.Catalog.Msg
    | Home_ Pages.Home_.Msg
    | Login Pages.Login.Msg
    | NotFound Pages.NotFound.Msg
    | Study Pages.Study.Msg
    | Login__Provider___Callback Pages.Login.Provider_.Callback.Msg

