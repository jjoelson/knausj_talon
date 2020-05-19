os: mac
app: Xcode
mode: user.swift
mode: command 
#and code.language: swift
-
variadic: "..."
logical and: " && "
logical or: " || "

(body | scope):
    insert(" {")
    key("enter")

state comment: "// "
[line] comment <phrase>:
    key("cmd-right")
    insert(" // ")
    insert(user.formatted_text(phrase, "sentence"))

state (funk | func | fun): "func "
(Annette | init) [over]: "init() {\n"
function <phrase> [over]:
    insert("func ")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))
    insert("(")
    sleep(100ms)

state let: "let "
(let | constant) [<phrase>] [over]:
    insert("let ")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))
    sleep(100ms)

state var: "var "
(var | variable) [<phrase>] [over]:
    insert("var ")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))
    sleep(100ms)

of type [<phrase>] [over]:
    insert(": ")
    insert(user.formatted_text(phrase, "PUBLIC_CAMEL_CASE"))

state break: "break"
state if: "if "
if <phrase> [over]:
  insert("if ")
  insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))
state else if: " else if "
else if <phrase> [over]:
    insert(" else if ")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))

state else: " else "
else <phrase> [over]:
    insert(" else {")
    key("enter")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))

state while: "while "
while <phrase> [over]:
    insert("while ")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))

state for: "for "
for <phrase> [over]:
    insert("for ")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))

in <phrase> [over]:
    insert(" in ")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))

state switch: "switch "
switch <phrase> [over]:
    insert("switch ")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))

[state] case: "case "
state default: "default:"

[state] true: "true"
[state] false: "false"

state class: "class "
class <phrase> [over]:
    insert("class ")
    insert(user.formatted_text(phrase, "PUBLIC_CAMEL_CASE"))

state (struct | struck):
  insert("struct ")
(struct | struck) <phrase> [over]:
    insert("struct ")
    insert(user.formatted_text(phrase, "PUBLIC_CAMEL_CASE"))

[state] string:  "String"
[state] (int | integer | ant): "Int"
[state] (no | nil): "nil"

[state] see gee float: "CGFloat"
[state] you I: "UI"
[state] you I (view | few): "UIView"
[state] you I (view | few) controller: "UIViewController"
[state] you I color: "UIColor"

[state] private: "private "
[state] file private: "fileprivate "
[state] public: "public "

state return: "return "
return <phrase> [over]:
    insert("return ")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))