
set cache_hit_signal [get_signal_handle -name "cache_hit"]
set main_state_signal [get_signal_handle -name "main_state"]

foreach_in_collection time [get_time_range] {
    set a_value [get_value_at_time $cache_hit_signal $time]
    set state_value [get_value_at_time $main_state_signal $time]

    if { $a_value == 1 && $main_state_signal == "5'b00010" } {
        set_signal_color $cache_hit_signal $time red
        set_signal_mark $cache_hit_signal $time "Cache hit"
    }
}
