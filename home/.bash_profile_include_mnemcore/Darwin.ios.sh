function mnem_symbolicate_ios_crash {
    local SC_ROOT='/Applications/Xcode.app/Contents/SharedFrameworks/DTDeviceKitBase.framework/Versions/A/Resources'
    local SC='symbolicatecrash'
    local DEVELOPER_DIR=$(xcode-select -p)

    echo Using DEVELOPER_DIR: $DEVELOPER_DIR
    DEVELOPER_DIR="$DEVELOPER_DIR" "$SC_ROOT/$SC" $@
}

alias sc=mnem_symbolicate_ios_crash
