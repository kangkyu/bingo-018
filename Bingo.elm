module Bingo exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

playerInfo : String -> Int -> String
playerInfo name gameNumber =
  name ++ " - Game #" ++ (toString gameNumber)

viewPlayer : String -> Int -> Html msg
viewPlayer name gameNumber =
  let
    playerInfoText =
      playerInfo name gameNumber
        |> String.toUpper
        |> text
  in
    h2 [ id "info", class "classy"]
      [ playerInfoText ]

viewHeader : String -> Html msg
viewHeader title =
  header [ ]
    [ h1 [ ] [ text title ]
    ]

viewFooter : Html msg
viewFooter =
  footer [ ]
    [ a [ href "http://elm-lang.org"]
      [ text "Powered by Elm"]
    ]

view : Html msg
view =
  div [ class "content"]
    [ viewHeader "Bingo!"
    , viewPlayer "Mike" 3
    , viewFooter
    ]

main : Html msg
main =
  view
