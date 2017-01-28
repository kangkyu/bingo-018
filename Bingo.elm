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

viewHeader : Html msg
viewHeader =
  header [ ]
    [ h1 [ ] [ text "Bingo!"]
    ]

viewFooter : Html msg
viewFooter =
  footer [ ]
    [ a [ ] [ text "Powered by Pragstudio"]
    ]

view : Html msg
view =
  div []
    [ viewHeader
    , viewPlayer "Mike" 3
    , viewFooter
    ]

main : Html msg
main =
  view
