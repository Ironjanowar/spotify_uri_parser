Definitions.

SKIP = spotify|\:|\n|\t|\s|\r
TYPE = track|album|artist|user|playlist|show|episode

Rules.

{SKIP}          : skip_token.
{TYPE}          : {token, {keyword, TokenLine, list_to_atom(TokenChars)}}.
[a-zA-Z0-9_]+   : {token, {spotify_id,  TokenLine, TokenChars}}.

Erlang code.