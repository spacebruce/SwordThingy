/// DebugLog(...)
var r = string(argument[0]), i;
for (i = 1; i < argument_count; i++) {
    r += ", " + string(argument[i])
}
ds_list_add(DebugLog, r);
show_debug_message(r)