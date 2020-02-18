.class public Landroid/provider/MiuiSettings$System;
.super Landroid/provider/SystemSettings$System;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "System"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MiuiSettings$System$SmallWindowType;
    }
.end annotation


# static fields
.field public static final ACTIVITY_RESOLVE_ORDER:Ljava/lang/String; = "activity_resolve_order"

.field private static final ACTIVITY_RESOLVE_ORDER_DELIMETER:Ljava/lang/String; = ","

.field public static final AI_PRELOAD_USER_STATE:Ljava/lang/String; = "ai_preload_user_state"

.field public static final ALWAYS_ENABLE_MMS:Ljava/lang/String; = "always_enable_mms"

.field public static final ANR_PACKAGES:Ljava/lang/String; = "anr_pkgs"

.field public static final AUTO_DUAL_CLOCK:Ljava/lang/String; = "auto_dual_clock"

.field public static final AUTO_TEST_MODE_ENABLE:Ljava/lang/String; = "auto_test_mode_on"

.field public static final BATTERY_INDICATOR_STYLE:Ljava/lang/String; = "battery_indicator_style"

.field public static final BATTERY_INDICATOR_STYLE_DEFAULT:I = 0x1

.field public static final BATTERY_INDICATOR_STYLE_GRAPHIC:I = 0x0

.field public static final BATTERY_INDICATOR_STYLE_NUMBER:I = 0x1

.field public static final BATTERY_INDICATOR_STYLE_NUMBER_NEXT_TO_ICON:I = 0x3

.field public static final BATTERY_INDICATOR_STYLE_TOP:I = 0x2

.field public static final BATTERY_LEVEL_LOW_CUSTOMIZED:Ljava/lang/String; = "battery_level_low_customized"

.field public static final BREATHING_LIGHT_COLOR:Ljava/lang/String; = "breathing_light_color"

.field public static final BREATHING_LIGHT_FREQ:Ljava/lang/String; = "breathing_light_freq"

.field public static final CALENDAR_ALERT:Ljava/lang/String; = "calendar_alert"

.field public static final CALL_BREATHING_LIGHT_COLOR:Ljava/lang/String; = "call_breathing_light_color"

.field public static final CALL_BREATHING_LIGHT_COLOR_DEFAULT:I

.field public static final CALL_BREATHING_LIGHT_FREQ:Ljava/lang/String; = "call_breathing_light_freq"

.field public static final CALL_BREATHING_LIGHT_FREQ_DEFAULT:I

.field public static final CAMERA_KEY_PREFERRED_ACTION_APP_COMPONENT:Ljava/lang/String; = "camera_key_preferred_action_app_component"

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID:Ljava/lang/String; = "camera_key_preferred_action_shortcut_id"

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID_CALL:I = 0x3

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID_HOME:I = 0x0

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID_SCREENSHOT:I = 0x1

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID_SEARCH:I = 0x2

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID_WAKE:I = 0x4

.field public static final CAMERA_KEY_PREFERRED_ACTION_TOGGLE_ID:Ljava/lang/String; = "camera_key_preferred_action_toggle_id"

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE:Ljava/lang/String; = "camera_key_preferred_action_type"

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE_APP:I = 0x3

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE_DEFAULT:I = 0x0

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE_NONE:I = 0x0

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE_SHORTCUT:I = 0x1

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE_TOGGLE:I = 0x2

.field public static final CDMA_PRECISE_ANSWER_STATE:Ljava/lang/String; = "cdma_precise_answer_state"

.field public static final CDMA_PRECISE_ANSWER_STATE_DEFAULT:I = 0x1

.field public static final CDMA_PRECISE_ANSWER_STATE_DISABLE:I = 0x0

.field public static final CDMA_PRECISE_ANSWER_STATE_ENABLE:I = 0x1

.field public static final CLOUD_SLAVE_WIFI_SUPPORT:Ljava/lang/String; = "cloud_slave_wifi_support"

.field private static final CN_OPERATOR:Ljava/lang/String; = "460"

.field public static final COLOR_LAMP_TURN_ON:Ljava/lang/String; = "color_lamp_turn_on"

.field public static final CONFIG_NETWORK_PRIORITY_SUPPORT:Ljava/lang/String; = "sys.net.support.netprio"

.field public static final CURRENT_LIVE_WALLPAPER_PACKAGENAME:Ljava/lang/String; = "current_live_wallpaper_packagename"

.field public static final DANGEROUS_OPTIONS_HINT:Ljava/lang/String; = "dangerous_option_hint"

.field public static final DATA_AND_WIFI_ROAM:Ljava/lang/String; = "data_and_wifi_roam"

.field public static final DATA_AND_WIFI_ROAM_DEFAULT:I = 0x0

.field public static final DEFAULT_ALARM_ALERT:Ljava/lang/String; = "default_alarm_alert"

.field public static final DEFAULT_CALENDAR_ALERT_URI:Landroid/net/Uri;

.field public static final DEFAULT_ENABLE_DEMO_MODE:Z = false

.field public static final DEFAULT_RINGTONE_URI_SLOT_1:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_URI_SLOT_2:Landroid/net/Uri;

.field public static final DEFAULT_SCREEN_BUTTONS_TIMEOUT:I = 0x1388

.field public static final DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri;

.field public static final DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_1:Landroid/net/Uri;

.field public static final DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_2:Landroid/net/Uri;

.field public static final DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri;

.field public static final DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_1:Landroid/net/Uri;

.field public static final DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_2:Landroid/net/Uri;

.field public static final DEFAULT_TOUCH_SENSITIVE:Z = false

.field public static final DELETE_SOUND_EFFECT:Ljava/lang/String; = "delete_sound_effect"

.field public static final DIAL_PAD_TOUCH_TONE:Ljava/lang/String; = "dial_pad_touch_tone"

.field public static final DIAL_PAD_TOUCH_TONE_DEFAULT:I = -0x1

.field public static final DIAL_PAD_TOUCH_TONE_HUMAN:I = 0x1

.field public static final DIAL_PAD_TOUCH_TONE_PIANO:I = 0x0

.field public static final DISABLE_WIFI_AUTO_CONNECT_SSID:Ljava/lang/String; = "disable_wifi_auto_connect_ssid"

.field public static final DRIVE_MODE_CALLING_AUTO_SMS_REPLY:Ljava/lang/String; = "drive_mode_calling_auto_sms_reply"

.field public static final DRIVE_MODE_DRIVE_MODE:Ljava/lang/String; = "drive_mode_drive_mode"

.field public static final DRIVE_MODE_INVERT_STOP_REPORT:Ljava/lang/String; = "drive_mode_invert_stop_report"

.field public static final DRIVE_MODE_ONLY_CONTACT_REPLY:Ljava/lang/String; = "drive_mode_only_contact_reply"

.field public static final DRIVE_MODE_PHONE_REPORT:Ljava/lang/String; = "drive_mode_phone_report"

.field public static final DRIVE_MODE_SMS_AUTO_REPLY_CONTENT:Ljava/lang/String; = "drive_mode_sms_auto_reply_content"

.field public static final DRIVE_MODE_SMS_AUTO_SMS_REPLY:Ljava/lang/String; = "drive_mode_sms_auto_sms_reply"

.field public static final DRIVE_MODE_SMS_REPORT:Ljava/lang/String; = "drive_mode_sms_report"

.field public static final EDGE_HANDGRIP_MODE:Ljava/lang/String; = "edge_handgrip"

.field public static final EDGE_HANDGRIP_MODE_BACK:Ljava/lang/String; = "edge_handgrip_back"

.field public static final EDGE_HANDGRIP_MODE_CLEAN:Ljava/lang/String; = "edge_handgrip_clean"

.field public static final EDGE_HANDGRIP_MODE_PHOTO:Ljava/lang/String; = "edge_handgrip_photo"

.field public static final EDGE_HANDGRIP_MODE_SCREENSHOT:Ljava/lang/String; = "edge_handgrip_screenshot"

.field public static final ENABLE_AUTO_DISABLE_SCREEN_ROTATION:Ljava/lang/String; = "enable_auto_disable_screen_rotation"

.field public static final ENABLE_DEMO_MODE:Ljava/lang/String; = "enable_demo_mode"

.field public static final ENABLE_SCREEN_ON_PROXIMITY_SENSOR:Ljava/lang/String; = "enable_screen_on_proximity_sensor"

.field public static final ENABLE_SNAPSHOT_SCREENLOCK:Ljava/lang/String; = "enable_snapshot_screenlock"

.field public static final ENABLE_SNAPSHOT_SCREENLOCK_DEFAULT:I = 0x0

.field public static final ENABLE_TELOCATION:Ljava/lang/String; = "enable_telocation"

