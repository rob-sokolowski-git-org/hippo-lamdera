module Config exposing (..)

import Env


googleOAuthClientId =
    case Env.mode of
        Env.Production ->
            -- this secret is saved in Lamdera admin dashboard
            Env.googleOAuthClientId

        _ ->
            -- Safe to commit publicly, this is only for local dev
            "740743074280-tq2tdnfkgsu8q4ktecgvbr0fajtp3l1v.apps.googleusercontent.com"


googleOAuthClientSecret =
    case Env.mode of
        Env.Production ->
            -- this secret is saved in Lamdera admin dashboard
            Env.googleOAuthClientSecret

        _ ->
            -- safe to commit publicly, this is only for local dev
            "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"


githubOAuthClientId =
    case Env.mode of
        Env.Production ->
            -- this secret is saved in Lamdera admin dashboard
            Env.githubOAuthClientId

        _ ->
            -- safe to commit publicly, this is only for local dev
            "84d9e5527e5caa64242d"


githubOAuthClientSecret =
    case Env.mode of
        Env.Production ->
            -- this secret is saved in Lamdera admin dashboard
            Env.githubOAuthClientSecret

        _ ->
            -- safe to commit publicly, this is only for local dev
            "739e6500c9d48c85aced98a9da4412c19f64e993"
