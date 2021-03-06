module Tests exposing (..)

import Test exposing (..)
import Expect
import Types
import State
import View


all : Test
all =
    describe "A Test Suite"
        [ test "App.model.message should be set properly" <|
            \() ->
                Expect.equal (Tuple.first (State.init "") |> .message) "Your Elm App is working!"
        , test "Addition" <|
            \() ->
                Expect.equal (3 + 7) 10
        , test "String.left" <|
            \() ->
                Expect.equal "a" (String.left 1 "abcdefg")
        , test "This test should fail" <|
            \() ->
                Expect.fail "failed as expected!"
        ]
