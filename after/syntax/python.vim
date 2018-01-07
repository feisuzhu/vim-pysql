unlet b:current_syntax
syntax include @SQL syntax/sql.vim

syn region SQLEmbedded contains=@SQL containedin=pythonString,pythonRawString contained
    \ start=+\C\v(ALTER|BEGIN|CALL|COMMENT|COMMIT|CONNECT|CREATE|DELETE|DROP|END|EXPLAIN|EXPORT|GRANT|IMPORT|INSERT|LOAD|LOCK|MERGE|REFRESH|RENAME|REPLACE|REVOKE|ROLLBACK|SELECT|SET|TRUNCATE|UNLOAD|UNSET|UPDATE|UPSERT|WITH)+
    \ end=+;+

let b:current_syntax = "python"