.field public static final ENABLE_TELOCATION_DEFAULT:I = 0x1

.field public static final FINGERPRINT_NAV_ACTION_HOME:I = 0x1

.field public static final FINGERPRINT_NAV_ACTION_NONE:I = 0x0

.field public static final FINGERPRINT_NAV_CENTER_ACTION:Ljava/lang/String; = "fingerprint_nav_center_action"

.field public static final FLASH_WHEN_RING_ENABLED:Ljava/lang/String; = "flash_when_ring_enabled"

.field public static final FLASH_WHEN_RING_ENABLED_DEFAULT:Z = false

.field public static final GESTURE_WAKEUP_MODE:Ljava/lang/String; = "gesture_wakeup"

.field public static final HANDY_MODE_ENTER_DIRECT:Ljava/lang/String; = "handy_mode_enter_direct"

.field public static final HANDY_MODE_SIZE:Ljava/lang/String; = "handy_mode_size"

.field public static final HANDY_MODE_STATE:Ljava/lang/String; = "handy_mode_state"

.field public static final HAPTIC_FEEDBACK_LEVEL:Ljava/lang/String; = "haptic_feedback_level"

.field public static final HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

.field public static final HAPTIC_FEEDBACK_LEVEL_MAX:I = 0x2

.field public static final HAPTIC_FEEDBACK_LEVEL_MIN:I = 0x0

.field public static final HAS_DELETE_SOUND_EFFECT_DEFAULT:Z = true

.field public static final HAS_FOLLOWED_MIPUB:Ljava/lang/String; = "has_followed_mipub"

.field public static final HAS_SCREENSHOT_SOUND:Ljava/lang/String; = "has_screenshot_sound"

.field public static final HAS_SCREENSHOT_SOUND_DEFAULT:Z = true

.field public static final HOTSOPT_MAC_BLACK_SET:Ljava/lang/String; = "hotspot_mac_black_set"

.field public static final HOTSOPT_MAX_STATION_NUM:Ljava/lang/String; = "hotspot_max_station_num"

.field public static final HOTSOPT_VENDOR_SPECIFIC:Ljava/lang/String; = "hotspot_vendor_specific"

.field public static final INCALL_LIGHT_TURN_ON:Ljava/lang/String; = "incall_light_turn_on"

.field public static final IS_SECURITY_ENCRYTPION_ENABLED:Ljava/lang/String; = "is_security_encryption_enabled"

.field public static final IS_SHOW_THREE_GESTURE_ALERT:Ljava/lang/String; = "is_show_three_gesture_alert"

.field public static final KEEP_LAUNCHER_IN_MEMORY:Ljava/lang/String; = "keep_launcher_in_memory"

.field public static final KEEP_LAUNCHER_IN_MEMORY_DEFAULT:I = 0x1

.field public static final KEYGUARD_DISABLE_POWER_KEY_LONG_PRESS:Ljava/lang/String; = "keyguard_disable_power_key_long_press"

.field public static final KEYGUARD_DISABLE_POWER_KEY_LONG_PRESS_DEFAULT:I = 0x0

.field public static final KEYGUARD_LEFT_FUNCTION_CHOOSER:Ljava/lang/String; = "keyguard_left_function_chooser"

.field public static final KEYGUARD_LEFT_FUNCTION_ENABLED:Ljava/lang/String; = "keyguard_left_function_enabled"

.field public static final KEYGUARD_RIGHT_FUNCTION_CHOOSER:Ljava/lang/String; = "keyguard_right_function_chooser"

.field public static final KEYGUARD_RIGHT_FUNCTION_ENABLED:Ljava/lang/String; = "keyguard_right_function_enabled"

.field public static final KEY_AUTO_DISABLE_SCREEN_BUTTON:Ljava/lang/String; = "auto_disable_screen_button"

.field public static final KEY_COMMON_PASSWORD_CHILDRENMODE:Ljava/lang/String; = "childrenmode"

.field public static final KEY_COMMON_PASSWORD_KEYGUARD:Ljava/lang/String; = "miui_keyguard"

.field public static final KEY_FUNCTION_LIMIT_SWITCH:Ljava/lang/String; = "persist.sys.func_limit_switch"

.field public static final KEY_IN_SMALL_WINDOW_MODE:Ljava/lang/String; = "is_small_window"

.field public static final KEY_MIDROP_ENABLED:Ljava/lang/String; = "key_midrop_enabled"

.field public static final KEY_SECURITY_CENTER_ALLOW_CONNECT_NETWORK:Ljava/lang/String; = "persist.sys.sc_allow_conn"

.field public static final KEY_TOUCH_ASSISTANT_ENABLED:Ljava/lang/String; = "touch_assistant_enabled"

.field public static final KEY_TOUCH_ASSISTANT_SHOW_ON_KEYGUARD:Ljava/lang/String; = "touch_assistant_show_on_keyguard"

.field public static final KEY_TOUCH_ASSISTANT_TEMPORARY:Ljava/lang/String; = "touch_assistant_temporary"

.field public static final KEY_WAKEUP_FOR_KEYGUARD_NOTIFICATION:Ljava/lang/String; = "wakeup_for_keyguard_notification"

.field public static final LAST_AUDIBLE_RING_VOLUME:Ljava/lang/String; = "last_audible_ring_volume"

.field public static final LAST_VALID_DEVICE_ID:Ljava/lang/String; = "last_valid_device_id"

.field public static final LOCAL_SEA_LEVEL_PRESSURE:Ljava/lang/String; = "persist.sea_level_pres"

.field public static final LOCKED_APPS:Ljava/lang/String; = "locked_apps"

.field public static final MEMORY_LOW_THRESHOLD_PROPERTY:Ljava/lang/String; = "sys.memory.threshold.low"

.field public static final MIUI_ACCOUNT_LOGIN_CHECK:Ljava/lang/String; = "miui_account_login_check"

.field public static final MIUI_HOME_ENABLE_AUTO_FILL_EMPTY_CELLS:Ljava/lang/String; = "miui_home_enable_auto_fill_empty_cells"

.field public static final MIUI_HOME_LOCK_SCREEN_CELLS:Ljava/lang/String; = "miui_home_lock_screen_cells"

.field public static final MIUI_HOME_SCREEN_CELLS_SIZE:Ljava/lang/String; = "miui_home_screen_cells_size"

.field public static final MIUI_PERMISSION_CHECK:Ljava/lang/String; = "miui_permission_check"

.field public static final MIUI_POPUP_GESTURE_CHECK:Ljava/lang/String; = "miui_popup_gesture_check"

.field public static final MIUI_POPUP_LED_CHECK:Ljava/lang/String; = "miui_popup_led_check"

.field public static final MIUI_POPUP_LED_DEFAULT:I = 0x0

.field public static final MIUI_POPUP_LED_INDEX:Ljava/lang/String; = "miui_popup_led_index"

.field public static final MIUI_POPUP_SOUND_CHECK:Ljava/lang/String; = "miui_popup_sound_check"

.field public static final MIUI_POPUP_SOUND_DEFAULT:I = 0x0

.field public static final MIUI_POPUP_SOUND_INDEX:Ljava/lang/String; = "miui_popup_sound_index"

.field public static final MIUI_RECENTS_PRIVACY_THUMBNAIL_BLUR:Ljava/lang/String; = "miui_recents_privacy_thumbnail_blur"

.field public static final MIUI_RECENTS_SHOW_MEM_INFO:Ljava/lang/String; = "miui_recents_show_mem_info"

.field public static final MIUI_RECENTS_SHOW_RECOMMEND:Ljava/lang/String; = "miui_recents_show_recommend"

.field public static final MIUI_SLIDER_COVER_STATUS:Ljava/lang/String; = "sc_status"

.field public static final MIUI_SLIDER_HISTORY_COUNT:Ljava/lang/String; = "miui_slider_history_count"

.field public static final MIUI_SLIDER_LAUNCH_PKG:Ljava/lang/String; = "miui_slider_launch_pkg"

.field public static final MIUI_SLIDER_SOUND_CHECK:Ljava/lang/String; = "miui_slider_sound_check"

.field public static final MIUI_SLIDER_SOUND_CLOSE:Ljava/lang/String; = "miui_slider_sound_close"

.field public static final MIUI_SLIDER_SOUND_DEFAULT:I = 0x0

.field public static final MIUI_SLIDER_SOUND_INDEX:Ljava/lang/String; = "miui_slider_sound_index"

.field public static final MIUI_SLIDER_SOUND_ONLINE:I = -0x1

.field public static final MIUI_SLIDER_SOUND_OPEN:Ljava/lang/String; = "miui_slider_sound_open"

