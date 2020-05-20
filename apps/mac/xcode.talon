os: mac
app: Xcode
-

(next | neck) issue:
    key(cmd-')

(previous | prev | preev) issue:
    key(cmd-")

go line <number>:
    key(cmd-l)
    # Xcode often has a delay opening the overlay
    sleep(200ms)
    insert(number)
    key(enter)

choose destination <phrase> [over]:
    key(ctrl-shift-0)
    # Xcode often has a delay opening the destinations menu
    sleep(100ms)
    insert(user.formatted_text(phrase, "CAPITALIZE_FIRST_WORD"))

action(user.ide_toggle_comment):
    key(ctrl-/)

action(user.ide_find_file):
    key(cmd-shift-o)

action(user.ide_go_back):
    key(ctrl-cmd-left)

action(user.ide_go_forward):
    key(ctrl-cmd-right)

action(user.ide_go_implementation):
    key(ctrl-cmd-j)

action(user.ide_up_cursor):
    key(ctrl-shift-up)

action(user.ide_down_cursor):
    key(ctrl-shift-down)

action(user.ide_refactor_rename):
    key(cmd-shift-a)
    sleep(200ms)
    insert("Rename")
    sleep(100ms)
    key(enter)
