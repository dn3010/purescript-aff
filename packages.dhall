let upstream =
      https://api.github.com/repos/dn3010/purescript-package-sets/contents/src/packages.dhall using [ { mapKey =
                                                                                                          "Authorization"
                                                                                                      , mapValue =
                                                                                                          "token ${env:GITHUB_TOKEN as Text}"
                                                                                                      }
                                                                                                    , { mapKey =
                                                                                                          "Accept"
                                                                                                      , mapValue =
                                                                                                          "application/vnd.github.v3.raw"
                                                                                                      }
                                                                                                    , { mapKey =
                                                                                                          "User-Agent"
                                                                                                      , mapValue =
                                                                                                          "DN3010"
                                                                                                      }
                                                                                                    ] sha256:db92ff755a36e79beb25a0422230c714bd72a356d27dad4dc5c65eca8b04ec54

let overrides = {=}

let additions = {=}

in  upstream // overrides // additions