.field public static final MIUI_SLIDER_TOOL_CHOICE:Ljava/lang/String; = "miui_slider_tool_choice"

.field public static final MIUI_SLIDER_TOOL_DRAWER:I = 0x2

.field public static final MIUI_SLIDER_TOOL_LAUNCH_APP:I = 0x3

.field public static final MIUI_SLIDER_TOOL_NONE:I = 0x0

.field public static final MIUI_SLIDER_TOOL_SELFIE:I = 0x1

.field public static final MIUI_SLIDER_VIDEO_BOX:Ljava/lang/String; = "gb_videobox"

.field public static final MMS_BREATHING_LIGHT_COLOR:Ljava/lang/String; = "mms_breathing_light_color"

.field public static final MMS_BREATHING_LIGHT_FREQ:Ljava/lang/String; = "mms_breathing_light_freq"

.field public static final MMS_PRIVATE_ADDRESS_MARKER:Ljava/lang/String; = "mms_private_address_marker"

.field public static final MMS_SYNC_WILD_MSG_STATE:Ljava/lang/String; = "mms_sync_wild_msg_state"

.field public static final MMS_SYNC_WILD_MSG_STATE_DONE:I = 0x3

.field public static final MMS_SYNC_WILD_MSG_STATE_DOWNLOAD_PENDING:I = 0x2

.field public static final MMS_SYNC_WILD_MSG_STATE_INIT:I = 0x0

.field public static final MMS_SYNC_WILD_MSG_STATE_MSG_FOUND:I = 0x1

.field public static final MMS_SYNC_WILD_MSG_STATE_UPGRADE:I = 0x4

.field public static final MMS_SYNC_WILD_MSG_STATE_UPGRADE_SIM:I = 0x5

.field public static final MMS_SYNC_WILD_NUMBERS:Ljava/lang/String; = "mms_sync_wild_numbers"

.field public static final MMS_THREAD_MARKER:Ljava/lang/String; = "mms_thread_marker"

.field public static final MMS_UPLOAD_OLD_MSG_ACCOUNTS:Ljava/lang/String; = "mms_upload_old_msg_accounts"

.field public static final MMS_UPLOAD_OLD_MSG_STATE:Ljava/lang/String; = "mms_upload_old_msg_state"

.field public static final MMS_UPLOAD_OLD_MSG_STATE_INIT:I = 0x0

.field public static final MMS_UPLOAD_OLD_MSG_STATE_NEED_PROMPT:I = 0x1

.field public static final NEED_RESET_SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "need_reset_screen_off_timeout"

.field public static final NETWORK_TRAFFIC_POLICY_MODE_CLOSED:I = 0x0

.field public static final NETWORK_TRAFFIC_POLICY_MODE_FAST:I = 0x2

.field public static final NETWORK_TRAFFIC_POLICY_MODE_NORMAL:I = 0x1

.field public static final NEW_NUMERIC_PASSWORD_TYPE:Ljava/lang/String; = "new_numeric_password_type"

.field public static final NEXT_ALARM_CLOCK_FORMATTED:Ljava/lang/String; = "next_alarm_clock_formatted"

.field public static final NOTIFICATION_STYLE_GOOGLE:I = 0x1

.field public static final NOTIFICATION_STYLE_MIUI:I = 0x0

.field public static final PACKAGE_DELETE_BY_RESTORE_PHONE:Ljava/lang/String; = "package_delete_by_restore_phone"

.field public static final PERSIST_SYS_LINE_BREAKING:Ljava/lang/String; = "persist.sys.line_breaking"

.field public static final PICK_UP_GESTURE_WAKEUP_MODE:Ljava/lang/String; = "pick_up_gesture_wakeup_mode"

.field public static final POWERMODE_SUPERSAVE_OPEN:Ljava/lang/String; = "power_supersave_mode_open"

.field public static final POWER_MODE:Ljava/lang/String; = "power_mode"

.field public static final POWER_MODE_KEY_PROPERTY:Ljava/lang/String; = "persist.sys.aries.power_profile"

.field public static final POWER_MODE_VALUES:[Ljava/lang/String;

.field public static final POWER_MODE_VALUE_DEFAULT:Ljava/lang/String; = "middle"

.field public static final POWER_MODE_VALUE_HIGH:Ljava/lang/String; = "high"

.field public static final POWER_MODE_VALUE_LOW:Ljava/lang/String; = "low"

.field public static final POWER_MODE_VALUE_MIDDLE:Ljava/lang/String; = "middle"

.field public static final PRIVATE_SMS_NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_enable_private_notification"

.field public static final PUBLIC_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_SETTINGS_OPEN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RANDOM_NOTE_MODE_MUTE_TIME_INTERVAL_MS:Ljava/lang/String; = "random_note_mode_mute_time_interval_ms"

.field public static final RANDOM_NOTE_MODE_RANDOM_SOUND_NUMBER:Ljava/lang/String; = "random_note_mode_random_sound_number"

.field public static final RANDOM_NOTE_MODE_SEQUENCE_SOUND_NUMBER:Ljava/lang/String; = "random_note_mode_sequence_sound_number"

.field public static final RANDOM_NOTE_MODE_SEQUENCE_TIME_INTERVAL_MS:Ljava/lang/String; = "random_note_mode_sequence_time_interval_ms"

.field public static final RECENT_APPS_KEY_SHOW:Ljava/lang/String; = "recent_apps_key_show"

.field public static final REMOTE_CONTROL_PACKAGE_NAME:Ljava/lang/String; = "remote_control_pkg_name"

.field public static final REMOTE_CONTROL_PROCESS_NAME:Ljava/lang/String; = "remote_control_proc_name"

.field public static final RESIDENT_ID:Ljava/lang/String; = "resident_id"

.field public static final RESIDENT_TIMEZONE:Ljava/lang/String; = "resident_timezone"

.field public static final RINGTONE_SOUND_SLOT_1:Ljava/lang/String; = "ringtone_sound_slot_1"

.field public static final RINGTONE_SOUND_SLOT_2:Ljava/lang/String; = "ringtone_sound_slot_2"

.field public static final RINGTONE_SOUND_USE_UNIFORM:Ljava/lang/String; = "ringtone_sound_use_uniform"

.field public static final SCREENSHOT_NOTIFICATION_ENABLED:Ljava/lang/String; = "screenshot_notification_enabled"

.field public static final SCREEN_BUTTONS_TIMEOUT:Ljava/lang/String; = "screen_buttons_timeout"

.field public static final SCREEN_KEY_BACK:I = 0x3

.field public static final SCREEN_KEY_COUNT:I = 0x4

.field public static final SCREEN_KEY_HOME:I = 0x1

.field public static final SCREEN_KEY_LONG_PRESS_ACTION_CLOSE_APP:Ljava/lang/String; = "close_app"

.field public static final SCREEN_KEY_LONG_PRESS_ACTION_GOOGLE_NOW:Ljava/lang/String; = "google_now"

.field public static final SCREEN_KEY_LONG_PRESS_ACTION_NONE:Ljava/lang/String; = "none"

.field public static final SCREEN_KEY_LONG_PRESS_ACTION_QUICK_SEARCH:Ljava/lang/String; = "quick_search"

.field public static final SCREEN_KEY_LONG_PRESS_ACTION_RECENT_PANEL:Ljava/lang/String; = "recent_panel"

.field public static final SCREEN_KEY_LONG_PRESS_ACTION_SHOW_MENU:Ljava/lang/String; = "show_menu"

.field public static final SCREEN_KEY_LONG_PRESS_ACTION_VOICE_ASSISTANT:Ljava/lang/String; = "voice_assistant"

.field public static final SCREEN_KEY_LONG_PRESS_APP_SWITCH:Ljava/lang/String; = "screen_key_long_press_app_switch"

.field public static final SCREEN_KEY_LONG_PRESS_BACK:Ljava/lang/String; = "screen_key_long_press_back"

.field public static final SCREEN_KEY_LONG_PRESS_HOME:Ljava/lang/String; = "screen_key_long_press_home"

.field public static final SCREEN_KEY_LONG_PRESS_MENU:Ljava/lang/String; = "screen_key_long_press_menu"

.field public static final SCREEN_KEY_LONG_PRESS_TIMEOUT:Ljava/lang/String; = "screen_key_long_press_timeout"

.field public static final SCREEN_KEY_LONG_PRESS_TIMEOUT_DEFAULT:I = 0x1f4

.field public static final SCREEN_KEY_MENU:I = 0x0

.field public static final SCREEN_KEY_ORDER:Ljava/lang/String; = "screen_key_order"

.field public static final SCREEN_KEY_PRESS_APP_SWITCH:Ljava/lang/String; = "screen_key_press_app_switch"

.field public static final SCREEN_KEY_PRESS_APP_SWITCH_DEFAULT:Z = true

.field public static final SCREEN_KEY_RECENT_APPS:I = 0x2

.field public static final SCREEN_OFF_BY_LID_PROPERTY_STRING:Ljava/lang/String; = "sys.keyguard.screen_off_by_lid"

.field public static final SCREEN_SUNLIGHT_MODE:Ljava/lang/String; = "sunlight_mode"

.field public static final SCREEN_SUNLIGHT_MODE_OFF:I = 0x0

.field public static final SCREEN_SUNLIGHT_MODE_ON:I = 0x1

.field public static final SHOW_LOCK_BEFORE_UNLOCK:Ljava/lang/String; = "show_lock_before_unlock"

.field public static final SHOW_LOCK_BEFORE_UNLOCK_DEFAULT:Z

.field public static final SHOW_ROUNDED_CORNERS:Ljava/lang/String; = "show_rounded_corners"

.field public static final SHUTDOWN_ALARM_CLOCK_OFFSET:Ljava/lang/String; = "shutdown_alarm_clock_offset"

.field private static final SIMPLE_MODE:Ljava/lang/String; = "simple_mode"

.field public static final SLAVE_WIFI_ON:Ljava/lang/String; = "slave_wifi_on"

.field public static final SLAVE_WIFI_SSID:Ljava/lang/String; = "slave_wifi_ssid"

.field public static final SMARTCOVER_DISABLED:I = 0x0

.field public static final SMARTCOVER_FULL_MODE:I = 0x4

.field public static final SMARTCOVER_GUIDE_KEY:Ljava/lang/String; = "smart_cover_key"

.field public static final SMARTCOVER_LATTICE_MODE:I = 0x3

.field public static final SMARTCOVER_MODE_DEFAULT_VALUE:I = -0x1

.field public static final SMARTCOVER_MODE_KEY:Ljava/lang/String; = "persist.sys.smartcover_mode"

.field public static final SMARTCOVER_NORMAL_MODE:I = 0x1

.field public static final SMARTCOVER_SMALLWINDOW_MODE:I = 0x2

.field public static final SMARTCOVER_SMALLWIN_TYPE:Ljava/lang/String; = "persist.sys.smallwin_type"

.field public static final SMS_DELIVERED_SOUND:Ljava/lang/String; = "sms_delivered_sound"

.field public static final SMS_DELIVERED_SOUND_SLOT_1:Ljava/lang/String; = "sms_delivered_sound_slot_1"

.field public static final SMS_DELIVERED_SOUND_SLOT_2:Ljava/lang/String; = "sms_delivered_sound_slot_2"

.field public static final SMS_DELIVERED_SOUND_USE_UNIFORM:Ljava/lang/String; = "sms_delivered_sound_use_uniform"

.field public static final SMS_NOTIFICATION_BODY_ENABLED:Ljava/lang/String; = "pref_key_enable_notification_body"

.field public static final SMS_NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_enable_notification"

.field public static final SMS_RECEIVED_SOUND:Ljava/lang/String; = "sms_received_sound"

.field public static final SMS_RECEIVED_SOUND_SLOT_1:Ljava/lang/String; = "sms_received_sound_slot_1"

.field public static final SMS_RECEIVED_SOUND_SLOT_2:Ljava/lang/String; = "sms_received_sound_slot_2"

.field public static final SMS_RECEIVED_SOUND_USE_UNIFORM:Ljava/lang/String; = "sms_received_sound_use_uniform"

.field public static final SMS_WAKE_UP_SCREEN_ENABLED:Ljava/lang/String; = "pref_key_enable_wake_up_screen"

.field public static final SOFTAP_REPORTED_FREQUENCY:Ljava/lang/String; = "softap_reported_frequency"

.field public static final STATUS_BAR_COLLAPSE_AFTER_CLICKED:Ljava/lang/String; = "status_bar_collapse_after_clicked"

.field public static final STATUS_BAR_CUSTOM_CARRIER:Ljava/lang/String; = "status_bar_custom_carrier"

.field public static final STATUS_BAR_EXPANDABLE_UNDER_FULLSCREEN:Ljava/lang/String; = "status_bar_expandable_under_fullscreen"

.field public static final STATUS_BAR_EXPANDABLE_UNDER_KEYGUARD:Ljava/lang/String; = "status_bar_expandable_under_keyguard"

.field public static final STATUS_BAR_IN_CALL_NOTIFICATION_FLOATING:Ljava/lang/String; = "status_bar_in_call_notification_floating"

.field public static final STATUS_BAR_NOTIFICATION_STYLE:Ljava/lang/String; = "status_bar_notification_style"

.field public static final STATUS_BAR_REAL_CARRIER:Ljava/lang/String; = "status_bar_real_carrier"

.field public static final STATUS_BAR_SHOW_CARRIER_UNDER_KEYGUARD:Ljava/lang/String; = "status_bar_show_carrier_under_keyguard"

.field public static final STATUS_BAR_SHOW_CUSTOM_CARRIER:Ljava/lang/String; = "status_bar_show_custom_carrier"

.field public static final STATUS_BAR_SHOW_NETWORK_ASSISTANT:Ljava/lang/String; = "status_bar_show_network_assistant"

.field public static final STATUS_BAR_SHOW_NETWORK_ASSISTANT_DEFAULT:I = 0x0

.field public static final STATUS_BAR_SHOW_NETWORK_SPEED:Ljava/lang/String; = "status_bar_show_network_speed"

.field public static final STATUS_BAR_SHOW_NETWORK_SPEED_DEFAULT:I = 0x0

.field public static final STATUS_BAR_SHOW_NOTIFICATION_ICON:Ljava/lang/String; = "status_bar_show_notification_icon"

.field public static final STATUS_BAR_SHOW_NOTIFICATION_ICON_DEFAULT:I = 0x1

.field public static final STATUS_BAR_STYLE:Ljava/lang/String; = "status_bar_style_type"

.field public static final STATUS_BAR_STYLE_DEFAULT:I = 0x0

.field public static final STATUS_BAR_STYLE_LIST:I = 0x0

.field public static final STATUS_BAR_STYLE_PAGE:I = 0x1

.field public static final STATUS_BAR_TOGGLE_LIST:Ljava/lang/String; = "status_bar_toggle_list_order_new"

.field public static final STATUS_BAR_TOGGLE_PAGE:Ljava/lang/String; = "status_bar_toggle_page_order"

.field public static final STATUS_BAR_UPDATE_NETWORK_SPEED_INTERVAL:Ljava/lang/String; = "status_bar_network_speed_interval"

.field public static final STATUS_BAR_UPDATE_NETWORK_SPEED_INTERVAL_DEFAULT:I = 0xfa0

.field public static final SYSTEM_NEW_VERSION_FOUND:Ljava/lang/String; = "system_new_version_found"

.field public static final T9_INDEXING_KEY:Ljava/lang/String; = "t9_indexing_key"

.field public static final T9_INDEXING_KEY_PINYIN:I = 0x0

.field public static final T9_INDEXING_KEY_ZHUYIN:I = 0x1

.field public static final THREE_GESTURE_SCREENSHOT:Ljava/lang/String; = "three_gesture_screenshot"

.field public static final THREE_GESTURE_SCREENSHOT_DEFAULT:Z = false

.field public static final TORCH_STATE:Ljava/lang/String; = "torch_state"

.field public static final TOUCH_SENSITIVE:Ljava/lang/String; = "touch_sensitive"

.field public static final TRACKBALL_WAKE_SCREEN:Ljava/lang/String; = "trackball_wake_screen"

.field public static final UI_MODE_SCALE:Ljava/lang/String; = "ui_mode_scale"

.field public static final USER_GUIDE_LOCK_SCREEN_UNLOCK:Ljava/lang/String; = "user_guide_lock_screen_unlock"

.field public static final USER_GUIDE_STATUS_BAR_CALL:Ljava/lang/String; = "user_guide_status_bar_call"

.field public static final USER_GUIDE_STATUS_BAR_NOTIFICATION:Ljava/lang/String; = "user_guide_status_bar_notification"

.field public static final USER_GUIDE_STATUS_BAR_TOGGLE:Ljava/lang/String; = "user_guide_status_bar_toggle"

.field public static final USER_GUIDE_STATUS_BAR_TOGGLE_LIST:Ljava/lang/String; = "user_guide_status_bar_toggle_list"

.field public static final USER_NETWORK_PRIORITY_ENABLED:Ljava/lang/String; = "user_network_priority_enabled"

.field public static final VIBRATE_IN_NORMAL:Ljava/lang/String; = "vibrate_in_normal"

.field public static final VIBRATE_IN_NORMAL_DEFAULT:Z

.field public static final VIBRATE_IN_SILENT:Ljava/lang/String; = "vibrate_in_silent"

.field public static final VIBRATE_IN_SILENT_DEFAULT:Z = true

.field public static final VOICEASSIST_INVERT_STOP_REPORT:Ljava/lang/String; = "voiceassist_invert_stop_report"

.field public static final VOICEASSIST_MENU_LONG_LAUNCH:Ljava/lang/String; = "voiceassist_menu_long_press_launch"

.field public static final VOICEASSIST_PHONE_BY_EAR_LAUNCH:Ljava/lang/String; = "voiceassist_phone_by_ear_launch"

.field public static final VOICEASSIST_PHONE_REPORT:Ljava/lang/String; = "voiceassist_phone_report"

.field public static final VOICEASSIST_REPORT_METHOD:Ljava/lang/String; = "voiceassist_report_method"

.field public static final VOICEASSIST_REPORT_OFF:I = 0x2

.field public static final VOICEASSIST_REPORT_ON:I = 0x1

.field public static final VOICEASSIST_REPORT_WIREDON:I = 0x0

.field public static final VOICEASSIST_SMS_REPORT:Ljava/lang/String; = "voiceassist_sms_report"

.field public static final VOLUMEKEY_WAKE_SCREEN:Ljava/lang/String; = "volumekey_wake_screen"

.field public static final WIFI_ASSISTANT:Ljava/lang/String; = "wifi_assistant"

.field public static final WIFI_ASSISTANT_DATA_PROMPT:Ljava/lang/String; = "wifi_assistant_data_prompt"

.field public static final WIFI_ASSISTANT_DATA_PROMPT_DEFAULT:I = 0x1

.field public static final WIFI_ASSISTANT_DEFAULT:I = 0x1

.field public static final WIFI_CONNECT_TYPE:Ljava/lang/String; = "wifi_connect_type"

.field public static final WIFI_CONNECT_TYPE_ASK:I = 0x2

.field public static final WIFI_CONNECT_TYPE_AUTO:I = 0x0

.field public static final WIFI_CONNECT_TYPE_MANUL:I = 0x1

.field public static final WIFI_DIALOG_REMIND_TYPE:Ljava/lang/String; = "wifi_dialog_remind_type"

.field public static final WIFI_DIALOG_REMIND_TYPE_CLOSE:I = 0x0

.field public static final WIFI_DIALOG_REMIND_TYPE_OPEN:I = 0x1

.field public static final WIFI_GENERATION:Ljava/lang/String; = "wifi_generation"

.field public static final WIFI_GENERATION_DEFAULT:I = 0x0

.field public static final WIFI_MASTER_KEY:Ljava/lang/String; = "wifi_master_key"

.field public static final WIFI_MASTER_KEY_DEFAULT:I = 0x1

.field public static final WIFI_PRIORITY_TYPE:Ljava/lang/String; = "wifi_priority_type"

.field public static final WIFI_PRIORITY_TYPE_DEFAULT:I = 0x0

.field public static final WIFI_PRIORITY_TYPE_MAMUAL:I = 0x1

.field public static final WIFI_SELECT_SSID_ASK:I = 0x2

.field public static final WIFI_SELECT_SSID_AUTO:I = 0x0

.field public static final WIFI_SELECT_SSID_MANUL:I = 0x1

.field public static final WIFI_SELECT_SSID_TYPE:Ljava/lang/String; = "wifi_select_ssid_type"

.field public static final WIFI_SHARE:Ljava/lang/String; = "wifi"

.field public static final WINDOW_TYPE_LAYER:Ljava/lang/String; = "window_type_layer"

.field public static final WIRELESS_COMPATIABLE_MODE:I = 0x0

.field public static final WIRELESS_CONNECT_MODE:Ljava/lang/String; = "wireless_compatible_mode"

.field public static final WIRELESS_HIGH_MODE:I = 0x1

.field private static final WORD_PHOTO:Ljava/lang/String; = "word_photo"

.field public static screenKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 320
    const/4 v0, 0x1

    const-string/jumbo v1, "ro.haptic.default_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/provider/MiuiSettings$System;->HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

    .line 637
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v1, :cond_17

    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    move v1, v0

    :goto_18
    sput-boolean v1, Landroid/provider/MiuiSettings$System;->VIBRATE_IN_NORMAL_DEFAULT:Z

    .line 668
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    xor-int/2addr v1, v0

    sput-boolean v1, Landroid/provider/MiuiSettings$System;->SHOW_LOCK_BEFORE_UNLOCK_DEFAULT:Z

    .line 860
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    .line 861
    sget-object v1, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    sget-object v1, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    sget-object v0, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    const-string/jumbo v0, "high"

    const-string/jumbo v1, "middle"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/MiuiSettings$System;->POWER_MODE_VALUES:[Ljava/lang/String;

    .line 1009
	
	const v0, 0xff

    sput v0, Landroid/provider/MiuiSettings$System;->CALL_BREATHING_LIGHT_COLOR_DEFAULT:I

    .line 1019
	
	const v0, 0x2

    sput v0, Landroid/provider/MiuiSettings$System;->CALL_BREATHING_LIGHT_FREQ_DEFAULT:I

    .line 1750
    nop

    .line 1751
    const-string v0, "calendar_alert"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_CALENDAR_ALERT_URI:Landroid/net/Uri;

    .line 1766
    nop

    .line 1767
    const-string/jumbo v1, "sms_received_sound"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri;

    .line 1782
    nop

    .line 1783
    const-string/jumbo v2, "sms_delivered_sound"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri;

    .line 1816
    nop

    .line 1817
    const-string/jumbo v2, "ringtone_sound_slot_1"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_1:Landroid/net/Uri;

    .line 1818
    nop

    .line 1819
    const-string/jumbo v3, "ringtone_sound_slot_2"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_2:Landroid/net/Uri;

    .line 1820
    nop

    .line 1821
    const-string/jumbo v4, "sms_received_sound_slot_1"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sput-object v5, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    .line 1822
    nop

    .line 1823
    const-string/jumbo v5, "sms_received_sound_slot_2"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sput-object v6, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    .line 1824
    nop

    .line 1825
    const-string/jumbo v6, "sms_delivered_sound_slot_1"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sput-object v6, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    .line 1826
    nop

    .line 1827
    const-string/jumbo v6, "sms_delivered_sound_slot_2"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sput-object v6, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    .line 2414
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    sput-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    .line 2416
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-call_log-0"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2417
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-call_log-1"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2418
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "setting_last_time_alert_call_log"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2419
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-wifi-0"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2420
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-wifi-1"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2421
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "setting_last_time_alert_wifi"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2422
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-com.miui.gallery.cloud.provider-0"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2423
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-com.miui.gallery.cloud.provider-1"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2424
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "setting_last_time_alert_com.miui.gallery.cloud.provider"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2425
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-records-0"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2426
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-records-1"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2427
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "setting_last_time_alert_records"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2428
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-com.android.calendar-0"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2429
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-com.android.calendar-1"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2430
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "setting_last_time_alert_com.android.calendar"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2431
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-notes-0"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2432
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-notes-1"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2433
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "setting_last_time_alert_notes"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2434
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-sms-0"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2435
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-sms-1"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2436
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "setting_last_time_alert_sms"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2437
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-com.android.contacts-0"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2438
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-com.android.contacts-1"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2439
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "setting_last_time_alert_com.android.contacts"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2440
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-com.miui.browser-0"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2441
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-com.miui.browser-1"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2442
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "setting_last_time_alert_com.miui.browser"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2443
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-antispam-0"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2444
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-antispam-1"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2445
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "setting_last_time_alert_antispam"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2446
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-com.miui.player-0"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2447
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "sync_for_sim_com.xiaomi-com.miui.player-1"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2448
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "setting_last_time_alert_com.miui.player"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2450
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v7, "com.xiaomi.opensdk.pdc.host"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2451
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "micloud_network_availability"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2452
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "micloud_hosts"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2453
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "micloud_accountname"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2454
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "micloud_hosts_v2"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2455
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "micloud_accountname_v2"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2456
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "micloud_updatehosts_third_party"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2457
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "micloud_gdpr_permission_granted"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2459
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "mms_sync_wild_msg_state"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2460
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "mms_sync_wild_numbers"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2461
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "mms_upload_old_msg_state"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2462
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "mms_upload_old_msg_accounts"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2463
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "mms_thread_marker"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2464
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "mms_private_address_marker"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2466
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "miprofile.settings.miprofile_user_notice"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2467
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "miprofile.settings.miprofile_badge_notice"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2468
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "miprofile.settings.miprofile_set"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2469
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "miprofile.settings.miprofile_on"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2470
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "miprofile.settings.miprofile_visible"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2474
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v7, "debug_switch"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2475
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v7, "debug_dp_path"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2476
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "xunlei_token"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2477
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "vip_token"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2478
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "xunlei_usage_permission"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2480
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v7, "default_alarm_alert"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2481
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "next_alarm_clock_formatted"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2482
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "shutdown_alarm_clock_offset"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2484
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "voiceassist_report_method"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2485
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "voiceassist_phone_report"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2486
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "voiceassist_sms_report"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2488
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "last_valid_device_id"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2491
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "livetalk_service_status"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2492
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "livetalk_enabled"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2493
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "livetalk_switch_state"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2494
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "need_prompt"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2495
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "livetalk_use_current_account"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2496
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "internal_dial_avaiable"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2497
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "international_dial_avaiable"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2498
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "recent_country_remain_mins"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2499
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "livetalk_dial_range"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2500
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "livetalk_available_status"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2501
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "livetalk_remain_minutes"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2504
    sget-object v6, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "lock_wallpaper_provider_authority"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2505
    const-string v6, "clock_changed_time_"

    .line 2506
    .local v6, "themeClockSettingPrefix":Ljava/lang/String;
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "1x2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2507
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "2x2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2508
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "2x4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2509
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "4x4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2510
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "3x4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2511
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v8, "pref_key_wallpaper_screen_span"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2515
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v8, "com.xiaomi.market.enable_share_progress_status"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2516
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v8, "com.miui.home.enable_share_progress_status"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2517
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v8, "com.xiaomi.discover.enable_share_progress_status"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2518
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v8, "com.xiaomi.mipicks.enable_share_progress_status"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2519
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v8, "com.xiaomi.market.enable_app_chooser_recommend"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2520
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v8, "com.xiaomi.discover.auto_update_enabled"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2521
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v8, "com.xiaomi.discover.metered_update_answered"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2522
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v8, "com.xiaomi.discover.metered_update_confirm_needed_by_region"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2523
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v8, "com.xiaomi.discover.metered_system_update_confirm_needed_by_region"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2524
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v8, "com.xiaomi.mipicks.need_show_user_guide_status"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2526
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v8, "touch_assistant_enabled"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2527
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v8, "touch_assistant_show_on_keyguard"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2530
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v8, "frequent_phrases"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2533
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2534
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2535
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2536
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2537
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2538
    sget-object v7, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2540
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "updatable_system_app_count"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2543
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "show_touches"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2546
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "handy_mode_state"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2548
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "long_press_power_launch_xiaoai"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2549
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "send_back_when_xiaoai_appear"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2551
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v7, "double_click_power_key"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2554
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v7, "drive_mode_drive_mode"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2557
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v7, "ai_preload_user_state"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2560
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v7, "auto_dual_clock"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2561
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "resident_id"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2562
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "resident_timezone"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2565
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "random_note_mode_random_sound_number"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2566
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "random_note_mode_sequence_sound_number"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2567
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "random_note_mode_sequence_time_interval_ms"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2568
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "random_note_mode_mute_time_interval_ms"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2571
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v7, "power_supersave_mode_open"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2580
    .end local v6    # "themeClockSettingPrefix":Ljava/lang/String;
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS_OPEN:Ljava/util/Set;

    .line 2582
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS_OPEN:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2583
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS_OPEN:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2584
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS_OPEN:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2585
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS_OPEN:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2586
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS_OPEN:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2587
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 199
    invoke-direct {p0}, Landroid/provider/SystemSettings$System;-><init>()V

    return-void
.end method

.method public static belongToCrossXSpaceSettings(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "setting"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 203
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Landroid/provider/MiuiSettings;->CROSS_PROFILE_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static flattenOrderToString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2040
    .local p0, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2041
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 2042
    .local v1, "max":I
    const/4 v2, 0x0

    .line 2043
    .local v2, "i":I
    :goto_c
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2044
    if-ne v2, v1, :cond_20

    .line 2045
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2046
    :cond_20
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2042
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method public static getActivityResolveOrder(Landroid/content/ContentResolver;)Ljava/util/List;
    .registers 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 2036
    const-string v0, "activity_resolve_order"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->unflattenOrderFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    .registers 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # Z
    .param p3, "userHandle"    # I

    .line 1923
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1167
    nop

    .line 1168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1167
    const-string v1, "disable_wifi_auto_connect_ssid"

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, "ssidList":Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1170
    .local v1, "ssidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 1171
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1172
    .local v2, "ssidArr":[Ljava/lang/String;
    if-eqz v2, :cond_37

    .line 1173
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    array-length v4, v2

    if-ge v3, v4, :cond_37

    .line 1175
    :try_start_23
    new-instance v4, Ljava/lang/String;

    aget-object v5, v2, v3

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_32} :catch_33

    .line 1177
    goto :goto_34

    .line 1176
    :catch_33
    move-exception v4

    .line 1173
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 1181
    .end local v2    # "ssidArr":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_37
    return-object v1
.end method

.method public static getDisplayWindowSizeInSmartCover()Landroid/graphics/Rect;
    .registers 13

    .line 2162
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2163
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Landroid/provider/MiuiSettings$System;->getSmallWindowMode()Landroid/provider/MiuiSettings$System$SmallWindowType;

    move-result-object v1

    .line 2165
    .local v1, "type":Landroid/provider/MiuiSettings$System$SmallWindowType;
    const/4 v2, 0x4

    new-array v3, v2, [I

    const v4, 0x110a0033

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const v4, 0x110a0035

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 2166
    const v4, 0x110a0034

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v7, 0x2

    aput v4, v3, v7

    const v4, 0x110a0032

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v8, 0x3

    aput v4, v3, v8

    .line 2167
    .local v3, "defaultSize":[I
    new-instance v4, Landroid/graphics/Rect;

    aget v9, v3, v5

    aget v10, v3, v6

    aget v11, v3, v7

    aget v12, v3, v8

    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2169
    .local v4, "rect":Landroid/graphics/Rect;
    if-nez v1, :cond_43

    .line 2170
    return-object v4

    .line 2174
    :cond_43
    new-array v9, v2, [I

    aget v10, v3, v5

    const-string/jumbo v11, "smartcover_smallwindow_left"

    invoke-static {v11, v10}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v10

    aput v10, v9, v5

    aget v10, v3, v6

    const-string/jumbo v11, "smartcover_smallwindow_top"

    invoke-static {v11, v10}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v10

    aput v10, v9, v6

    aget v10, v3, v7

    .line 2175
    const-string/jumbo v11, "smartcover_smallwindow_right"

    invoke-static {v11, v10}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v10

    aput v10, v9, v7

    aget v10, v3, v8

    const-string/jumbo v11, "smartcover_smallwindow_bottom"

    invoke-static {v11, v10}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v10

    aput v10, v9, v8

    .line 2178
    .local v9, "displaySize":[I
    const-string/jumbo v10, "support_multiple_small_win_cover"

    invoke-static {v10, v5}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 2179
    .local v10, "multi":Z
    if-eqz v10, :cond_aa

    .line 2180
    sget-object v11, Landroid/provider/MiuiSettings$1;->$SwitchMap$android$provider$MiuiSettings$System$SmallWindowType:[I

    invoke-virtual {v1}, Landroid/provider/MiuiSettings$System$SmallWindowType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v6, :cond_a3

    if-eq v11, v7, :cond_9b

    if-eq v11, v8, :cond_93

    if-eq v11, v2, :cond_8b

    goto :goto_aa

    .line 2191
    :cond_8b
    const-string/jumbo v11, "smartcover_smallwindow_b7_size"

    invoke-static {v11}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    goto :goto_aa

    .line 2188
    :cond_93
    const-string/jumbo v11, "smartcover_smallwindow_a7_size"

    invoke-static {v11}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    .line 2189
    goto :goto_aa

    .line 2185
    :cond_9b
    const-string/jumbo v11, "smartcover_smallwindow_a1_size"

    invoke-static {v11}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    .line 2186
    goto :goto_aa

    .line 2182
    :cond_a3
    const-string/jumbo v11, "smartcover_smallwindow_x7_size"

    invoke-static {v11}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    .line 2196
    :cond_aa
    :goto_aa
    if-eqz v9, :cond_ba

    array-length v11, v9

    if-ne v11, v2, :cond_ba

    .line 2197
    aget v2, v9, v5

    aget v5, v9, v6

    aget v6, v9, v7

    aget v7, v9, v8

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2199
    :cond_ba
    return-object v4
.end method

.method public static getHapticFeedbackLevel(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Landroid/provider/MiuiSettings$System;->HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

    const-string/jumbo v2, "haptic_feedback_level"

    const/4 v3, -0x3

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getHotSpotMacBlackSet(Landroid/content/Context;)Ljava/util/Set;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1270
    nop

    .line 1271
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1270
    const-string/jumbo v1, "hotspot_mac_black_set"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1272
    .local v0, "macList":Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1273
    .local v1, "macBlackSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 1274
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1275
    .local v2, "mac":[Ljava/lang/String;
    if-eqz v2, :cond_38

    .line 1276
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    array-length v4, v2

    if-ge v3, v4, :cond_38

    .line 1278
    :try_start_24
    new-instance v4, Ljava/lang/String;

    aget-object v5, v2, v3

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_33} :catch_34

    .line 1280
    goto :goto_35

    .line 1279
    :catch_34
    move-exception v4

    .line 1276
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 1284
    .end local v2    # "mac":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_38
    return-object v1
.end method

.method public static getHotSpotMaxStationNum(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1235
    const/4 v0, 0x0

    .line 1237
    .local v0, "num":I
    nop

    .line 1238
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hotspot_max_station_num"

    const/4 v3, -0x2

    .line 1237
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_e} :catch_10

    move v0, v1

    .line 1240
    goto :goto_11

    .line 1239
    :catch_10
    move-exception v1

    .line 1241
    :goto_11
    return v0
.end method

.method public static getHotSpotVendorSpecific(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1301
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hotspot_vendor_specific"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenKeyLongPressAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 789
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 791
    const-string/jumbo v0, "none"

    .line 792
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11020027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, "defaultActions":[Ljava/lang/String;
    const-string/jumbo v2, "screen_key_long_press_menu"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 795
    const/4 v2, 0x0

    aget-object v0, v1, v2

    goto :goto_50

    .line 797
    :cond_2a
    const-string/jumbo v2, "screen_key_long_press_home"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 798
    const/4 v2, 0x1

    aget-object v0, v1, v2

    goto :goto_50

    .line 800
    :cond_37
    const-string/jumbo v2, "screen_key_long_press_back"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 801
    const/4 v2, 0x2

    aget-object v0, v1, v2

    goto :goto_50

    .line 803
    :cond_44
    const-string/jumbo v2, "screen_key_long_press_app_switch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 804
    const/4 v2, 0x3

    aget-object v0, v1, v2

    .line 807
    .end local v1    # "defaultActions":[Ljava/lang/String;
    :cond_50
    :goto_50
    return-object v0
.end method

.method public static getScreenKeyOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 871
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_key_order"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, "keyList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 873
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 874
    .local v2, "keys":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    array-length v4, v2

    if-ge v3, v4, :cond_45

    .line 876
    :try_start_20
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 877
    .local v4, "id":I
    sget-object v5, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 878
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3d} :catch_41

    .line 883
    .end local v4    # "id":I
    :cond_3d
    nop

    .line 874
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 880
    :catch_41
    move-exception v4

    .line 881
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 887
    .end local v2    # "keys":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_45
    sget-object v2, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 888
    .local v3, "id":Ljava/lang/Integer;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 889
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    .end local v3    # "id":Ljava/lang/Integer;
    :cond_60
    goto :goto_4b

    .line 893
    :cond_61
    return-object v0
.end method

.method public static getShowCustomCarrierDefault()I
    .registers 2

    .line 415
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_1c

    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_1c

    sget-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1104002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    .line 416
    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    .line 412
    :goto_1d
    return v0
.end method

.method public static getSmallWindowMode()Landroid/provider/MiuiSettings$System$SmallWindowType;
    .registers 8

    .line 2220
    const/16 v0, -0x63

    const-string/jumbo v1, "persist.sys.smallwin_type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2221
    .local v1, "win":I
    const/4 v2, 0x1

    if-ne v1, v0, :cond_3a

    .line 2222
    const/4 v0, 0x0

    const-string/jumbo v3, "support_multiple_small_win_cover"

    invoke-static {v3, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2223
    .local v3, "multi":Z
    const/4 v4, 0x0

    .line 2224
    .local v4, "typeArray":[I
    const-string/jumbo v5, "small_win_cover_type"

    if-eqz v3, :cond_1f

    .line 2225
    invoke-static {v5}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    goto :goto_34

    .line 2227
    :cond_1f
    new-array v4, v2, [I

    .line 2228
    const-string/jumbo v6, "support_small_win_cover"

    invoke-static {v6, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 2229
    .local v6, "supportSmallWin":Z
    const/4 v7, -0x1

    if-eqz v6, :cond_32

    .line 2230
    invoke-static {v5, v7}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v0

    goto :goto_34

    .line 2232
    :cond_32
    aput v7, v4, v0

    .line 2236
    .end local v6    # "supportSmallWin":Z
    :goto_34
    if-nez v4, :cond_38

    .line 2237
    const/4 v0, 0x0

    return-object v0

    .line 2239
    :cond_38
    aget v1, v4, v0

    .line 2242
    .end local v3    # "multi":Z
    .end local v4    # "typeArray":[I
    :cond_3a
    const/4 v0, 0x0

    .line 2243
    .local v0, "type":Landroid/provider/MiuiSettings$System$SmallWindowType;
    if-eqz v1, :cond_50

    if-eq v1, v2, :cond_4d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4a

    const/4 v2, 0x3

    if-eq v1, v2, :cond_47

    .line 2257
    const/4 v0, 0x0

    goto :goto_53

    .line 2254
    :cond_47
    sget-object v0, Landroid/provider/MiuiSettings$System$SmallWindowType;->B7_FULL:Landroid/provider/MiuiSettings$System$SmallWindowType;

    .line 2255
    goto :goto_53

    .line 2251
    :cond_4a
    sget-object v0, Landroid/provider/MiuiSettings$System$SmallWindowType;->A7_LATTICE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    .line 2252
    goto :goto_53

    .line 2248
    :cond_4d
    sget-object v0, Landroid/provider/MiuiSettings$System$SmallWindowType;->A1_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    .line 2249
    goto :goto_53

    .line 2245
    :cond_50
    sget-object v0, Landroid/provider/MiuiSettings$System$SmallWindowType;->X7_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    .line 2246
    nop

    .line 2260
    :goto_53
    return-object v0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .line 1884
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    const-class v0, Landroid/provider/MiuiSettings$System;

    monitor-enter v0

    .line 1869
    :try_start_3
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_c

    .line 1870
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_a

    .line 1871
    move-object v1, p2

    .line 1873
    :cond_a
    monitor-exit v0

    return-object v1

    .line 1868
    .end local v1    # "result":Ljava/lang/String;
    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "defValue":Ljava/lang/String;
    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 1889
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getT9IndexingKeyDefault()I
    .registers 1

    .line 261
    const-string v0, "TW"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCdmaPreciseAnswerStateEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "c"    # Landroid/content/Context;

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "cdma_precise_answer_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private static isCnFromOperator(Ljava/lang/String;)Z
    .registers 4
    .param p0, "operator"    # Ljava/lang/String;

    .line 1329
    const-string v0, ""

    .line 1330
    .local v0, "mcc":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_14

    .line 1331
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1333
    :cond_14
    const-string v1, "460"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isHapticFeedbackDisabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "haptic_feedback_enabled"

    const/4 v3, -0x3

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public static final isInCnRegion()Z
    .registers 8

    .line 1311
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    .line 1312
    .local v0, "telephonyManager":Lmiui/telephony/TelephonyManager;
    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    .line 1313
    .local v1, "isExistIccCard":Z
    :goto_f
    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 1314
    .local v4, "numPhones":I
    const/4 v5, 0x0

    .line 1316
    .local v5, "networkOperator":Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 1317
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_17
    if-ge v6, v4, :cond_27

    .line 1318
    invoke-virtual {v0, v6}, Lmiui/telephony/TelephonyManager;->getNetworkOperatorForSlot(I)Ljava/lang/String;

    move-result-object v5

    .line 1319
    invoke-static {v5}, Landroid/provider/MiuiSettings$System;->isCnFromOperator(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 1320
    return v3

    .line 1317
    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 1325
    .end local v6    # "i":I
    :cond_27
    const-string v6, "CN"

    invoke-static {v6}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    if-eqz v1, :cond_37

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_38

    :cond_37
    move v2, v3

    :cond_38
    return v2
.end method

.method public static isInSmallWindowMode(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 2206
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "is_small_window"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMiDropEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 2306
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "key_midrop_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMiuiPublicSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .registers 5
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "name"    # Ljava/lang/String;

    .line 209
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS_OPEN:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SystemSettings"

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 210
    const-string v0, "Hit MiuiSettings.System.PUBLIC_SETTINGS_OPEN"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return v2

    .line 214
    :cond_11
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_21

    .line 215
    return v2

    .line 217
    :cond_21
    const-string v0, "Want to modify SystemSettings? See MiuiSettings.System.PUBLIC_SETTINGS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public static isSimpleMode(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1838
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1839
    .local v0, "def":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "simple_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public static isSuperSaveModeOpen(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 2404
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "power_supersave_mode_open"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2406
    .local v0, "result":I
    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public static isTouchAssistantEnabledForUser(Landroid/content/Context;IZ)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "hasNavBar"    # Z

    .line 2377
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "touch_assistant_enabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2379
    .local v0, "result":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    move v1, v2

    :cond_10
    return v1
.end method

.method public static isTouchAssistantTemporaryForUser(Landroid/content/Context;IZ)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "hasNavBar"    # Z

    .line 2387
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const-string/jumbo v2, "touch_assistant_enabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2389
    .local v0, "result":I
    if-ne v0, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static putActivityResolveOrder(Landroid/content/ContentResolver;Ljava/util/List;)V
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 2031
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {p1}, Landroid/provider/MiuiSettings$System;->flattenOrderToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity_resolve_order"

    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2032
    return-void
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 1913
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    .registers 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .line 1918
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1903
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 1909
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setDisableWifiAutoConnectSsid(Landroid/content/Context;Ljava/util/HashSet;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1188
    .local p1, "ssidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 1189
    return-void

    .line 1191
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1192
    .local v0, "base64Ssid":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1194
    .local v2, "ssid":Ljava/lang/String;
    :try_start_18
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_29} :catch_2a

    .line 1197
    goto :goto_2b

    .line 1196
    :catch_2a
    move-exception v3

    .line 1198
    .end local v2    # "ssid":Ljava/lang/String;
    :goto_2b
    goto :goto_c

    .line 1199
    :cond_2c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x3

    .line 1199
    const-string v4, "disable_wifi_auto_connect_ssid"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1201
    return-void
.end method

.method public static setHotSpotMacBlackSet(Landroid/content/Context;Ljava/util/Set;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1248
    .local p1, "macSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_44

    .line 1249
    const-string v0, "^[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}$"

    .line 1251
    .local v0, "patternMac":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1252
    .local v1, "base64Mac":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1254
    .local v3, "mac":Ljava/lang/String;
    :try_start_19
    const-string v4, "^[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1255
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_32} :catch_33

    .line 1259
    :cond_32
    goto :goto_34

    .line 1258
    :catch_33
    move-exception v4

    .line 1260
    .end local v3    # "mac":Ljava/lang/String;
    :goto_34
    goto :goto_d

    .line 1261
    :cond_35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    .line 1261
    const-string/jumbo v5, "hotspot_mac_black_set"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1264
    .end local v0    # "patternMac":Ljava/lang/String;
    .end local v1    # "base64Mac":Ljava/lang/StringBuilder;
    :cond_44
    return-void
.end method

.method public static setHotSpotMaxStationNum(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # I

    .line 1223
    if-lez p1, :cond_14

    const/16 v0, 0x7d8

    if-ge p1, v0, :cond_14

    .line 1224
    nop

    .line 1225
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    .line 1224
    const-string/jumbo v2, "hotspot_max_station_num"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1226
    const/4 v0, 0x1

    return v0

    .line 1228
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public static setHotSpotVendorSpecific(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .line 1291
    if-eqz p1, :cond_d

    .line 1292
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "hotspot_vendor_specific"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1295
    :cond_d
    return-void
.end method

.method public static setSimpleMode(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSimpleMode"    # Z

    .line 1846
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "simple_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1847
    return-void
.end method

.method public static setSmartCoverMode(Z)V
    .registers 7
    .param p0, "enable"    # Z

    .line 2267
    const/4 v0, 0x0

    const-string/jumbo v1, "support_hall_sensor"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2268
    .local v1, "supportHallSensor":Z
    const-string/jumbo v2, "persist.sys.smartcover_mode"

    if-eqz v1, :cond_53

    if-nez p0, :cond_10

    goto :goto_53

    .line 2273
    :cond_10
    invoke-static {}, Landroid/provider/MiuiSettings$System;->getSmallWindowMode()Landroid/provider/MiuiSettings$System$SmallWindowType;

    move-result-object v0

    .line 2274
    .local v0, "coverType":Landroid/provider/MiuiSettings$System$SmallWindowType;
    const/4 v3, 0x1

    if-nez v0, :cond_1f

    .line 2275
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    return-void

    .line 2278
    :cond_1f
    sget-object v4, Landroid/provider/MiuiSettings$1;->$SwitchMap$android$provider$MiuiSettings$System$SmallWindowType:[I

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$System$SmallWindowType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x2

    if-eq v4, v3, :cond_4a

    if-eq v4, v5, :cond_4a

    const/4 v5, 0x3

    if-eq v4, v5, :cond_42

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3a

    .line 2290
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 2287
    :cond_3a
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    goto :goto_52

    .line 2284
    :cond_42
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    goto :goto_52

    .line 2281
    :cond_4a
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    nop

    .line 2293
    :goto_52
    return-void

    .line 2269
    .end local v0    # "coverType":Landroid/provider/MiuiSettings$System$SmallWindowType;
    :cond_53
    :goto_53
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    return-void
.end method

.method public static setUseWordPhoto(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useWordPhoto"    # Z

    .line 1950
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "word_photo"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1951
    return-void
.end method

.method private static unflattenOrderFromString(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 2051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2052
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz p0, :cond_1d

    .line 2053
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2054
    .local v1, "split":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_1d

    .line 2055
    aget-object v3, v1, v2

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2054
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2058
    .end local v1    # "split":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1d
    return-object v0
.end method

.method public static updateScreenColor()V
    .registers 7

    .line 1983
    const-string/jumbo v0, "sys.boot_completed"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 1984
    const-string/jumbo v0, "support_screen_color_persist"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1985
    return-void

    .line 1988
    :cond_1c
    const-string v0, "DisplayFeatureManager"

    .line 1989
    .local v0, "TAG":Ljava/lang/String;
    const-string v2, "DisplayFeatureManager"

    const-string/jumbo v3, "updateScreenColor begin"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    invoke-static {}, Lmiui/hareware/display/DisplayFeatureManager;->getInstance()Lmiui/hareware/display/DisplayFeatureManager;

    move-result-object v3

    .line 1993
    .local v3, "dfm":Lmiui/hareware/display/DisplayFeatureManager;
    invoke-static {}, Landroid/provider/MiuiSettings$ScreenEffect;->isScreenPaperMode()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3b

    .line 1994
    const-string/jumbo v4, "setScreenPaperMode true"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    invoke-static {v5}, Landroid/provider/MiuiSettings$ScreenEffect;->setScreenPaperMode(Z)V

    goto :goto_82

    .line 1997
    :cond_3b
    invoke-virtual {v3}, Lmiui/hareware/display/DisplayFeatureManager;->getScreenGamut()I

    move-result v4

    .line 1998
    .local v4, "currValue":I
    const-string/jumbo v6, "screen_standard_mode"

    invoke-static {v6, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_63

    if-eqz v4, :cond_63

    .line 2000
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setScreenGamut "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    invoke-virtual {v3, v4}, Lmiui/hareware/display/DisplayFeatureManager;->setScreenGamut(I)V

    goto :goto_82

    .line 2003
    :cond_63
    invoke-virtual {v3}, Lmiui/hareware/display/DisplayFeatureManager;->getColorPrefer()I

    move-result v4

    .line 2004
    const/4 v5, 0x2

    if-eq v4, v5, :cond_82

    .line 2005
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setColorPrefer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    invoke-virtual {v3, v4}, Lmiui/hareware/display/DisplayFeatureManager;->setColorPrefer(I)V

    .line 2011
    .end local v4    # "currValue":I
    :cond_82
    :goto_82
    invoke-virtual {v3}, Lmiui/hareware/display/DisplayFeatureManager;->getScreenSaturation()I

    move-result v4

    .line 2012
    .restart local v4    # "currValue":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setScreenSaturation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    invoke-virtual {v3, v4}, Lmiui/hareware/display/DisplayFeatureManager;->setScreenSaturation(I)V

    .line 2015
    const-string/jumbo v5, "support_screen_optimize"

    invoke-static {v5, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 2016
    invoke-virtual {v3}, Lmiui/hareware/display/DisplayFeatureManager;->getScreenCabc()I

    move-result v4

    .line 2017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenCabc "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    invoke-virtual {v3, v4}, Lmiui/hareware/display/DisplayFeatureManager;->setScreenCabc(I)V

    .line 2020
    :cond_c3
    const-string/jumbo v1, "updateScreenColor end"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    return-void
.end method

.method public static useWordPhoto(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1957
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "word_photo"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    move v1, v2

    :cond_10
    return v1
.end method
