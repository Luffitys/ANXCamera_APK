.class public final Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "MetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/logging/nano/MetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetricsEvent"
.end annotation


# static fields
.field public static final ABOUT_LEGAL_SETTINGS:I = 0xe1

.field public static final ACCESSIBILITY:I = 0x2

.field public static final ACCESSIBILITY_CAPTION_PROPERTIES:I = 0x3

.field public static final ACCESSIBILITY_DETAILS_SETTINGS:I = 0x692

.field public static final ACCESSIBILITY_FONT_SIZE:I = 0x154

.field public static final ACCESSIBILITY_SCREEN_MAGNIFICATION_SETTINGS:I = 0x39a

.field public static final ACCESSIBILITY_SERVICE:I = 0x4

.field public static final ACCESSIBILITY_TOGGLE_AUTOCLICK:I = 0x14f

.field public static final ACCESSIBILITY_TOGGLE_DALTONIZER:I = 0x5

.field public static final ACCESSIBILITY_TOGGLE_GLOBAL_GESTURE:I = 0x6

.field public static final ACCESSIBILITY_TOGGLE_SCREEN_MAGNIFICATION:I = 0x7

.field public static final ACCESSIBILITY_VIBRATION:I = 0x50c

.field public static final ACCESSIBILITY_VIBRATION_NOTIFICATION:I = 0x50d

.field public static final ACCESSIBILITY_VIBRATION_RING:I = 0x654

.field public static final ACCESSIBILITY_VIBRATION_TOUCH:I = 0x50e

.field public static final ACCESS_METHOD_JNI:I = 0x2

.field public static final ACCESS_METHOD_LINKING:I = 0x3

.field public static final ACCESS_METHOD_NONE:I = 0x0

.field public static final ACCESS_METHOD_REFLECTION:I = 0x1

.field public static final ACCOUNT:I = 0x8

.field public static final ACCOUNTS_ACCOUNT_SYNC:I = 0x9

.field public static final ACCOUNTS_CHOOSE_ACCOUNT_ACTIVITY:I = 0xa

.field public static final ACCOUNTS_MANAGE_ACCOUNTS:I = 0xb

.field public static final ACCOUNTS_WORK_PROFILE_SETTINGS:I = 0x191

.field public static final ACTION_ACTIVITY_CHOOSER_PICKED_APP_TARGET:I = 0xd7

.field public static final ACTION_ACTIVITY_CHOOSER_PICKED_SERVICE_TARGET:I = 0xd8

.field public static final ACTION_ACTIVITY_CHOOSER_PICKED_STANDARD_TARGET:I = 0xd9

.field public static final ACTION_ACTIVITY_CHOOSER_PICKED_SYSTEM_TARGET:I = 0x6d5

.field public static final ACTION_ACTIVITY_CHOOSER_SHOWN:I = 0xd6

.field public static final ACTION_ACTIVITY_CHOOSER_SHOWN_DIRECT_TARGET:I = 0x672

.field public static final ACTION_ACTIVITY_START:I = 0x5e9

.field public static final ACTION_ADD_EMERGENCY_CONTACT:I = 0x119

.field public static final ACTION_AIRPLANE_TOGGLE:I = 0xb1

.field public static final ACTION_AMBIENT_DISPLAY:I = 0x1ef

.field public static final ACTION_AMBIENT_GESTURE:I = 0x19b

.field public static final ACTION_ANOMALY_IGNORED:I = 0x56b

.field public static final ACTION_ANOMALY_TRIGGERED:I = 0x557

.field public static final ACTION_APPOP_DENIED_ACCESS_NOTIFICATIONS:I = 0x375

.field public static final ACTION_APPOP_DENIED_REQUEST_INSTALL_PACKAGES:I = 0x381

.field public static final ACTION_APPOP_DENIED_SYSTEM_ALERT_WINDOW:I = 0x379

.field public static final ACTION_APPOP_DENIED_WRITE_SETTINGS:I = 0x37d

.field public static final ACTION_APPOP_GRANT_ACCESS_NOTIFICATIONS:I = 0x374

.field public static final ACTION_APPOP_GRANT_REQUEST_INSTALL_PACKAGES:I = 0x380

.field public static final ACTION_APPOP_GRANT_SYSTEM_ALERT_WINDOW:I = 0x378

.field public static final ACTION_APPOP_GRANT_WRITE_SETTINGS:I = 0x37c

.field public static final ACTION_APPOP_REQUEST_ACCESS_NOTIFICATIONS:I = 0x373

.field public static final ACTION_APPOP_REQUEST_REQUEST_INSTALL_PACKAGES:I = 0x37f

.field public static final ACTION_APPOP_REQUEST_SYSTEM_ALERT_WINDOW:I = 0x377

.field public static final ACTION_APPOP_REQUEST_WRITE_SETTINGS:I = 0x37b

.field public static final ACTION_APPOP_REVOKE_ACCESS_NOTIFICATIONS:I = 0x376

.field public static final ACTION_APPOP_REVOKE_REQUEST_INSTALL_PACKAGES:I = 0x382

.field public static final ACTION_APPOP_REVOKE_SYSTEM_ALERT_WINDOW:I = 0x37a

.field public static final ACTION_APPOP_REVOKE_WRITE_SETTINGS:I = 0x37e

.field public static final ACTION_APP_ANR:I = 0x13d

.field public static final ACTION_APP_BACKGROUND_CHECK:I = 0x3fc

.field public static final ACTION_APP_CRASH:I = 0x13c

.field public static final ACTION_APP_DISAMBIG_ALWAYS:I = 0x1c7

.field public static final ACTION_APP_DISAMBIG_JUST_ONCE:I = 0x1c8

.field public static final ACTION_APP_DISAMBIG_TAP:I = 0x1c9

.field public static final ACTION_APP_FORCE_STOP:I = 0x327

.field public static final ACTION_APP_LOCATION_CHECK:I = 0x3fd

.field public static final ACTION_APP_NOTE_SETTINGS:I = 0xce

.field public static final ACTION_APP_RESTRICTION_TIP:I = 0x543

.field public static final ACTION_APP_RESTRICTION_TIP_LIST:I = 0x549

.field public static final ACTION_APP_STOP_AND_BACKGROUND_CHECK:I = 0x4d1

.field public static final ACTION_ASSIST_LONG_PRESS:I = 0xef

.field public static final ACTION_ATCGIB:I = 0x68d

.field public static final ACTION_ATCHNUC:I = 0x691

.field public static final ACTION_ATCLPB:I = 0x68c

.field public static final ACTION_ATCPAB:I = 0x68e

.field public static final ACTION_ATCSAUC:I = 0x68f

.field public static final ACTION_ATCSCUC:I = 0x690

.field public static final ACTION_ATPG:I = 0x68b

.field public static final ACTION_ATSG:I = 0x68a

.field public static final ACTION_BAN_APP_NOTES:I = 0x93

.field public static final ACTION_BATTERY_CAUSED_SHUTDOWN:I = 0x5ab

.field public static final ACTION_BATTERY_CHARGE_CYCLES:I = 0x59e

.field public static final ACTION_BATTERY_HEALTH:I = 0x599

.field public static final ACTION_BATTERY_TIP_SHOWN:I = 0x52c

.field public static final ACTION_BLUETOOTH_FILES:I = 0xa2

.field public static final ACTION_BLUETOOTH_RENAME:I = 0xa1

.field public static final ACTION_BLUETOOTH_SCAN:I = 0xa0

.field public static final ACTION_BLUETOOTH_TOGGLE:I = 0x9f

.field public static final ACTION_BOOT:I = 0x44a

.field public static final ACTION_BRIGHTNESS:I = 0xda

.field public static final ACTION_BRIGHTNESS_AUTO:I = 0xdb

.field public static final ACTION_BRIGHTNESS_FOR_VR:I = 0x1f2

.field public static final ACTION_BUGREPORT_DETAILS_CANCELED:I = 0x130

.field public static final ACTION_BUGREPORT_DETAILS_DESCRIPTION_CHANGED:I = 0x12e

.field public static final ACTION_BUGREPORT_DETAILS_NAME_CHANGED:I = 0x12c

.field public static final ACTION_BUGREPORT_DETAILS_SAVED:I = 0x12f

.field public static final ACTION_BUGREPORT_DETAILS_TITLE_CHANGED:I = 0x12d

.field public static final ACTION_BUGREPORT_FROM_POWER_MENU_FULL:I = 0x125

.field public static final ACTION_BUGREPORT_FROM_POWER_MENU_INTERACTIVE:I = 0x124

.field public static final ACTION_BUGREPORT_FROM_SETTINGS_FULL:I = 0x127

.field public static final ACTION_BUGREPORT_FROM_SETTINGS_INTERACTIVE:I = 0x126

.field public static final ACTION_BUGREPORT_NOTIFICATION_ACTION_CANCEL:I = 0x128

.field public static final ACTION_BUGREPORT_NOTIFICATION_ACTION_DETAILS:I = 0x129

.field public static final ACTION_BUGREPORT_NOTIFICATION_ACTION_SCREENSHOT:I = 0x12a

.field public static final ACTION_BUGREPORT_NOTIFICATION_ACTION_SHARE:I = 0x12b

.field public static final ACTION_CALL_EMERGENCY_CONTACT:I = 0x11b

.field public static final ACTION_CAMERA_EVENT:I = 0x408

.field public static final ACTION_CAMERA_LIFT_TRIGGER:I = 0x3dd

.field public static final ACTION_CAPTIVE_PORTAL_LOGIN_ACTIVITY:I = 0x3ec

.field public static final ACTION_CAPTIVE_PORTAL_LOGIN_RESULT_DISMISSED:I = 0x3ed

.field public static final ACTION_CAPTIVE_PORTAL_LOGIN_RESULT_UNWANTED:I = 0x3ee

.field public static final ACTION_CAPTIVE_PORTAL_LOGIN_RESULT_WANTED_AS_IS:I = 0x3ef

.field public static final ACTION_CELL_DATA_TOGGLE:I = 0xb2

.field public static final ACTION_CHARGE:I = 0x589

.field public static final ACTION_CLICK_ACCOUNT_AVATAR:I = 0x66b

.field public static final ACTION_CLICK_SETTINGS_SEARCH_INLINE_RESULT:I = 0x36e

.field public static final ACTION_CLICK_SETTINGS_SEARCH_RESULT:I = 0x2fb

.field public static final ACTION_CLICK_SETTINGS_SEARCH_SAVED_QUERY:I = 0x371

.field public static final ACTION_CONTEXTUAL_CARD_CLICK:I = 0x682

.field public static final ACTION_CONTEXTUAL_CARD_DISMISS:I = 0x681

.field public static final ACTION_CONTEXTUAL_CARD_ELIGIBILITY:I = 0x696

.field public static final ACTION_CONTEXTUAL_CARD_LOAD:I = 0x694

.field public static final ACTION_CONTEXTUAL_CARD_LOAD_TIMEOUT:I = 0x695

.field public static final ACTION_CONTEXTUAL_CARD_NOT_SHOW:I = 0x680

.field public static final ACTION_CONTEXTUAL_CARD_SHOW:I = 0x67f

.field public static final ACTION_CONTEXTUAL_HOME_SHOW:I = 0x67e

.field public static final ACTION_DATA_SAVER_BLACKLIST:I = 0x18c

.field public static final ACTION_DATA_SAVER_MODE:I = 0x18a

.field public static final ACTION_DATA_SAVER_WHITELIST:I = 0x18b

.field public static final ACTION_DEFAULT_SMS_APP_CHANGED:I = 0x10a

.field public static final ACTION_DELETE_EMERGENCY_CONTACT:I = 0x11a

.field public static final ACTION_DELETION_APPS_COLLAPSED:I = 0x1d0

.field public static final ACTION_DELETION_DOWNLOADS_COLLAPSED:I = 0x1d2

.field public static final ACTION_DELETION_HELPER_APPS_DELETION_FAIL:I = 0x1d7

.field public static final ACTION_DELETION_HELPER_CANCEL:I = 0x1d4

.field public static final ACTION_DELETION_HELPER_CLEAR:I = 0x1d3

.field public static final ACTION_DELETION_HELPER_DOWNLOADS_DELETION_FAIL:I = 0x1d8

.field public static final ACTION_DELETION_HELPER_PHOTOS_VIDEOS_DELETION_FAIL:I = 0x1d9

.field public static final ACTION_DELETION_HELPER_REMOVE_CANCEL:I = 0x1d6

.field public static final ACTION_DELETION_HELPER_REMOVE_CONFIRM:I = 0x1d5

.field public static final ACTION_DELETION_SELECTION_ALL_APPS:I = 0x1cd

.field public static final ACTION_DELETION_SELECTION_APP_OFF:I = 0x1cf

.field public static final ACTION_DELETION_SELECTION_APP_ON:I = 0x1ce

.field public static final ACTION_DELETION_SELECTION_DOWNLOADS:I = 0x1d1

.field public static final ACTION_DELETION_SELECTION_PHOTOS:I = 0x1cc

.field public static final ACTION_DIRECT_SHARE_TARGETS_LOADED_CHOOSER_SERVICE:I = 0x6b7

.field public static final ACTION_DIRECT_SHARE_TARGETS_LOADED_SHORTCUT_MANAGER:I = 0x6b6

.field public static final ACTION_DISMISS_ALL_NOTES:I = 0x94

.field public static final ACTION_DISPLAY_FOLD:I = 0x63a

.field public static final ACTION_DISPLAY_WHITE_BALANCE_SETTING_CHANGED:I = 0x6a7

.field public static final ACTION_DOUBLE_TAP_POWER_CAMERA_GESTURE:I = 0xff

.field public static final ACTION_EARLY_WARNING_TIP:I = 0x547

.field public static final ACTION_EDIT_EMERGENCY_INFO:I = 0x117

.field public static final ACTION_EDIT_EMERGENCY_INFO_FIELD:I = 0x118

.field public static final ACTION_EMERGENCY_CALL:I = 0xc8

.field public static final ACTION_EMERGENCY_DIALER_FROM_POWER_MENU:I = 0x621

.field public static final ACTION_FACE_AUTH:I = 0x5e0

.field public static final ACTION_FACE_ENROLL:I = 0x5e1

.field public static final ACTION_FINGERPRINT_AUTH:I = 0xfc

.field public static final ACTION_FINGERPRINT_DELETE:I = 0xfd

.field public static final ACTION_FINGERPRINT_ENROLL:I = 0xfb

.field public static final ACTION_FINGERPRINT_RENAME:I = 0xfe

.field public static final ACTION_GENERIC_PACKAGE:I = 0x15e

.field public static final ACTION_GET_CONTACT:I = 0x360

.field public static final ACTION_HARDWARE_FAILED:I = 0x593

.field public static final ACTION_HEADSET_PLUG:I = 0x3ff

.field public static final ACTION_HEADSET_POSE_STATUS:I = 0x402

.field public static final ACTION_HEADSET_STATUS:I = 0x3fe

.field public static final ACTION_HIDDEN_API_ACCESSED:I = 0x56f

.field public static final ACTION_HIDE_APP_DISAMBIG_APP_FEATURED:I = 0x1c4

.field public static final ACTION_HIDE_APP_DISAMBIG_NONE_FEATURED:I = 0x1c6

.field public static final ACTION_HIDE_SETTINGS_SUGGESTION:I = 0x181

.field public static final ACTION_HIGH_USAGE_TIP:I = 0x544

.field public static final ACTION_HIGH_USAGE_TIP_LIST:I = 0x54a

.field public static final ACTION_HUSH_GESTURE:I = 0x5a0

.field public static final ACTION_INSTANT_APP_RESOLUTION_PHASE_ONE:I = 0x383

.field public static final ACTION_INSTANT_APP_RESOLUTION_PHASE_TWO:I = 0x384

.field public static final ACTION_LEAVE_SEARCH_RESULT_WITHOUT_QUERY:I = 0x2fa

.field public static final ACTION_LOCK_BECAUSE_SIM_REMOVED:I = 0x1f0

.field public static final ACTION_LOW_BATTERY_TIP:I = 0x548

.field public static final ACTION_LS_CAMERA:I = 0xbd

.field public static final ACTION_LS_DIALER:I = 0xbe

.field public static final ACTION_LS_HINT:I = 0xbc

.field public static final ACTION_LS_LOCK:I = 0xbf

.field public static final ACTION_LS_NOTE:I = 0xc0

.field public static final ACTION_LS_QS:I = 0xc1

.field public static final ACTION_LS_SHADE:I = 0xbb

.field public static final ACTION_LS_UNLOCK:I = 0xba

.field public static final ACTION_MANAGE_NOTIFICATIONS:I = 0x54e

.field public static final ACTION_MOBILE_ENHANCED_4G_LTE_MODE_TOGGLE:I = 0x4b3

.field public static final ACTION_MOBILE_NETWORK_APN_SETTINGS:I = 0x4bc

.field public static final ACTION_MOBILE_NETWORK_AUTO_SELECT_NETWORK_TOGGLE:I = 0x4b9

.field public static final ACTION_MOBILE_NETWORK_CARRIER_SETTINGS:I = 0x4bd

.field public static final ACTION_MOBILE_NETWORK_CDMA_SUBSCRIPTION_SELECT:I = 0x4bf

.field public static final ACTION_MOBILE_NETWORK_CDMA_SYSTEM_SELECT:I = 0x4be

.field public static final ACTION_MOBILE_NETWORK_DATA_ROAMING_TOGGLE:I = 0x4b1

.field public static final ACTION_MOBILE_NETWORK_DATA_USAGE:I = 0x43a

.field public static final ACTION_MOBILE_NETWORK_EUICC_SETTING:I = 0x4b6

.field public static final ACTION_MOBILE_NETWORK_EXPAND_ADVANCED_FIELDS:I = 0x4b2

.field public static final ACTION_MOBILE_NETWORK_MANUAL_SELECT_NETWORK:I = 0x4ba

.field public static final ACTION_MOBILE_NETWORK_MOBILE_DATA_TOGGLE:I = 0x439

.field public static final ACTION_MOBILE_NETWORK_SELECT_ENABLED_NETWORK:I = 0x4b5

.field public static final ACTION_MOBILE_NETWORK_SELECT_PREFERRED_NETWORK:I = 0x4b4

.field public static final ACTION_MOBILE_NETWORK_SET_UP_DATA_SERVICE:I = 0x4c0

.field public static final ACTION_MOBILE_NETWORK_VIDEO_CALLING_TOGGLE:I = 0x4b8

.field public static final ACTION_MOBILE_NETWORK_WIFI_CALLING:I = 0x4b7

.field public static final ACTION_MODIFY_IMPORTANCE_SLIDER:I = 0x122

.field public static final ACTION_NAV_BUTTON_EVENT:I = 0x3a3

.field public static final ACTION_NFC_PAYMENT_ALWAYS_SETTING:I = 0x657

.field public static final ACTION_NFC_PAYMENT_FOREGROUND_SETTING:I = 0x656

.field public static final ACTION_NIGHT_DISPLAY_AUTO_MODE_CHANGED:I = 0x51d

.field public static final ACTION_NIGHT_DISPLAY_AUTO_MODE_CUSTOM_TIME_CHANGED:I = 0x51e

.field public static final ACTION_NOTE_CONTROLS:I = 0xcc

.field public static final ACTION_NOTE_INFO:I = 0xcd

.field public static final ACTION_NOTIFICATION_CHANNEL:I = 0x358

.field public static final ACTION_NOTIFICATION_CHANNEL_GROUP:I = 0x35b

.field public static final ACTION_NOTIFICATION_EXPANDER:I = 0x197

.field public static final ACTION_NOTIFICATION_GESTURE_EXPANDER:I = 0x199

.field public static final ACTION_NOTIFICATION_GROUP_EXPANDER:I = 0x198

.field public static final ACTION_NOTIFICATION_GROUP_GESTURE_EXPANDER:I = 0x19a

.field public static final ACTION_OPEN_APP_NOTIFICATION_SETTING:I = 0x3f8

.field public static final ACTION_OPEN_APP_SETTING:I = 0x3f9

.field public static final ACTION_OPS_GUTS_SETTINGS:I = 0x542

.field public static final ACTION_OUTPUT_CHOOSER_CONNECT:I = 0x510

.field public static final ACTION_OUTPUT_CHOOSER_DISCONNECT:I = 0x511

.field public static final ACTION_OVERVIEW_PAGE:I = 0x114

.field public static final ACTION_OVERVIEW_SELECT:I = 0x115

.field public static final ACTION_PANEL_INTERACTION:I = 0x67a

.field public static final ACTION_PANEL_VIEW_EXPAND:I = 0x530

.field public static final ACTION_PERMISSION_DENIED:I = 0x4dc

.field public static final ACTION_PERMISSION_DENIED_ACCESS_COARSE_LOCATION:I = 0x298

.field public static final ACTION_PERMISSION_DENIED_ACCESS_FINE_LOCATION:I = 0x294

.field public static final ACTION_PERMISSION_DENIED_ADD_VOICEMAIL:I = 0x2b0

.field public static final ACTION_PERMISSION_DENIED_BODY_SENSORS:I = 0x2c0

.field public static final ACTION_PERMISSION_DENIED_CALL_PHONE:I = 0x2a4

.field public static final ACTION_PERMISSION_DENIED_CAMERA:I = 0x284

.field public static final ACTION_PERMISSION_DENIED_GET_ACCOUNTS:I = 0x290

.field public static final ACTION_PERMISSION_DENIED_PROCESS_OUTGOING_CALLS:I = 0x2b8

.field public static final ACTION_PERMISSION_DENIED_READ_CALENDAR:I = 0x27c

.field public static final ACTION_PERMISSION_DENIED_READ_CALL_LOG:I = 0x2a8

.field public static final ACTION_PERMISSION_DENIED_READ_CELL_BROADCASTS:I = 0x2bc

.field public static final ACTION_PERMISSION_DENIED_READ_CONTACTS:I = 0x288

.field public static final ACTION_PERMISSION_DENIED_READ_EXTERNAL_STORAGE:I = 0x2d8

.field public static final ACTION_PERMISSION_DENIED_READ_PHONE_NUMBERS:I = 0x2e2

.field public static final ACTION_PERMISSION_DENIED_READ_PHONE_STATE:I = 0x2a0

.field public static final ACTION_PERMISSION_DENIED_READ_SMS:I = 0x2cc

.field public static final ACTION_PERMISSION_DENIED_RECEIVE_MMS:I = 0x2d4

.field public static final ACTION_PERMISSION_DENIED_RECEIVE_SMS:I = 0x2c8

.field public static final ACTION_PERMISSION_DENIED_RECEIVE_WAP_PUSH:I = 0x2d0

.field public static final ACTION_PERMISSION_DENIED_RECORD_AUDIO:I = 0x29c

.field public static final ACTION_PERMISSION_DENIED_SEND_SMS:I = 0x2c4

.field public static final ACTION_PERMISSION_DENIED_UNKNOWN:I = 0x278

.field public static final ACTION_PERMISSION_DENIED_USE_SIP:I = 0x2b4

.field public static final ACTION_PERMISSION_DENIED_WRITE_CALENDAR:I = 0x280

.field public static final ACTION_PERMISSION_DENIED_WRITE_CALL_LOG:I = 0x2ac

.field public static final ACTION_PERMISSION_DENIED_WRITE_CONTACTS:I = 0x28c

.field public static final ACTION_PERMISSION_DENIED_WRITE_EXTERNAL_STORAGE:I = 0x2dc

.field public static final ACTION_PERMISSION_GRANTED:I = 0x4db

.field public static final ACTION_PERMISSION_GRANT_ACCESS_COARSE_LOCATION:I = 0x297

.field public static final ACTION_PERMISSION_GRANT_ACCESS_FINE_LOCATION:I = 0x293

.field public static final ACTION_PERMISSION_GRANT_ADD_VOICEMAIL:I = 0x2af

.field public static final ACTION_PERMISSION_GRANT_BODY_SENSORS:I = 0x2bf

.field public static final ACTION_PERMISSION_GRANT_CALL_PHONE:I = 0x2a3

.field public static final ACTION_PERMISSION_GRANT_CAMERA:I = 0x283

.field public static final ACTION_PERMISSION_GRANT_GET_ACCOUNTS:I = 0x28f

.field public static final ACTION_PERMISSION_GRANT_PROCESS_OUTGOING_CALLS:I = 0x2b7

.field public static final ACTION_PERMISSION_GRANT_READ_CALENDAR:I = 0x27b

.field public static final ACTION_PERMISSION_GRANT_READ_CALL_LOG:I = 0x2a7

.field public static final ACTION_PERMISSION_GRANT_READ_CELL_BROADCASTS:I = 0x2bb

.field public static final ACTION_PERMISSION_GRANT_READ_CONTACTS:I = 0x287

.field public static final ACTION_PERMISSION_GRANT_READ_EXTERNAL_STORAGE:I = 0x2d7

.field public static final ACTION_PERMISSION_GRANT_READ_PHONE_NUMBERS:I = 0x2e1

.field public static final ACTION_PERMISSION_GRANT_READ_PHONE_STATE:I = 0x29f

.field public static final ACTION_PERMISSION_GRANT_READ_SMS:I = 0x2cb

.field public static final ACTION_PERMISSION_GRANT_RECEIVE_MMS:I = 0x2d3

.field public static final ACTION_PERMISSION_GRANT_RECEIVE_SMS:I = 0x2c7

.field public static final ACTION_PERMISSION_GRANT_RECEIVE_WAP_PUSH:I = 0x2cf

.field public static final ACTION_PERMISSION_GRANT_RECORD_AUDIO:I = 0x29b

.field public static final ACTION_PERMISSION_GRANT_SEND_SMS:I = 0x2c3

.field public static final ACTION_PERMISSION_GRANT_UNKNOWN:I = 0x277

.field public static final ACTION_PERMISSION_GRANT_USE_SIP:I = 0x2b3

.field public static final ACTION_PERMISSION_GRANT_WRITE_CALENDAR:I = 0x27f

.field public static final ACTION_PERMISSION_GRANT_WRITE_CALL_LOG:I = 0x2ab

.field public static final ACTION_PERMISSION_GRANT_WRITE_CONTACTS:I = 0x28b

.field public static final ACTION_PERMISSION_GRANT_WRITE_EXTERNAL_STORAGE:I = 0x2db

.field public static final ACTION_PERMISSION_REQUESTED:I = 0x4da

.field public static final ACTION_PERMISSION_REQUEST_ACCESS_COARSE_LOCATION:I = 0x296

.field public static final ACTION_PERMISSION_REQUEST_ACCESS_FINE_LOCATION:I = 0x292

.field public static final ACTION_PERMISSION_REQUEST_ADD_VOICEMAIL:I = 0x2ae

.field public static final ACTION_PERMISSION_REQUEST_BODY_SENSORS:I = 0x2be

.field public static final ACTION_PERMISSION_REQUEST_CALL_PHONE:I = 0x2a2

.field public static final ACTION_PERMISSION_REQUEST_CAMERA:I = 0x282

.field public static final ACTION_PERMISSION_REQUEST_GET_ACCOUNTS:I = 0x28e

.field public static final ACTION_PERMISSION_REQUEST_PROCESS_OUTGOING_CALLS:I = 0x2b6

.field public static final ACTION_PERMISSION_REQUEST_READ_CALENDAR:I = 0x27a

.field public static final ACTION_PERMISSION_REQUEST_READ_CALL_LOG:I = 0x2a6

.field public static final ACTION_PERMISSION_REQUEST_READ_CELL_BROADCASTS:I = 0x2ba

.field public static final ACTION_PERMISSION_REQUEST_READ_CONTACTS:I = 0x286

.field public static final ACTION_PERMISSION_REQUEST_READ_EXTERNAL_STORAGE:I = 0x2d6

.field public static final ACTION_PERMISSION_REQUEST_READ_PHONE_NUMBERS:I = 0x2e0

.field public static final ACTION_PERMISSION_REQUEST_READ_PHONE_STATE:I = 0x29e

.field public static final ACTION_PERMISSION_REQUEST_READ_SMS:I = 0x2ca

.field public static final ACTION_PERMISSION_REQUEST_RECEIVE_MMS:I = 0x2d2

.field public static final ACTION_PERMISSION_REQUEST_RECEIVE_SMS:I = 0x2c6

.field public static final ACTION_PERMISSION_REQUEST_RECEIVE_WAP_PUSH:I = 0x2ce

.field public static final ACTION_PERMISSION_REQUEST_RECORD_AUDIO:I = 0x29a

.field public static final ACTION_PERMISSION_REQUEST_SEND_SMS:I = 0x2c2

.field public static final ACTION_PERMISSION_REQUEST_UNKNOWN:I = 0x276

.field public static final ACTION_PERMISSION_REQUEST_USE_SIP:I = 0x2b2

.field public static final ACTION_PERMISSION_REQUEST_WRITE_CALENDAR:I = 0x27e

.field public static final ACTION_PERMISSION_REQUEST_WRITE_CALL_LOG:I = 0x2aa

.field public static final ACTION_PERMISSION_REQUEST_WRITE_CONTACTS:I = 0x28a

.field public static final ACTION_PERMISSION_REQUEST_WRITE_EXTERNAL_STORAGE:I = 0x2da

.field public static final ACTION_PERMISSION_REVOKED:I = 0x4dd

.field public static final ACTION_PERMISSION_REVOKE_ACCESS_COARSE_LOCATION:I = 0x299

.field public static final ACTION_PERMISSION_REVOKE_ACCESS_FINE_LOCATION:I = 0x295

.field public static final ACTION_PERMISSION_REVOKE_ADD_VOICEMAIL:I = 0x2b1

.field public static final ACTION_PERMISSION_REVOKE_BODY_SENSORS:I = 0x2c1

.field public static final ACTION_PERMISSION_REVOKE_CALL_PHONE:I = 0x2a5

.field public static final ACTION_PERMISSION_REVOKE_CAMERA:I = 0x285

.field public static final ACTION_PERMISSION_REVOKE_GET_ACCOUNTS:I = 0x291

.field public static final ACTION_PERMISSION_REVOKE_PROCESS_OUTGOING_CALLS:I = 0x2b9

.field public static final ACTION_PERMISSION_REVOKE_READ_CALENDAR:I = 0x27d

.field public static final ACTION_PERMISSION_REVOKE_READ_CALL_LOG:I = 0x2a9

.field public static final ACTION_PERMISSION_REVOKE_READ_CELL_BROADCASTS:I = 0x2bd

.field public static final ACTION_PERMISSION_REVOKE_READ_CONTACTS:I = 0x289

.field public static final ACTION_PERMISSION_REVOKE_READ_EXTERNAL_STORAGE:I = 0x2d9

.field public static final ACTION_PERMISSION_REVOKE_READ_PHONE_NUMBERS:I = 0x2e3

.field public static final ACTION_PERMISSION_REVOKE_READ_PHONE_STATE:I = 0x2a1

.field public static final ACTION_PERMISSION_REVOKE_READ_SMS:I = 0x2cd

.field public static final ACTION_PERMISSION_REVOKE_RECEIVE_MMS:I = 0x2d5

.field public static final ACTION_PERMISSION_REVOKE_RECEIVE_SMS:I = 0x2c9

.field public static final ACTION_PERMISSION_REVOKE_RECEIVE_WAP_PUSH:I = 0x2d1

.field public static final ACTION_PERMISSION_REVOKE_RECORD_AUDIO:I = 0x29d

.field public static final ACTION_PERMISSION_REVOKE_SEND_SMS:I = 0x2c5

.field public static final ACTION_PERMISSION_REVOKE_UNKNOWN:I = 0x279

.field public static final ACTION_PERMISSION_REVOKE_USE_SIP:I = 0x2b5

.field public static final ACTION_PERMISSION_REVOKE_WRITE_CALENDAR:I = 0x281

.field public static final ACTION_PERMISSION_REVOKE_WRITE_CALL_LOG:I = 0x2ad

.field public static final ACTION_PERMISSION_REVOKE_WRITE_CONTACTS:I = 0x28d

.field public static final ACTION_PERMISSION_REVOKE_WRITE_EXTERNAL_STORAGE:I = 0x2dd

.field public static final ACTION_PHONE_EXISTS:I = 0x35f

.field public static final ACTION_PHONE_ORIENTATION_CHANGED:I = 0x67b

.field public static final ACTION_PHYSICAL_DROP:I = 0x596

.field public static final ACTION_PICTURE_IN_PICTURE_ASPECT_RATIO_CHANGED:I = 0x338

.field public static final ACTION_PICTURE_IN_PICTURE_DISMISSED:I = 0x336

.field public static final ACTION_PICTURE_IN_PICTURE_ENTERED:I = 0x333

.field public static final ACTION_PICTURE_IN_PICTURE_EXPANDED_TO_FULLSCREEN:I = 0x334

.field public static final ACTION_PICTURE_IN_PICTURE_MENU:I = 0x337

.field public static final ACTION_PICTURE_IN_PICTURE_MINIMIZED:I = 0x335

.field public static final ACTION_PRINT:I = 0x1f9

.field public static final ACTION_PRINTER_SEARCH:I = 0x1fd

.field public static final ACTION_PRINTER_SELECT_ALL:I = 0x1fb

.field public static final ACTION_PRINTER_SELECT_DROPDOWN:I = 0x1fa

.field public static final ACTION_PRINT_JOB_OPTIONS:I = 0x1fc

.field public static final ACTION_PRINT_RECOMMENDED_SERVICE_INSTALL:I = 0x200

.field public static final ACTION_PRINT_SERVICE_ADD:I = 0x1fe

.field public static final ACTION_PRINT_SERVICE_TOGGLE:I = 0x1ff

.field public static final ACTION_PRIVATE_DNS_MODE:I = 0x4e1

.field public static final ACTION_PSD_LOADER:I = 0x3fb

.field public static final ACTION_QS_CLICK:I = 0x39d

.field public static final ACTION_QS_COLLAPSED_SETTINGS_LAUNCH:I = 0x1ea

.field public static final ACTION_QS_DATE:I = 0x3a2

.field public static final ACTION_QS_EDIT_ADD:I = 0x16b

.field public static final ACTION_QS_EDIT_ADD_SPEC:I = 0x16a

.field public static final ACTION_QS_EDIT_MOVE:I = 0x16d

.field public static final ACTION_QS_EDIT_MOVE_SPEC:I = 0x16c

.field public static final ACTION_QS_EDIT_REMOVE:I = 0x169

.field public static final ACTION_QS_EDIT_REMOVE_SPEC:I = 0x168

.field public static final ACTION_QS_EDIT_RESET:I = 0x167

.field public static final ACTION_QS_EXPANDED_SETTINGS_LAUNCH:I = 0x196

.field public static final ACTION_QS_LONG_PRESS:I = 0x16e

.field public static final ACTION_QS_MORE_SETTINGS:I = 0x3a1

.field public static final ACTION_QS_SECONDARY_CLICK:I = 0x39e

.field public static final ACTION_REMOTE_INPUT_CLOSE:I = 0x190

.field public static final ACTION_REMOTE_INPUT_FAIL:I = 0x18f

.field public static final ACTION_REMOTE_INPUT_OPEN:I = 0x18d

.field public static final ACTION_REMOTE_INPUT_SEND:I = 0x18e

.field public static final ACTION_REVEAL_GEAR:I = 0x14c

.field public static final ACTION_RINGER_MODE:I = 0xd5

.field public static final ACTION_ROTATION_LOCK:I = 0xcb

.field public static final ACTION_ROTATION_SUGGESTION_ACCEPTED:I = 0x507

.field public static final ACTION_SAVE_IMPORTANCE:I = 0x123

.field public static final ACTION_SCOPED_DIRECTORY_ACCESS_ALREADY_DENIED_BY_FOLDER:I = 0x161

.field public static final ACTION_SCOPED_DIRECTORY_ACCESS_ALREADY_DENIED_BY_PACKAGE:I = 0x162

.field public static final ACTION_SCOPED_DIRECTORY_ACCESS_ALREADY_GRANTED_BY_FOLDER:I = 0x14a

.field public static final ACTION_SCOPED_DIRECTORY_ACCESS_ALREADY_GRANTED_BY_PACKAGE:I = 0x14b

.field public static final ACTION_SCOPED_DIRECTORY_ACCESS_DENIED_AND_PERSIST_BY_FOLDER:I = 0x163

.field public static final ACTION_SCOPED_DIRECTORY_ACCESS_DENIED_AND_PERSIST_BY_PACKAGE:I = 0x164

.field public static final ACTION_SCOPED_DIRECTORY_ACCESS_DENIED_BY_FOLDER:I = 0x147

.field public static final ACTION_SCOPED_DIRECTORY_ACCESS_DENIED_BY_PACKAGE:I = 0x149

.field public static final ACTION_SCOPED_DIRECTORY_ACCESS_GRANTED_BY_FOLDER:I = 0x146

.field public static final ACTION_SCOPED_DIRECTORY_ACCESS_GRANTED_BY_PACKAGE:I = 0x148

.field public static final ACTION_SCREENSHOT_POWER_MENU:I = 0x502

.field public static final ACTION_SEARCH_RESULTS:I = 0xe2

.field public static final ACTION_SELECT_SUMMARY:I = 0x1dc

.field public static final ACTION_SELECT_SUPPORT_FRAGMENT:I = 0x1dd

.field public static final ACTION_SETTINGS_ADVANCED_BUTTON_EXPAND:I = 0x342

.field public static final ACTION_SETTINGS_BLUETOOTH_CONNECT:I = 0x363

.field public static final ACTION_SETTINGS_BLUETOOTH_CONNECT_ERROR:I = 0x365

.field public static final ACTION_SETTINGS_BLUETOOTH_DISCONNECT:I = 0x364

.field public static final ACTION_SETTINGS_BLUETOOTH_PAIR:I = 0x362

.field public static final ACTION_SETTINGS_BLUETOOTH_PAIR_DEVICES_WITHOUT_NAMES:I = 0x448

.field public static final ACTION_SETTINGS_BUILD_NUMBER_PREF:I = 0x34f

.field public static final ACTION_SETTINGS_CLEAR_APP_CACHE:I = 0x36d

.field public static final ACTION_SETTINGS_CLEAR_APP_DATA:I = 0x36c

.field public static final ACTION_SETTINGS_CLEAR_INSTANT_APP:I = 0x39b

.field public static final ACTION_SETTINGS_CONDITION_BUTTON:I = 0x178

.field public static final ACTION_SETTINGS_CONDITION_CLICK:I = 0x177

.field public static final ACTION_SETTINGS_CONDITION_COLLAPSE:I = 0x176

.field public static final ACTION_SETTINGS_CONDITION_DISMISS:I = 0x174

.field public static final ACTION_SETTINGS_CONDITION_EXPAND:I = 0x175

.field public static final ACTION_SETTINGS_CREATE_SHORTCUT:I = 0x33d

.field public static final ACTION_SETTINGS_DISABLE_APP:I = 0x36a

.field public static final ACTION_SETTINGS_DISMISS_SUGGESTION:I = 0x183

.field public static final ACTION_SETTINGS_ENABLE_APP:I = 0x36b

.field public static final ACTION_SETTINGS_ENROLL_WIFI_QR_CODE:I = 0x6af

.field public static final ACTION_SETTINGS_MASTER_SWITCH_BLUETOOTH_TOGGLE:I = 0x366

.field public static final ACTION_SETTINGS_MENU_BATTERY_APPS_TOGGLE:I = 0x354

.field public static final ACTION_SETTINGS_MENU_BATTERY_OPTIMIZATION:I = 0x353

.field public static final ACTION_SETTINGS_MENU_BATTERY_USAGE_ALERTS:I = 0x352

.field public static final ACTION_SETTINGS_PREFERENCE_CHANGE:I = 0x355

.field public static final ACTION_SETTINGS_SHARE_WIFI_HOTSPOT_QR_CODE:I = 0x6b0

.field public static final ACTION_SETTINGS_SHARE_WIFI_QR_CODE:I = 0x6ae

.field public static final ACTION_SETTINGS_SLICE_CHANGED:I = 0x55c

.field public static final ACTION_SETTINGS_SLICE_REQUESTED:I = 0x55b

.field public static final ACTION_SETTINGS_SMS_MIRRORING:I = 0x43c

.field public static final ACTION_SETTINGS_SUGGESTION:I = 0x182

.field public static final ACTION_SETTINGS_TILE_CLICK:I = 0x33e

.field public static final ACTION_SETTINGS_UNINSTALL_APP:I = 0x368

.field public static final ACTION_SETTINGS_UNINSTALL_DEVICE_ADMIN:I = 0x369

.field public static final ACTION_SETTINGS_UPDATE_DEFAULT_APP:I = 0x3e8

.field public static final ACTION_SETTING_HELP_AND_FEEDBACK:I = 0x201

.field public static final ACTION_SET_NEW_PARENT_PROFILE_PASSWORD:I = 0x66e

.field public static final ACTION_SET_NEW_PASSWORD:I = 0x66d

.field public static final ACTION_SHADE_QS_PULL:I = 0xc2

.field public static final ACTION_SHADE_QS_TAP:I = 0xc3

.field public static final ACTION_SHARESHEET_COLLAPSED_CHANGED:I = 0x673

.field public static final ACTION_SHARE_WITH_PREVIEW:I = 0x674

.field public static final ACTION_SHORTCUTS_CHANGED:I = 0x6b5

.field public static final ACTION_SHOW_APP_DISAMBIG_APP_FEATURED:I = 0x1c3

.field public static final ACTION_SHOW_APP_DISAMBIG_NONE_FEATURED:I = 0x1c5

.field public static final ACTION_SHOW_SETTINGS_SUGGESTION:I = 0x180

.field public static final ACTION_SKIP_DISCLAIMER_SELECTED:I = 0x2f8

.field public static final ACTION_SLOW_IO:I = 0x5a2

.field public static final ACTION_SMART_BATTERY_TIP:I = 0x546

.field public static final ACTION_SPEAKER_IMPEDANCE:I = 0x5a5

.field public static final ACTION_STORAGE_BENCHMARK_FAST_CONTINUE:I = 0x581

.field public static final ACTION_STORAGE_BENCHMARK_SLOW_ABORT:I = 0x583

.field public static final ACTION_STORAGE_BENCHMARK_SLOW_CONTINUE:I = 0x582

.field public static final ACTION_STORAGE_INIT_EXTERNAL:I = 0x57f

.field public static final ACTION_STORAGE_INIT_INTERNAL:I = 0x580

.field public static final ACTION_STORAGE_MIGRATE_LATER:I = 0x585

.field public static final ACTION_STORAGE_MIGRATE_NOW:I = 0x584

.field public static final ACTION_SUMMARY_TIP:I = 0x545

.field public static final ACTION_SUPPORT_CHAT:I = 0x1e2

.field public static final ACTION_SUPPORT_DAIL_TOLLFREE:I = 0x1e5

.field public static final ACTION_SUPPORT_DIAL_TOLLED:I = 0x1e7

.field public static final ACTION_SUPPORT_DISCLAIMER_CANCEL:I = 0x1e3

.field public static final ACTION_SUPPORT_DISCLAIMER_OK:I = 0x1e4

.field public static final ACTION_SUPPORT_HELP_AND_FEEDBACK:I = 0x1df

.field public static final ACTION_SUPPORT_PHONE:I = 0x1e1

.field public static final ACTION_SUPPORT_SIGN_IN:I = 0x1e0

.field public static final ACTION_SUPPORT_TIPS_AND_TRICKS:I = 0x1de

.field public static final ACTION_SUPPORT_VIEW_TRAVEL_ABROAD_DIALOG:I = 0x1e6

.field public static final ACTION_SWITCH_SHARE_PROFILE:I = 0x67d

.field public static final ACTION_SYSTEM_NAVIGATION_KEY_DOWN:I = 0x1ee

.field public static final ACTION_SYSTEM_NAVIGATION_KEY_UP:I = 0x1ed

.field public static final ACTION_TARGET_SELECTED:I = 0x43d

.field public static final ACTION_TEXT_CLASSIFIER_ACTIONS_GENERATED:I = 0x653

.field public static final ACTION_TEXT_CLASSIFIER_ACTIONS_SHOWN:I = 0x650

.field public static final ACTION_TEXT_CLASSIFIER_MANUAL_REPLY:I = 0x652

.field public static final ACTION_TEXT_SELECTION_ABANDON:I = 0x45b

.field public static final ACTION_TEXT_SELECTION_AUTO:I = 0x453

.field public static final ACTION_TEXT_SELECTION_COPY:I = 0x455

.field public static final ACTION_TEXT_SELECTION_CUT:I = 0x457

.field public static final ACTION_TEXT_SELECTION_DRAG:I = 0x45a

.field public static final ACTION_TEXT_SELECTION_MENU_ITEM_ASSIST:I = 0x3a9

.field public static final ACTION_TEXT_SELECTION_MODIFY:I = 0x44e

.field public static final ACTION_TEXT_SELECTION_OTHER:I = 0x45c

.field public static final ACTION_TEXT_SELECTION_OVERTYPE:I = 0x454

.field public static final ACTION_TEXT_SELECTION_PASTE:I = 0x456

.field public static final ACTION_TEXT_SELECTION_RESET:I = 0x450

.field public static final ACTION_TEXT_SELECTION_SELECT_ALL:I = 0x44f

.field public static final ACTION_TEXT_SELECTION_SHARE:I = 0x458

.field public static final ACTION_TEXT_SELECTION_SMART_MULTI:I = 0x452

.field public static final ACTION_TEXT_SELECTION_SMART_SHARE:I = 0x459

.field public static final ACTION_TEXT_SELECTION_SMART_SINGLE:I = 0x451

.field public static final ACTION_TEXT_SELECTION_START:I = 0x44d

.field public static final ACTION_THEME:I = 0x330

.field public static final ACTION_TIP_OPEN_APP_RESTRICTION_PAGE:I = 0x551

.field public static final ACTION_TIP_OPEN_BATTERY_SAVER_PAGE:I = 0x56c

.field public static final ACTION_TIP_OPEN_SMART_BATTERY:I = 0x554

.field public static final ACTION_TIP_RESTRICT_APP:I = 0x552

.field public static final ACTION_TIP_TURN_ON_BATTERY_SAVER:I = 0x555

.field public static final ACTION_TIP_UNRESTRICT_APP:I = 0x553

.field public static final ACTION_TOGGLE_STORAGE_MANAGER:I = 0x1e9

.field public static final ACTION_TOUCH_GEAR:I = 0x14d

.field public static final ACTION_TUNER_CALIBRATE_DISPLAY_CHANGED:I = 0x133

.field public static final ACTION_TUNER_DO_NOT_DISTURB_VOLUME_PANEL:I = 0x13a

.field public static final ACTION_TUNER_DO_NOT_DISTURB_VOLUME_SHORTCUT:I = 0x13b

.field public static final ACTION_TUNER_NIGHT_MODE:I = 0x135

.field public static final ACTION_TUNER_NIGHT_MODE_ADJUST_BRIGHTNESS:I = 0x139

.field public static final ACTION_TUNER_NIGHT_MODE_ADJUST_DARK_THEME:I = 0x137

.field public static final ACTION_TUNER_NIGHT_MODE_ADJUST_TINT:I = 0x138

.field public static final ACTION_TUNER_NIGHT_MODE_AUTO:I = 0x136

.field public static final ACTION_TUNER_POWER_NOTIFICATION_CONTROLS:I = 0x189

.field public static final ACTION_USB_AUDIO_CONNECTED:I = 0x590

.field public static final ACTION_USB_AUDIO_DISCONNECTED:I = 0x592

.field public static final ACTION_USB_CONFIG_ACCESSORY:I = 0x500

.field public static final ACTION_USB_CONFIG_CHARGING:I = 0x4fb

.field public static final ACTION_USB_CONFIG_MIDI:I = 0x4ff

.field public static final ACTION_USB_CONFIG_MTP:I = 0x4fc

.field public static final ACTION_USB_CONFIG_PTP:I = 0x4fd

.field public static final ACTION_USB_CONFIG_RNDIS:I = 0x4fe

.field public static final ACTION_USB_CONNECTOR_CONNECTED:I = 0x58e

.field public static final ACTION_USB_CONNECTOR_DISCONNECTED:I = 0x58f

.field public static final ACTION_VERIFY_SLICE_ERROR_INVALID_DATA:I = 0x6bd

.field public static final ACTION_VERIFY_SLICE_OTHER_EXCEPTION:I = 0x6bf

.field public static final ACTION_VERIFY_SLICE_PARSING_ERROR:I = 0x6be

.field public static final ACTION_VIEW_EMERGENCY_INFO:I = 0x116

.field public static final ACTION_VOLUME_ICON:I = 0xd4

.field public static final ACTION_VOLUME_KEY:I = 0xd3

.field public static final ACTION_VOLUME_RINGER_TOGGLE:I = 0x569

.field public static final ACTION_VOLUME_SETTINGS:I = 0x56a

.field public static final ACTION_VOLUME_SLIDER:I = 0xd1

.field public static final ACTION_VOLUME_STREAM:I = 0xd2

.field public static final ACTION_WIFI_ADD_NETWORK:I = 0x86

.field public static final ACTION_WIFI_AUTO_SIGN_IN:I = 0x4d7

.field public static final ACTION_WIFI_CONNECT:I = 0x87

.field public static final ACTION_WIFI_FORCE_SCAN:I = 0x88

.field public static final ACTION_WIFI_FORGET:I = 0x89

.field public static final ACTION_WIFI_OFF:I = 0x8a

.field public static final ACTION_WIFI_ON:I = 0x8b

.field public static final ACTION_WIFI_SIGNIN:I = 0x3f0

.field public static final ACTION_WIGGLE_CAMERA_GESTURE:I = 0x100

.field public static final ACTION_WINDOW_DOCK_DRAG_DROP:I = 0x10e

.field public static final ACTION_WINDOW_DOCK_LONGPRESS:I = 0x10f

.field public static final ACTION_WINDOW_DOCK_RESIZE:I = 0x185

.field public static final ACTION_WINDOW_DOCK_SWIPE:I = 0x110

.field public static final ACTION_WINDOW_DOCK_UNRESIZABLE:I = 0x187

.field public static final ACTION_WINDOW_UNDOCK_LONGPRESS:I = 0x11e

.field public static final ACTION_WINDOW_UNDOCK_MAX:I = 0x186

.field public static final ACTION_ZEN_ADD_RULE:I = 0xac

.field public static final ACTION_ZEN_ADD_RULE_OK:I = 0xad

.field public static final ACTION_ZEN_ALLOW_ALARMS:I = 0x4ca

.field public static final ACTION_ZEN_ALLOW_CALLS:I = 0xaa

.field public static final ACTION_ZEN_ALLOW_EVENTS:I = 0xa8

.field public static final ACTION_ZEN_ALLOW_LIGHTS:I = 0x108

.field public static final ACTION_ZEN_ALLOW_MEDIA:I = 0x4cb

.field public static final ACTION_ZEN_ALLOW_MESSAGES:I = 0xa9

.field public static final ACTION_ZEN_ALLOW_REMINDERS:I = 0xa7

.field public static final ACTION_ZEN_ALLOW_REPEAT_CALLS:I = 0xab

.field public static final ACTION_ZEN_ALLOW_SYSTEM:I = 0x53c

.field public static final ACTION_ZEN_ALLOW_WHEN_SCREEN_OFF:I = 0x107

.field public static final ACTION_ZEN_ALLOW_WHEN_SCREEN_ON:I = 0x10d

.field public static final ACTION_ZEN_BLOCK_AMBIENT:I = 0x539

.field public static final ACTION_ZEN_BLOCK_BADGE:I = 0x538

.field public static final ACTION_ZEN_BLOCK_FULL_SCREEN_INTENTS:I = 0x534

.field public static final ACTION_ZEN_BLOCK_LIGHT:I = 0x535

.field public static final ACTION_ZEN_BLOCK_NOTIFICATION_LIST:I = 0x53a

.field public static final ACTION_ZEN_BLOCK_PEEK:I = 0x536

.field public static final ACTION_ZEN_BLOCK_STATUS:I = 0x537

.field public static final ACTION_ZEN_CUSTOM:I = 0x577

.field public static final ACTION_ZEN_DELETE_RULE:I = 0xae

.field public static final ACTION_ZEN_DELETE_RULE_OK:I = 0xaf

.field public static final ACTION_ZEN_ENABLE_RULE:I = 0xb0

.field public static final ACTION_ZEN_MODE_RULE_NAME_CHANGE_OK:I = 0x4f3

.field public static final ACTION_ZEN_ONBOARDING_KEEP_CURRENT_SETTINGS:I = 0x57e

.field public static final ACTION_ZEN_ONBOARDING_OK:I = 0x562

.field public static final ACTION_ZEN_ONBOARDING_SCREEN_OFF:I = 0x561

.field public static final ACTION_ZEN_ONBOARDING_SCREEN_ON:I = 0x560

.field public static final ACTION_ZEN_ONBOARDING_SETTINGS:I = 0x563

.field public static final ACTION_ZEN_SHOW_CUSTOM:I = 0x576

.field public static final ACTION_ZEN_SOUND_AND_VIS_EFFECTS:I = 0x575

.field public static final ACTION_ZEN_SOUND_ONLY:I = 0x574

.field public static final ACTION_ZEN_TOGGLE_DND_BUTTON:I = 0x4f4

.field public static final ADJUSTMENT_KEY_GROUP_KEY:I = 0x628

.field public static final ADJUSTMENT_KEY_IMPORTANCE:I = 0x62c

.field public static final ADJUSTMENT_KEY_PEOPLE:I = 0x626

.field public static final ADJUSTMENT_KEY_SMART_ACTIONS:I = 0x62a

.field public static final ADJUSTMENT_KEY_SMART_REPLIES:I = 0x62b

.field public static final ADJUSTMENT_KEY_SNOOZE_CRITERIA:I = 0x627

.field public static final ADJUSTMENT_KEY_USER_SENTIMENT:I = 0x629

.field public static final ALERT_BEEP:I = 0x2

.field public static final ALERT_BLINK:I = 0x4

.field public static final ALERT_BUZZ:I = 0x1

.field public static final AMBIENT_DISPLAY_SETTINGS:I = 0x3eb

.field public static final ANOMALY_TYPE_UNOPTIMIZED_BT:I = 0x4d5

.field public static final ANOMALY_TYPE_WAKELOCK:I = 0x4d3

.field public static final ANOMALY_TYPE_WAKEUP_ALARM:I = 0x4d4

.field public static final APN:I = 0xc

.field public static final APN_EDITOR:I = 0xd

.field public static final APPLICATION:I = 0x10

.field public static final APPLICATIONS_ADVANCED:I = 0x82

.field public static final APPLICATIONS_APP_LAUNCH:I = 0x11

.field public static final APPLICATIONS_APP_PERMISSION:I = 0x12

.field public static final APPLICATIONS_APP_STORAGE:I = 0x13

.field public static final APPLICATIONS_DEFAULT_APPS:I = 0xb5

.field public static final APPLICATIONS_DIRECTORY_ACCESS_DETAIL:I = 0x504

.field public static final APPLICATIONS_HIGH_POWER_APPS:I = 0xb8

.field public static final APPLICATIONS_INSTALLED_APP_DETAILS:I = 0x14

.field public static final APPLICATIONS_MANAGE_ASSIST:I = 0xc9

.field public static final APPLICATIONS_PROCESS_STATS_DETAIL:I = 0x15

.field public static final APPLICATIONS_PROCESS_STATS_MEM_DETAIL:I = 0x16

.field public static final APPLICATIONS_PROCESS_STATS_UI:I = 0x17

.field public static final APPLICATIONS_STORAGE_APPS:I = 0xb6

.field public static final APPLICATIONS_STORAGE_GAMES:I = 0x346

.field public static final APPLICATIONS_STORAGE_MOVIES:I = 0x3a7

.field public static final APPLICATIONS_STORAGE_MUSIC:I = 0x347

.field public static final APPLICATIONS_STORAGE_PHOTOS:I = 0x444

.field public static final APPLICATIONS_USAGE_ACCESS_DETAIL:I = 0xb7

.field public static final APP_BUBBLE_SETTINGS:I = 0x6a4

.field public static final APP_DATA_USAGE:I = 0x157

.field public static final APP_OPS_DETAILS:I = 0xe

.field public static final APP_OPS_GUTS:I = 0x541

.field public static final APP_OPS_SUMMARY:I = 0xf

.field public static final APP_PICTURE_IN_PICTURE_ALLOW:I = 0x32d

.field public static final APP_PICTURE_IN_PICTURE_DENY:I = 0x32e

.field public static final APP_SPECIAL_PERMISSION_ADMIN_ALLOW:I = 0x2fe

.field public static final APP_SPECIAL_PERMISSION_ADMIN_DENY:I = 0x2ff

.field public static final APP_SPECIAL_PERMISSION_APPDRAW_ALLOW:I = 0x302

.field public static final APP_SPECIAL_PERMISSION_APPDRAW_DENY:I = 0x303

.field public static final APP_SPECIAL_PERMISSION_BATTERY_ALLOW:I = 0x2fc

.field public static final APP_SPECIAL_PERMISSION_BATTERY_DENY:I = 0x2fd

.field public static final APP_SPECIAL_PERMISSION_DND_ALLOW:I = 0x300

.field public static final APP_SPECIAL_PERMISSION_DND_DENY:I = 0x301

.field public static final APP_SPECIAL_PERMISSION_NOTIVIEW_ALLOW:I = 0x308

.field public static final APP_SPECIAL_PERMISSION_NOTIVIEW_DENY:I = 0x309

.field public static final APP_SPECIAL_PERMISSION_PREMIUM_SMS_ALWAYS_ALLOW:I = 0x30c

.field public static final APP_SPECIAL_PERMISSION_PREMIUM_SMS_ASK:I = 0x30a

.field public static final APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY:I = 0x30b

.field public static final APP_SPECIAL_PERMISSION_SETTINGS_CHANGE_ALLOW:I = 0x306

.field public static final APP_SPECIAL_PERMISSION_SETTINGS_CHANGE_DENY:I = 0x307

.field public static final APP_SPECIAL_PERMISSION_UNL_DATA_ALLOW:I = 0x30d

.field public static final APP_SPECIAL_PERMISSION_UNL_DATA_DENY:I = 0x30e

.field public static final APP_SPECIAL_PERMISSION_USAGE_VIEW_ALLOW:I = 0x30f

.field public static final APP_SPECIAL_PERMISSION_USAGE_VIEW_DENY:I = 0x310

.field public static final APP_SPECIAL_PERMISSION_VRHELPER_ALLOW:I = 0x304

.field public static final APP_SPECIAL_PERMISSION_VRHELPER_DENY:I = 0x305

.field public static final APP_TRANSITION:I = 0x2f9

.field public static final APP_TRANSITION_BIND_APPLICATION_DELAY_MS:I = 0x3b1

.field public static final APP_TRANSITION_CALLING_PACKAGE_NAME:I = 0x388

.field public static final APP_TRANSITION_CANCELLED:I = 0x478

.field public static final APP_TRANSITION_COMPONENT_NAME:I = 0x143

.field public static final APP_TRANSITION_DELAY_MS:I = 0x13f

.field public static final APP_TRANSITION_DEVICE_UPTIME_SECONDS:I = 0x145

.field public static final APP_TRANSITION_IS_EPHEMERAL:I = 0x389

.field public static final APP_TRANSITION_PROCESS_RUNNING:I = 0x144

.field public static final APP_TRANSITION_REASON:I = 0x140

.field public static final APP_TRANSITION_REPORTED_DRAWN:I = 0x442

.field public static final APP_TRANSITION_REPORTED_DRAWN_MS:I = 0x443

.field public static final APP_TRANSITION_STARTING_WINDOW_DELAY_MS:I = 0x141

.field public static final APP_TRANSITION_WINDOWS_DRAWN_DELAY_MS:I = 0x142

.field public static final ASSISTANT:I = 0x6b4

.field public static final ASSIST_GESTURE_PRIMED:I = 0x3e6

.field public static final ASSIST_GESTURE_RELEASED:I = 0x3e5

.field public static final ASSIST_GESTURE_TRIGGERED:I = 0x3e7

.field public static final AUTOFILL_AUGMENTED_REQUEST:I = 0x65e

.field public static final AUTOFILL_AUGMENTED_RESPONSE:I = 0x6bc

.field public static final AUTOFILL_AUGMENTED_WHITELIST_REQUEST:I = 0x6b9

.field public static final AUTOFILL_AUTHENTICATED:I = 0x390

.field public static final AUTOFILL_DATASET_APPLIED:I = 0x391

.field public static final AUTOFILL_DATASET_AUTHENTICATED:I = 0x466

.field public static final AUTOFILL_DATA_SAVE_REQUEST:I = 0x396

.field public static final AUTOFILL_EXPLICIT_SAVE_TRIGGER_DEFINITION:I = 0x4cc

.field public static final AUTOFILL_FIELD_CLASSIFICATION_MATCHES:I = 0x4f9

.field public static final AUTOFILL_FILL_UI:I = 0x38e

.field public static final AUTOFILL_FORGED_COMPONENT_ATTEMPT:I = 0x3b4

.field public static final AUTOFILL_INVALID_AUTHENTICATION:I = 0x468

.field public static final AUTOFILL_INVALID_DATASET_AUTHENTICATION:I = 0x467

.field public static final AUTOFILL_INVALID_PERMISSION:I = 0x509

.field public static final AUTOFILL_PENDING_SAVE_UI_OPERATION:I = 0x46e

.field public static final AUTOFILL_REQUEST:I = 0x38b

.field public static final AUTOFILL_SAVE_CUSTOM_DESCRIPTION:I = 0x469

.field public static final AUTOFILL_SAVE_CUSTOM_SUBTITLE:I = 0x46b

.field public static final AUTOFILL_SAVE_EXPLICITLY_TRIGGERED:I = 0x4cd

.field public static final AUTOFILL_SAVE_LINK_TAPPED:I = 0x46c

.field public static final AUTOFILL_SAVE_UI:I = 0x394

.field public static final AUTOFILL_SAVE_VALIDATION:I = 0x46d

.field public static final AUTOFILL_SERVICE_DISABLED_ACTIVITY:I = 0x4d0

.field public static final AUTOFILL_SERVICE_DISABLED_APP:I = 0x4cf

.field public static final AUTOFILL_SERVICE_DISABLED_SELF:I = 0x46f

.field public static final AUTOFILL_SESSION_FINISHED:I = 0x397

.field public static final AUTOFILL_SESSION_STARTED:I = 0x38a

.field public static final AUTOFILL_UI_LATENCY:I = 0x470

.field public static final AUTOFILL_USERDATA_UPDATED:I = 0x4f8

.field public static final AUTOFILL_VALUE_RESET:I = 0x464

.field public static final BACKGROUND_CHECK_SUMMARY:I = 0x102

.field public static final BACKUP_SETTINGS:I = 0x332

.field public static final BATTERY_SAVER:I = 0x516

.field public static final BILLING_CYCLE:I = 0x156

.field public static final BIOMETRIC_AUTH:I = 0x6a1

.field public static final BIOMETRIC_ENROLL_ACTIVITY:I = 0x632

.field public static final BIOMETRIC_FRAGMENT:I = 0x631

.field public static final BLOCKING_HELPER_CLICK_ALERT_ME:I = 0x6

.field public static final BLOCKING_HELPER_CLICK_BLOCKED:I = 0x4

.field public static final BLOCKING_HELPER_CLICK_STAY_SILENT:I = 0x5

.field public static final BLOCKING_HELPER_CLICK_UNDO:I = 0x7

.field public static final BLOCKING_HELPER_DISMISS:I = 0x2

.field public static final BLOCKING_HELPER_DISPLAY:I = 0x1

.field public static final BLOCKING_HELPER_TRIGGERED_BY_SYSTEM:I = 0x3

.field public static final BLOCKING_HELPER_UNKNOWN:I = 0x0

.field public static final BLUETOOTH:I = 0x18

.field public static final BLUETOOTH_DEVICE_DETAILS:I = 0x3f1

.field public static final BLUETOOTH_DEVICE_PICKER:I = 0x19

.field public static final BLUETOOTH_DEVICE_PROFILES:I = 0x1a

.field public static final BLUETOOTH_DIALOG_FRAGMENT:I = 0x265

.field public static final BLUETOOTH_FRAGMENT:I = 0x56e

.field public static final BLUETOOTH_PAIRING:I = 0x3fa

.field public static final BOUNCER:I = 0xc5

.field public static final BRIGHTNESS_DIALOG:I = 0xdc

.field public static final BUBBLE_SETTINGS:I = 0x6a3

.field public static final CAMERA_BACK_USED:I = 0x0

.field public static final CAMERA_EXTERNAL_USED:I = 0x2

.field public static final CAMERA_FRONT_USED:I = 0x1

.field public static final CAPTIVE_PORTAL_LOGIN_ACTIVITY_SSL_ERROR:I = 0x3f5

.field public static final CARRIER_DEMO_MODE_PASSWORD:I = 0x33c

.field public static final CHOOSE_LOCK_GENERIC:I = 0x1b

.field public static final CHOOSE_LOCK_PASSWORD:I = 0x1c

.field public static final CHOOSE_LOCK_PATTERN:I = 0x1d

.field public static final COLOR_MODE_SETTINGS:I = 0x477

.field public static final CONFIGURE_KEYGUARD_DIALOG:I = 0x3f2

.field public static final CONFIGURE_NOTIFICATION:I = 0x151

.field public static final CONFIGURE_WIFI:I = 0x152

.field public static final CONFIRM_LOCK_PASSWORD:I = 0x1e

.field public static final CONFIRM_LOCK_PATTERN:I = 0x1f

.field public static final CONNECTION_DEVICE_ADVANCED:I = 0x4f0

.field public static final CONVERSATION_ACTIONS:I = 0x64f

.field public static final CONVERT_FBE:I = 0x192

.field public static final CONVERT_FBE_CONFIRM:I = 0x193

.field public static final CRYPT_KEEPER:I = 0x20

.field public static final CRYPT_KEEPER_CONFIRM:I = 0x21

.field public static final DARK_UI_SETTINGS:I = 0x6a2

.field public static final DASHBOARD_CONTAINER:I = 0x1da

.field public static final DASHBOARD_SEARCH_RESULTS:I = 0x22

.field public static final DASHBOARD_SUMMARY:I = 0x23

.field public static final DATA_PLAN_USAGE_SUMMARY:I = 0x440

.field public static final DATA_SAVER_SUMMARY:I = 0x15c

.field public static final DATA_USAGE:I = 0x24

.field public static final DATA_USAGE_LIST:I = 0x155

.field public static final DATA_USAGE_SUMMARY:I = 0x25

.field public static final DATA_USAGE_UNRESTRICTED_ACCESS:I = 0x15d

.field public static final DATE_TIME:I = 0x26

.field public static final DEFAULT_APP_PICKER_CONFIRMATION_DIALOG:I = 0x317

.field public static final DEFAULT_ASSIST_PICKER:I = 0x34b

.field public static final DEFAULT_AUTOFILL_PICKER:I = 0x318

.field public static final DEFAULT_BROWSER_PICKER:I = 0x311

.field public static final DEFAULT_EMERGENCY_APP_PICKER:I = 0x312

.field public static final DEFAULT_HOME_PICKER:I = 0x313

.field public static final DEFAULT_NOTIFICATION_ASSISTANT:I = 0x316

.field public static final DEFAULT_PHONE_PICKER:I = 0x314

.field public static final DEFAULT_SMS_PICKER:I = 0x315

.field public static final DEFAULT_VOICE_INPUT_PICKER:I = 0x34c

.field public static final DEVELOPMENT:I = 0x27

.field public static final DEVELOPMENT_QS_TILE_CONFIG:I = 0x4c8

.field public static final DEVICEINFO:I = 0x28

.field public static final DEVICEINFO_IMEI_INFORMATION:I = 0x29

.field public static final DEVICEINFO_SIM_STATUS:I = 0x2b

.field public static final DEVICEINFO_STATUS:I = 0x2c

.field public static final DEVICEINFO_STORAGE:I = 0x2a

.field public static final DEVICEINFO_USB:I = 0x2d

.field public static final DEVICE_ADMIN_SETTINGS:I = 0x204

.field public static final DIALOG_ACCESSIBILITY_HEARINGAID:I = 0x5e8

.field public static final DIALOG_ACCESSIBILITY_SERVICE_DISABLE:I = 0x248

.field public static final DIALOG_ACCESSIBILITY_SERVICE_ENABLE:I = 0x247

.field public static final DIALOG_ACCOUNT_SYNC_CANNOT_ONETIME_SYNC:I = 0x24b

.field public static final DIALOG_ACCOUNT_SYNC_FAILED_REMOVAL:I = 0x24a

.field public static final DIALOG_ACCOUNT_SYNC_REMOVE:I = 0x249

.field public static final DIALOG_APN_EDITOR_ERROR:I = 0x212

.field public static final DIALOG_APN_RESTORE_DEFAULT:I = 0x243

.field public static final DIALOG_APP_BUBBLE_SETTINGS:I = 0x6a6

.field public static final DIALOG_APP_INFO_ACTION:I = 0x22e

.field public static final DIALOG_AP_SETTINGS:I = 0x246

.field public static final DIALOG_AWARE_DISABLE:I = 0x661

.field public static final DIALOG_AWARE_STATUS:I = 0x6a5

.field public static final DIALOG_BILLING_BYTE_LIMIT:I = 0x226

.field public static final DIALOG_BILLING_CONFIRM_LIMIT:I = 0x227

.field public static final DIALOG_BILLING_CYCLE:I = 0x225

.field public static final DIALOG_BLUETOOTH_DISABLE_A2DP_HW_OFFLOAD:I = 0x5a1

.field public static final DIALOG_BLUETOOTH_PAIRED_DEVICE_FORGET:I = 0x407

.field public static final DIALOG_BLUETOOTH_PAIRED_DEVICE_PROFILE:I = 0x21b

.field public static final DIALOG_BLUETOOTH_PAIRED_DEVICE_RENAME:I = 0x3f7

.field public static final DIALOG_BLUETOOTH_RENAME:I = 0x21a

.field public static final DIALOG_CALL_SIM_LIST:I = 0x6ac

.field public static final DIALOG_CLEAR_ADB_KEYS:I = 0x4c7

.field public static final DIALOG_CONFIRM_AUTO_SYNC_CHANGE:I = 0x217

.field public static final DIALOG_CUSTOM_LIST_CONFIRMATION:I = 0x211

.field public static final DIALOG_DARK_UI_INFO:I = 0x6cc

.field public static final DIALOG_DATE_PICKER:I = 0x25f

.field public static final DIALOG_DELETE_SIM_CONFIRMATION:I = 0x6b1

.field public static final DIALOG_DELETE_SIM_PROGRESS:I = 0x6b2

.field public static final DIALOG_DISABLE_DEVELOPMENT_OPTIONS:I = 0x637

.field public static final DIALOG_DISABLE_NOTIFICATION_ACCESS:I = 0x228

.field public static final DIALOG_DREAM_START_DELAY:I = 0x244

.field public static final DIALOG_ENABLE_ADB:I = 0x4c6

.field public static final DIALOG_ENABLE_DEVELOPMENT_OPTIONS:I = 0x4c3

.field public static final DIALOG_ENABLE_OEM_UNLOCKING:I = 0x4c4

.field public static final DIALOG_ENCRYPTION_INTERSTITIAL_ACCESSIBILITY:I = 0x245

.field public static final DIALOG_FACE_ERROR:I = 0x5e6

.field public static final DIALOG_FACE_REMOVE:I = 0x69d

.field public static final DIALOG_FINGERPINT_DELETE_LAST:I = 0x23b

.field public static final DIALOG_FINGERPINT_EDIT:I = 0x23a

.field public static final DIALOG_FINGERPINT_ERROR:I = 0x239

.field public static final DIALOG_FINGERPRINT_CANCEL_SETUP:I = 0x23c

.field public static final DIALOG_FINGERPRINT_ICON_TOUCH:I = 0x238

.field public static final DIALOG_FINGERPRINT_SKIP_SETUP:I = 0x23d

.field public static final DIALOG_FIRMWARE_VERSION:I = 0x4df

.field public static final DIALOG_FRP:I = 0x210

.field public static final DIALOG_HANDLE_ANOMALY:I = 0x3dc

.field public static final DIALOG_HIGH_POWER_DETAILS:I = 0x21c

.field public static final DIALOG_IMEI_INFO:I = 0x4d8

.field public static final DIALOG_KEYBOARD_LAYOUT:I = 0x21d

.field public static final DIALOG_LEGACY_VPN_CONFIG:I = 0x221

.field public static final DIALOG_LOG_PERSIST:I = 0x4c9

.field public static final DIALOG_MANAGE_MOBILE_PLAN:I = 0x261

.field public static final DIALOG_NIGHT_DISPLAY_SET_END_TIME:I = 0x24d

.field public static final DIALOG_NIGHT_DISPLAY_SET_START_TIME:I = 0x24c

.field public static final DIALOG_NO_HOME:I = 0x219

.field public static final DIALOG_OEM_LOCK_INFO:I = 0x4d6

.field public static final DIALOG_OWNER_INFO_SETTINGS:I = 0x213

.field public static final DIALOG_PREFERRED_SIM_PICKER:I = 0x6ad

.field public static final DIALOG_PRIVATE_DNS:I = 0x4e0

.field public static final DIALOG_PROXY_SELECTOR_ERROR:I = 0x23e

.field public static final DIALOG_REMOVE_USER:I = 0x216

.field public static final DIALOG_RUNNIGN_SERVICE:I = 0x218

.field public static final DIALOG_SERVICE_ACCESS_WARNING:I = 0x22d

.field public static final DIALOG_SETTINGS_HARDWARE_INFO:I = 0x35e

.field public static final DIALOG_SIM_LIST:I = 0x6ab

.field public static final DIALOG_SIM_STATUS:I = 0x4de

.field public static final DIALOG_STORAGE_CLEAR_CACHE:I = 0x234

.field public static final DIALOG_STORAGE_OTHER_INFO:I = 0x236

.field public static final DIALOG_STORAGE_SYSTEM_INFO:I = 0x235

.field public static final DIALOG_STORAGE_USER_INFO:I = 0x237

.field public static final DIALOG_SUPPORT_DISCLAIMER:I = 0x20e

.field public static final DIALOG_SUPPORT_PHONE:I = 0x20f

.field public static final DIALOG_SUPPORT_SYSTEM_INFORMATION:I = 0x2f4

.field public static final DIALOG_SWITCH_A2DP_DEVICES:I = 0x587

.field public static final DIALOG_SWITCH_HFP_DEVICES:I = 0x588

.field public static final DIALOG_TIME_PICKER:I = 0x260

.field public static final DIALOG_TV_NETWORK_PROXY:I = 0x515

.field public static final DIALOG_UNIFICATION_CONFIRMATION:I = 0x214

.field public static final DIALOG_UNIFY_SOUND_SETTINGS:I = 0x229

.field public static final DIALOG_USER_ADD:I = 0x253

.field public static final DIALOG_USER_CANNOT_MANAGE:I = 0x252

.field public static final DIALOG_USER_CHOOSE_TYPE:I = 0x256

.field public static final DIALOG_USER_CONFIRM_EXIT_GUEST:I = 0x258

.field public static final DIALOG_USER_CREDENTIAL:I = 0x215

.field public static final DIALOG_USER_EDIT:I = 0x24e

.field public static final DIALOG_USER_EDIT_PROFILE:I = 0x259

.field public static final DIALOG_USER_ENABLE_CALLING:I = 0x250

.field public static final DIALOG_USER_ENABLE_CALLING_AND_SMS:I = 0x251

.field public static final DIALOG_USER_NEED_LOCKSCREEN:I = 0x257

.field public static final DIALOG_USER_REMOVE:I = 0x24f

.field public static final DIALOG_USER_SETUP:I = 0x254

.field public static final DIALOG_USER_SETUP_PROFILE:I = 0x255

.field public static final DIALOG_VOLUME_FORGET:I = 0x22f

.field public static final DIALOG_VOLUME_FORMAT:I = 0x55f

.field public static final DIALOG_VOLUME_INIT:I = 0x231

.field public static final DIALOG_VOLUME_RENAME:I = 0x233

.field public static final DIALOG_VOLUME_SLOW_WARNING:I = 0x230

.field public static final DIALOG_VOLUME_UNMOUNT:I = 0x232

.field public static final DIALOG_VPN_APP_CONFIG:I = 0x222

.field public static final DIALOG_VPN_CANNOT_CONNECT:I = 0x223

.field public static final DIALOG_VPN_REPLACE_EXISTING:I = 0x224

.field public static final DIALOG_WIFI_AP_EDIT:I = 0x25b

.field public static final DIALOG_WIFI_P2P_CANCEL_CONNECT:I = 0x240

.field public static final DIALOG_WIFI_P2P_DELETE_GROUP:I = 0x242

.field public static final DIALOG_WIFI_P2P_DISCONNECT:I = 0x23f

.field public static final DIALOG_WIFI_P2P_RENAME:I = 0x241

.field public static final DIALOG_WIFI_PBC:I = 0x25c

.field public static final DIALOG_WIFI_PIN:I = 0x25d

.field public static final DIALOG_WIFI_SAVED_AP_EDIT:I = 0x25a

.field public static final DIALOG_WIFI_SCAN_MODE:I = 0x21f

.field public static final DIALOG_WIFI_SKIP:I = 0x220

.field public static final DIALOG_WIFI_WRITE_NFC:I = 0x25e

.field public static final DIALOG_WPS_SETUP:I = 0x21e

.field public static final DIALOG_ZEN_ACCESS_GRANT:I = 0x22a

.field public static final DIALOG_ZEN_ACCESS_REVOKE:I = 0x22b

.field public static final DIALOG_ZEN_TIMEPICKER:I = 0x22c

.field public static final DIRECTORY_ACCESS:I = 0x503

.field public static final DISPLAY:I = 0x2e

.field public static final DISPLAY_POLICY:I = 0x6a0

.field public static final DISPLAY_SCREEN_ZOOM:I = 0x153

.field public static final DOZING:I = 0xdf

.field public static final DREAM:I = 0x2f

.field public static final DREAMING:I = 0xde

.field public static final EMERGENCY_DIALER:I = 0x616

.field public static final EMERGENCY_DIALER_CALL_RESULT:I = 0x6c2

.field public static final EMERGENCY_DIALER_MAKE_CALL:I = 0x61a

.field public static final EMERGENCY_DIALER_MAKE_CALL_V2:I = 0x6c1

.field public static final EMERGENCY_DIALER_SHORTCUT_CONFIRM_TAP:I = 0x61e

.field public static final ENABLE_VIRTUAL_KEYBOARDS:I = 0x15b

.field public static final ENCRYPTION:I = 0x30

.field public static final ENCRYPTION_AND_CREDENTIAL:I = 0x34e

.field public static final ENTERPRISE_PRIVACY_DEFAULT_APPS:I = 0x3ac

.field public static final ENTERPRISE_PRIVACY_INSTALLED_APPS:I = 0x3aa

.field public static final ENTERPRISE_PRIVACY_PERMISSIONS:I = 0x3ab

.field public static final ENTERPRISE_PRIVACY_SETTINGS:I = 0x274

.field public static final FACE:I = 0x5e7

.field public static final FACE_ENROLL_ENROLLING:I = 0x5e3

.field public static final FACE_ENROLL_FINISHED:I = 0x5e4

.field public static final FACE_ENROLL_INTRO:I = 0x5e2

.field public static final FACE_ENROLL_PREVIEW:I = 0x612

.field public static final FACE_ENROLL_SIDECAR:I = 0x5e5

.field public static final FIELD_ACCEL_MILLI_G:I = 0x598

.field public static final FIELD_ACTIVITY_RECORD_FLAGS:I = 0x606

.field public static final FIELD_ACTIVITY_RECORD_IS_FULLSCREEN:I = 0x60a

.field public static final FIELD_ACTIVITY_RECORD_IS_NO_DISPLAY:I = 0x60b

.field public static final FIELD_ACTIVITY_RECORD_IS_VISIBLE:I = 0x60f

.field public static final FIELD_ACTIVITY_RECORD_IS_VISIBLE_IGNORING_KEYGUARD:I = 0x610

.field public static final FIELD_ACTIVITY_RECORD_LAUNCH_MODE:I = 0x604

.field public static final FIELD_ACTIVITY_RECORD_MILLIS_SINCE_LAST_LAUNCH:I = 0x611

.field public static final FIELD_ACTIVITY_RECORD_MILLIS_SINCE_LAST_VISIBLE:I = 0x60c

.field public static final FIELD_ACTIVITY_RECORD_PROCESS_NAME:I = 0x609

.field public static final FIELD_ACTIVITY_RECORD_REAL_ACTIVITY:I = 0x607

.field public static final FIELD_ACTIVITY_RECORD_RESULT_TO_PKG_NAME:I = 0x60d

.field public static final FIELD_ACTIVITY_RECORD_RESULT_TO_SHORT_COMPONENT_NAME:I = 0x60e

.field public static final FIELD_ACTIVITY_RECORD_SHORT_COMPONENT_NAME:I = 0x608

.field public static final FIELD_ACTIVITY_RECORD_TARGET_ACTIVITY:I = 0x605

.field public static final FIELD_ANOMALY_ACTION_TYPE:I = 0x4d2

.field public static final FIELD_ANOMALY_TYPE:I = 0x556

.field public static final FIELD_APP_VERSION_CODE:I = 0x56d

.field public static final FIELD_AUTOFILL_AUGMENTED_ONLY:I = 0x6b8

.field public static final FIELD_AUTOFILL_AUTHENTICATION_STATUS:I = 0x5ad

.field public static final FIELD_AUTOFILL_COMPAT_MODE:I = 0x586

.field public static final FIELD_AUTOFILL_DURATION:I = 0x479

.field public static final FIELD_AUTOFILL_FILTERTEXT_LEN:I = 0x38f

.field public static final FIELD_AUTOFILL_FLAGS:I = 0x5ac

.field public static final FIELD_AUTOFILL_FORGED_COMPONENT_NAME:I = 0x3b5

.field public static final FIELD_AUTOFILL_MATCH_SCORE:I = 0x4fa

.field public static final FIELD_AUTOFILL_NUMBER_ACTIVITIES:I = 0x6bb

.field public static final FIELD_AUTOFILL_NUMBER_AUGMENTED_REQUESTS:I = 0x65f

.field public static final FIELD_AUTOFILL_NUMBER_PACKAGES:I = 0x6ba

.field public static final FIELD_AUTOFILL_NUMBER_REQUESTS:I = 0x5af

.field public static final FIELD_AUTOFILL_NUM_DATASETS:I = 0x38d

.field public static final FIELD_AUTOFILL_NUM_FIELD_CLASSIFICATION_IDS:I = 0x4f7

.field public static final FIELD_AUTOFILL_NUM_IDS:I = 0x395

.field public static final FIELD_AUTOFILL_NUM_VALUES:I = 0x392

.field public static final FIELD_AUTOFILL_NUM_VIEWS_FILLED:I = 0x393

.field public static final FIELD_AUTOFILL_PREVIOUS_LENGTH:I = 0x465

.field public static final FIELD_AUTOFILL_REQUEST_ORDINAL:I = 0x5ae

.field public static final FIELD_AUTOFILL_SAVE_TYPE:I = 0x46a

.field public static final FIELD_AUTOFILL_SERVICE:I = 0x38c

.field public static final FIELD_AUTOFILL_SESSION_ID:I = 0x5b0

.field public static final FIELD_AUTOFILL_TEXT_LEN:I = 0x624

.field public static final FIELD_AUTOFILL_UPDATE:I = 0x613

.field public static final FIELD_BATTERY_CHARGE_CYCLES:I = 0x59f

.field public static final FIELD_BATTERY_CURRENT_UA:I = 0x5a9

.field public static final FIELD_BATTERY_HEALTH_SNAPSHOT_TYPE:I = 0x59a

.field public static final FIELD_BATTERY_LEVEL_END:I = 0x58b

.field public static final FIELD_BATTERY_LEVEL_START:I = 0x58a

.field public static final FIELD_BATTERY_OPEN_CIRCUIT_VOLTAGE_UV:I = 0x59d

.field public static final FIELD_BATTERY_RESISTANCE_UOHMS:I = 0x5a8

.field public static final FIELD_BATTERY_TEMPERATURE_DECI_C:I = 0x59b

.field public static final FIELD_BATTERY_VOLTAGE_UV:I = 0x59c

.field public static final FIELD_BIOMETRIC_AUTH_ERROR:I = 0x6cd

.field public static final FIELD_CALLING_PACKAGE_NAME:I = 0x5eb

.field public static final FIELD_CALLING_UID:I = 0x5ea

.field public static final FIELD_CALLING_UID_HAS_ANY_VISIBLE_WINDOW:I = 0x5ed

.field public static final FIELD_CALLING_UID_PROC_STATE:I = 0x5ec

.field public static final FIELD_CAMERA_API_LEVEL:I = 0x52a

.field public static final FIELD_CHARGING_DURATION_MILLIS:I = 0x58c

.field public static final FIELD_CLASS_NAME:I = 0x367

.field public static final FIELD_COMING_FROM_PENDING_INTENT:I = 0x5f7

.field public static final FIELD_CONFIDENCE_PERCENT:I = 0x597

.field public static final FIELD_CONTEXT:I = 0x341

.field public static final FIELD_DEVICE_ROTATION:I = 0x531

.field public static final FIELD_DISPLAY_ID:I = 0x67c

.field public static final FIELD_DURATION_MILLIS:I = 0x518

.field public static final FIELD_EMERGENCY_DIALER_DISCONNECT_CAUSE:I = 0x6cb

.field public static final FIELD_EMERGENCY_DIALER_DISCONNECT_TIME:I = 0x6ca

.field public static final FIELD_EMERGENCY_DIALER_DURATION_MS:I = 0x619

.field public static final FIELD_EMERGENCY_DIALER_IN_POCKET:I = 0x61d

.field public static final FIELD_EMERGENCY_DIALER_IS_DEVICE_LOCKED:I = 0x6c5

.field public static final FIELD_EMERGENCY_DIALER_IS_SCREEN_LOCKED:I = 0x617

.field public static final FIELD_EMERGENCY_DIALER_LAUNCH_FROM:I = 0x6c3

.field public static final FIELD_EMERGENCY_DIALER_NETWORK_COUNTRY_ISO:I = 0x6c6

.field public static final FIELD_EMERGENCY_DIALER_NETWORK_OPERATOR:I = 0x6c7

.field public static final FIELD_EMERGENCY_DIALER_PHONE_NUMBER_HAS_SHORTCUT:I = 0x61c

.field public static final FIELD_EMERGENCY_DIALER_PHONE_NUMBER_TYPE:I = 0x61b

.field public static final FIELD_EMERGENCY_DIALER_RADIO_VERSION:I = 0x6c8

.field public static final FIELD_EMERGENCY_DIALER_RESPONSE_TIME:I = 0x6c9

.field public static final FIELD_EMERGENCY_DIALER_SHORTCUT_TAPS_INTERVAL:I = 0x61f

.field public static final FIELD_EMERGENCY_DIALER_UI_MODE_ERROR_CODE:I = 0x6c4

.field public static final FIELD_EMERGENCY_DIALER_USER_ACTIONS:I = 0x618

.field public static final FIELD_END_BATTERY_PERCENT:I = 0x51c

.field public static final FIELD_END_BATTERY_UA:I = 0x51a

.field public static final FIELD_FLAGS:I = 0x3a4

.field public static final FIELD_GESTURE_LENGTH:I = 0x33a

.field public static final FIELD_GESTURE_VELOCITY:I = 0x33b

.field public static final FIELD_GESTURE_X_PERCENT:I = 0x52e

.field public static final FIELD_GESTURE_Y_PERCENT:I = 0x52f

.field public static final FIELD_HARDWARE_FAILURE_CODE:I = 0x595

.field public static final FIELD_HARDWARE_LOCATION:I = 0x5aa

.field public static final FIELD_HARDWARE_TYPE:I = 0x594

.field public static final FIELD_HASHED_TARGET_NAME:I = 0x6a8

.field public static final FIELD_HASHED_TARGET_SALT_GEN:I = 0x6a9

.field public static final FIELD_HIDDEN_API_ACCESS_DENIED:I = 0x571

.field public static final FIELD_HIDDEN_API_ACCESS_METHOD:I = 0x570

.field public static final FIELD_HIDDEN_API_SIGNATURE:I = 0x572

.field public static final FIELD_INSTANT_APP_LAUNCH_TOKEN:I = 0x387

.field public static final FIELD_INSTANT_APP_RESOLUTION_DELAY_MS:I = 0x385

.field public static final FIELD_INSTANT_APP_RESOLUTION_STATUS:I = 0x386

.field public static final FIELD_INTENT_ACTION:I = 0x5f8

.field public static final FIELD_INTERACTIVE:I = 0x517

.field public static final FIELD_IO_OPERATION_COUNT:I = 0x5a4

.field public static final FIELD_IO_OPERATION_TYPE:I = 0x5a3

.field public static final FIELD_IS_CATEGORY_USED:I = 0x43e

.field public static final FIELD_IS_FULL_QS:I = 0x639

.field public static final FIELD_LINKIFY_CALL_ID:I = 0x527

.field public static final FIELD_LINKIFY_ENTITY_TYPE:I = 0x526

.field public static final FIELD_LINKIFY_LATENCY:I = 0x522

.field public static final FIELD_LINKIFY_LINK_LENGTH:I = 0x525

.field public static final FIELD_LINKIFY_NUM_LINKS:I = 0x524

.field public static final FIELD_LINKIFY_TEXT_LENGTH:I = 0x523

.field public static final FIELD_MOBILE_NETWORK:I = 0x4bb

.field public static final FIELD_NAV_ACTION:I = 0x3a5

.field public static final FIELD_NOTIFICATION_ASSISTANT_SERVICE_HASH:I = 0x6ce

.field public static final FIELD_NOTIFICATION_CATEGORY:I = 0x669

.field public static final FIELD_NOTIFICATION_CHANNEL_GROUP_ID:I = 0x35c

.field public static final FIELD_NOTIFICATION_CHANNEL_ID:I = 0x359

.field public static final FIELD_NOTIFICATION_CHANNEL_IMPORTANCE:I = 0x35a

.field public static final FIELD_NOTIFICATION_GROUP_ID:I = 0x3b2

.field public static final FIELD_NOTIFICATION_GROUP_SUMMARY:I = 0x3b3

.field public static final FIELD_NOTIFICATION_IMPORTANCE_ASST:I = 0x69b

.field public static final FIELD_NOTIFICATION_IMPORTANCE_EXPLANATION:I = 0x698

.field public static final FIELD_NOTIFICATION_IMPORTANCE_INITIAL:I = 0x699

.field public static final FIELD_NOTIFICATION_IMPORTANCE_INITIAL_EXPLANATION:I = 0x69a

.field public static final FIELD_NOTIFICATION_PEOPLE:I = 0x6d0

.field public static final FIELD_NOTIFICATION_SNOOZE_DURATION_MS:I = 0x473

.field public static final FIELD_NOTIFICATION_SNOOZE_INDEX:I = 0x474

.field public static final FIELD_NOTIFICATION_STYLE:I = 0x6d1

.field public static final FIELD_NUM_STATUS_ICONS:I = 0x447

.field public static final FIELD_PERMISSION:I = 0x4d9

.field public static final FIELD_PLATFORM_REASON:I = 0x44b

.field public static final FIELD_PLUG_BATTERY_PERCENTAGE:I = 0x400

.field public static final FIELD_PLUG_TYPE:I = 0x58d

.field public static final FIELD_PROCESS_RECORD_CUR_PROC_STATE:I = 0x5fa

.field public static final FIELD_PROCESS_RECORD_HAS_CLIENT_ACTIVITIES:I = 0x5fb

.field public static final FIELD_PROCESS_RECORD_HAS_FOREGROUND_ACTIVITIES:I = 0x5fd

.field public static final FIELD_PROCESS_RECORD_HAS_FOREGROUND_SERVICES:I = 0x5fc

.field public static final FIELD_PROCESS_RECORD_HAS_OVERLAY_UI:I = 0x5ff

.field public static final FIELD_PROCESS_RECORD_HAS_TOP_UI:I = 0x5fe

.field public static final FIELD_PROCESS_RECORD_MILLIS_SINCE_FG_INTERACTION:I = 0x602

.field public static final FIELD_PROCESS_RECORD_MILLIS_SINCE_LAST_INTERACTION_EVENT:I = 0x601

.field public static final FIELD_PROCESS_RECORD_MILLIS_SINCE_UNIMPORTANT:I = 0x603

.field public static final FIELD_PROCESS_RECORD_PENDING_UI_CLEAN:I = 0x600

.field public static final FIELD_PROCESS_RECORD_PROCESS_NAME:I = 0x5f9

.field public static final FIELD_QS_MODE:I = 0x51f

.field public static final FIELD_QS_POSITION:I = 0x39f

.field public static final FIELD_QS_VALUE:I = 0x3a0

.field public static final FIELD_RANKED_POSITION:I = 0x43f

.field public static final FIELD_REAL_CALLING_UID:I = 0x5ee

.field public static final FIELD_REAL_CALLING_UID_HAS_ANY_VISIBLE_WINDOW:I = 0x5f0

.field public static final FIELD_REAL_CALLING_UID_PROC_STATE:I = 0x5ef

.field public static final FIELD_SCREEN_SLEEP_REASON:I = 0x69f

.field public static final FIELD_SCREEN_WAKE_REASON:I = 0x69e

.field public static final FIELD_SELECTION_ENTITY_TYPE:I = 0x4e6

.field public static final FIELD_SELECTION_RANGE:I = 0x462

.field public static final FIELD_SELECTION_RANGE_END:I = 0x4e3

.field public static final FIELD_SELECTION_RANGE_START:I = 0x4e2

.field public static final FIELD_SELECTION_SESSION_ID:I = 0x45f

.field public static final FIELD_SELECTION_SESSION_INDEX:I = 0x460

.field public static final FIELD_SELECTION_SINCE_PREVIOUS:I = 0x45e

.field public static final FIELD_SELECTION_SINCE_START:I = 0x45d

.field public static final FIELD_SELECTION_SMART_RANGE:I = 0x463

.field public static final FIELD_SELECTION_SMART_RANGE_END:I = 0x4e5

.field public static final FIELD_SELECTION_SMART_RANGE_START:I = 0x4e4

.field public static final FIELD_SELECTION_VERSION_TAG:I = 0x461

.field public static final FIELD_SELECTION_WIDGET_TYPE:I = 0x4e7

.field public static final FIELD_SELECTION_WIDGET_VERSION:I = 0x4ee

.field public static final FIELD_SESSION_TIME_MS:I = 0x403

.field public static final FIELD_SETTINGS_BUILD_NUMBER_DEVELOPER_MODE_ENABLED:I = 0x350

.field public static final FIELD_SETTINGS_PREFERENCE_CHANGE_FLOAT_VALUE:I = 0x3e3

.field public static final FIELD_SETTINGS_PREFERENCE_CHANGE_INT_VALUE:I = 0x441

.field public static final FIELD_SETTINGS_PREFERENCE_CHANGE_LONG_VALUE:I = 0x3e2

.field public static final FIELD_SETTINGS_PREFERENCE_CHANGE_NAME:I = 0x356

.field public static final FIELD_SETTINGS_PREFERENCE_CHANGE_VALUE:I = 0x357

.field public static final FIELD_SETTINGS_SEARCH_INLINE_RESULT_NAME:I = 0x36f

.field public static final FIELD_SETTINGS_SEARCH_INLINE_RESULT_VALUE:I = 0x370

.field public static final FIELD_SETTINGS_SEARCH_QUERY_LENGTH:I = 0x3e9

.field public static final FIELD_SETTINGS_SEARCH_RESULT_ASYNC_RANKING_STATE:I = 0x43b

.field public static final FIELD_SETTINGS_SEARCH_RESULT_COUNT:I = 0x3ea

.field public static final FIELD_SETTINGS_SEARCH_RESULT_RANK:I = 0x34a

.field public static final FIELD_SETTINGS_SMART_SUGGESTIONS_ENABLED:I = 0x449

.field public static final FIELD_SHARESHEET_MIMETYPE:I = 0x671

.field public static final FIELD_SLICE_AUTHORITY:I = 0x57a

.field public static final FIELD_SLICE_PATH:I = 0x57b

.field public static final FIELD_SPEAKER_IMPEDANCE_MILLIOHMS:I = 0x5a6

.field public static final FIELD_SPEAKER_LOCATION:I = 0x5a7

.field public static final FIELD_START_BATTERY_PERCENT:I = 0x51b

.field public static final FIELD_START_BATTERY_UA:I = 0x519

.field public static final FIELD_STATUS_BAR_STATE:I = 0x638

.field public static final FIELD_STATUS_ICONS:I = 0x446

.field public static final FIELD_SUBSLICE_AUTHORITY:I = 0x57c

.field public static final FIELD_SUBSLICE_PATH:I = 0x57d

.field public static final FIELD_TARGET_PACKAGE_NAME:I = 0x5f2

.field public static final FIELD_TARGET_SHORT_COMPONENT_NAME:I = 0x5f6

.field public static final FIELD_TARGET_UID:I = 0x5f1

.field public static final FIELD_TARGET_UID_HAS_ANY_VISIBLE_WINDOW:I = 0x5f4

.field public static final FIELD_TARGET_UID_PROC_STATE:I = 0x5f3

.field public static final FIELD_TARGET_WHITELIST_TAG:I = 0x5f5

.field public static final FIELD_TEXTCLASSIFIER_MODEL:I = 0x4e8

.field public static final FIELD_TEXT_CLASSIFIER_EVENT_TIME:I = 0x651

.field public static final FIELD_TEXT_CLASSIFIER_FIRST_ENTITY_TYPE:I = 0x663

.field public static final FIELD_TEXT_CLASSIFIER_SCORE:I = 0x666

.field public static final FIELD_TEXT_CLASSIFIER_SECOND_ENTITY_TYPE:I = 0x664

.field public static final FIELD_TEXT_CLASSIFIER_SESSION_ID:I = 0x662

.field public static final FIELD_TEXT_CLASSIFIER_THIRD_ENTITY_TYPE:I = 0x665

.field public static final FIELD_TEXT_CLASSIFIER_WIDGET_TYPE:I = 0x667

.field public static final FIELD_TEXT_CLASSIFIER_WIDGET_VERSION:I = 0x668

.field public static final FIELD_TIME_ELAPSED_BETWEEN_CHARGE_MS:I = 0x406

.field public static final FIELD_TIME_ELAPSED_BETWEEN_SESSION_MS:I = 0x404

.field public static final FIELD_TIME_OF_CHARGE_MS:I = 0x405

.field public static final FIELD_TIME_TO_APP_TARGETS:I = 0x675

.field public static final FIELD_UNPLUG_BATTERY_PERCENTAGE:I = 0x401

.field public static final FIELD_USB_AUDIO_VIDPID:I = 0x591

.field public static final FIELD_ZEN_RULE_ID:I = 0x643

.field public static final FIELD_ZEN_TOGGLE_EXCEPTION:I = 0x642

.field public static final FINGERPRINT:I = 0x31

.field public static final FINGERPRINT_AUTHENTICATE_SIDECAR:I = 0x4c5

.field public static final FINGERPRINT_ENROLL:I = 0x32

.field public static final FINGERPRINT_ENROLLING:I = 0xf0

.field public static final FINGERPRINT_ENROLLING_SETUP:I = 0xf6

.field public static final FINGERPRINT_ENROLL_FINISH:I = 0xf2

.field public static final FINGERPRINT_ENROLL_FINISH_SETUP:I = 0xf8

.field public static final FINGERPRINT_ENROLL_INTRO:I = 0xf3

.field public static final FINGERPRINT_ENROLL_INTRO_SETUP:I = 0xf9

.field public static final FINGERPRINT_ENROLL_ONBOARD:I = 0xf4

.field public static final FINGERPRINT_ENROLL_ONBOARD_SETUP:I = 0xfa

.field public static final FINGERPRINT_ENROLL_SIDECAR:I = 0xf5

.field public static final FINGERPRINT_FIND_SENSOR:I = 0xf1

.field public static final FINGERPRINT_FIND_SENSOR_SETUP:I = 0xf7

.field public static final FINGERPRINT_REMOVE_SIDECAR:I = 0x3a6

.field public static final FUELGAUGE_ANOMALY_DETAIL:I = 0x3db

.field public static final FUELGAUGE_BATTERY_HISTORY_DETAIL:I = 0x33

.field public static final FUELGAUGE_BATTERY_SAVER:I = 0x34

.field public static final FUELGAUGE_BATTERY_TIP_DIALOG:I = 0x52b

.field public static final FUELGAUGE_HIGH_POWER_DETAILS:I = 0xb9

.field public static final FUELGAUGE_INACTIVE_APPS:I = 0xee

.field public static final FUELGAUGE_POWER_USAGE_DETAIL:I = 0x35

.field public static final FUELGAUGE_POWER_USAGE_SUMMARY:I = 0x36

.field public static final FUELGAUGE_POWER_USAGE_SUMMARY_V2:I = 0x4ef

.field public static final FUELGAUGE_RESTRICTED_APP_DETAILS:I = 0x505

.field public static final FUELGAUGE_SMART_BATTERY:I = 0x501

.field public static final GENTLE_NOTIFICATIONS_SCREEN:I = 0x6b3

.field public static final GLOBAL_ACTIONS_PANEL_SETTINGS:I = 0x6c0

.field public static final HARDWARE_CODEC:I = 0x2

.field public static final HARDWARE_FAILURE_COMPLETE:I = 0x1

.field public static final HARDWARE_FAILURE_FINGERPRINT_SENSOR_BROKEN:I = 0x4

.field public static final HARDWARE_FAILURE_FINGERPRINT_TOO_MANY_DEAD_PIXELS:I = 0x5

.field public static final HARDWARE_FAILURE_SPEAKER_HIGH_Z:I = 0x2

.field public static final HARDWARE_FAILURE_SPEAKER_SHORT:I = 0x3

.field public static final HARDWARE_FAILURE_UNKNOWN:I = 0x0

.field public static final HARDWARE_FINGERPRINT:I = 0x4

.field public static final HARDWARE_MICROPHONE:I = 0x1

.field public static final HARDWARE_SPEAKER:I = 0x3

.field public static final HARDWARE_UNKNOWN:I = 0x0

.field public static final HOME:I = 0x37

.field public static final ICC_LOCK:I = 0x38

.field public static final IMPORTANCE_EXPLANATION_APP:I = 0x1

.field public static final IMPORTANCE_EXPLANATION_APP_PRE_CHANNELS:I = 0x5

.field public static final IMPORTANCE_EXPLANATION_ASST:I = 0x3

.field public static final IMPORTANCE_EXPLANATION_SYSTEM:I = 0x4

.field public static final IMPORTANCE_EXPLANATION_UNKNOWN:I = 0x0

.field public static final IMPORTANCE_EXPLANATION_USER:I = 0x2

.field public static final INPUTMETHOD_KEYBOARD:I = 0x3a

.field public static final INPUTMETHOD_LANGUAGE:I = 0x39

.field public static final INPUTMETHOD_SPELL_CHECKERS:I = 0x3b

.field public static final INPUTMETHOD_SUBTYPE_ENABLER:I = 0x3c

.field public static final INPUTMETHOD_USER_DICTIONARY:I = 0x3d

.field public static final INPUTMETHOD_USER_DICTIONARY_ADD_WORD:I = 0x3e

.field public static final IOOP_READ:I = 0x1

.field public static final IOOP_SYNC:I = 0x4

.field public static final IOOP_UNKNOWN:I = 0x0

.field public static final IOOP_UNMAP:I = 0x3

.field public static final IOOP_WRITE:I = 0x2

.field public static final KEYBOARD_SHORTCUTS_HELPER:I = 0x1f4

.field public static final LANGUAGE_DETECTION:I = 0x64e

.field public static final LOCATION:I = 0x3f

.field public static final LOCATION_BOTTOM_STACK_HIDDEN:I = 0x5

.field public static final LOCATION_BOTTOM_STACK_PEEKING:I = 0x4

.field public static final LOCATION_FIRST_HEADS_UP:I = 0x1

.field public static final LOCATION_GONE:I = 0x6

.field public static final LOCATION_HIDDEN_TOP:I = 0x2

.field public static final LOCATION_MAIN_AREA:I = 0x3

.field public static final LOCATION_MODE:I = 0x40

.field public static final LOCATION_SCANNING:I = 0x83

.field public static final LOCATION_UNKNOWN:I = 0x0

.field public static final LOCKSCREEN:I = 0xc4

.field public static final LOCK_SCREEN_NOTIFICATION_CONTENT:I = 0x630

.field public static final MAIN_SETTINGS:I = 0x1

.field public static final MANAGED_PROFILE:I = 0x2

.field public static final MANAGE_APPLICATIONS:I = 0x41

.field public static final MANAGE_APPLICATIONS_ALL:I = 0x84

.field public static final MANAGE_APPLICATIONS_NOTIFICATIONS:I = 0x85

.field public static final MANAGE_DOMAIN_URLS:I = 0x8f

.field public static final MANAGE_EXTERNAL_SOURCES:I = 0x328

.field public static final MANAGE_PERMISSIONS:I = 0x8c

.field public static final MASTER_CLEAR:I = 0x42

.field public static final MASTER_CLEAR_CONFIRM:I = 0x43

.field public static final MEDIA_NOTIFICATION_SEEKBAR:I = 0x6cf

.field public static final METRICS_CHECKPOINT:I = 0x398

.field public static final MOBILE_DATA_DIALOG:I = 0x62e

.field public static final MOBILE_NETWORK:I = 0x623

.field public static final MOBILE_NETWORK_LIST:I = 0x65b

.field public static final MOBILE_NETWORK_RENAME_DIALOG:I = 0x66a

.field public static final MOBILE_NETWORK_SELECT:I = 0x62d

.field public static final MOBILE_ROAMING_DIALOG:I = 0x62f

.field public static final MODULE_LICENSES_DASHBOARD:I = 0x6d2

.field public static final NET_DATA_USAGE_METERED:I = 0x44

.field public static final NFC_BEAM:I = 0x45

.field public static final NFC_PAYMENT:I = 0x46

.field public static final NIGHT_DISPLAY_SETTINGS:I = 0x1e8

.field public static final NOTIFICATION:I = 0x47

.field public static final NOTIFICATION_ACCESS:I = 0xb3

.field public static final NOTIFICATION_ACTION_IS_SMART:I = 0x641

.field public static final NOTIFICATION_ALERT:I = 0xc7

.field public static final NOTIFICATION_APP_NOTIFICATION:I = 0x48

.field public static final NOTIFICATION_ASSISTANT_ADJUSTMENT:I = 0x625

.field public static final NOTIFICATION_BLOCKING_HELPER:I = 0x655

.field public static final NOTIFICATION_CHANNEL_GROUP:I = 0x4c2

.field public static final NOTIFICATION_CHANNEL_IMPORTANCE:I = 0x3ad

.field public static final NOTIFICATION_CHANNEL_LOCK_SCREEN_VIS:I = 0x3ae

.field public static final NOTIFICATION_DIRECT_REPLY_ACTION:I = 0x636

.field public static final NOTIFICATION_ID:I = 0x31c

.field public static final NOTIFICATION_INTERRUPTION:I = 0x5dd

.field public static final NOTIFICATION_ITEM:I = 0x80

.field public static final NOTIFICATION_ITEM_ACTION:I = 0x81

.field public static final NOTIFICATION_LOCATION:I = 0x65d

.field public static final NOTIFICATION_NETWORK_LOST_INTERNET:I = 0x2e6

.field public static final NOTIFICATION_NETWORK_NO_INTERNET:I = 0x2e5

.field public static final NOTIFICATION_NETWORK_SIGN_IN:I = 0x2e4

.field public static final NOTIFICATION_NETWORK_SWITCH:I = 0x2e7

.field public static final NOTIFICATION_OTHER_SOUND:I = 0x49

.field public static final NOTIFICATION_PANEL:I = 0x7f

.field public static final NOTIFICATION_REDACTION:I = 0x4a

.field public static final NOTIFICATION_SELECT_SNOOZE:I = 0x472

.field public static final NOTIFICATION_SHADE_COUNT:I = 0x573

.field public static final NOTIFICATION_SHADE_INDEX:I = 0x31e

.field public static final NOTIFICATION_SINCE_CREATE_MILLIS:I = 0x319

.field public static final NOTIFICATION_SINCE_INTERRUPTION_MILLIS:I = 0x5dc

.field public static final NOTIFICATION_SINCE_UPDATE_MILLIS:I = 0x31b

.field public static final NOTIFICATION_SINCE_VISIBLE_MILLIS:I = 0x31a

.field public static final NOTIFICATION_SMART_ACTION_COUNT:I = 0x63f

.field public static final NOTIFICATION_SMART_REPLY_COUNT:I = 0x568

.field public static final NOTIFICATION_SMART_REPLY_EDIT_BEFORE_SENDING:I = 0x66f

.field public static final NOTIFICATION_SMART_REPLY_MODIFIED_BEFORE_SENDING:I = 0x670

.field public static final NOTIFICATION_SMART_SUGGESTION_ASSISTANT_GENERATED:I = 0x640

.field public static final NOTIFICATION_SNOOZED:I = 0x33f

.field public static final NOTIFICATION_SNOOZED_CRITERIA:I = 0x340

.field public static final NOTIFICATION_SNOOZE_CLICKED:I = 0x471

.field public static final NOTIFICATION_SNOOZE_OPTIONS:I = 0x476

.field public static final NOTIFICATION_STATION:I = 0x4b

.field public static final NOTIFICATION_TAG:I = 0x31d

.field public static final NOTIFICATION_TOPIC_NOTIFICATION:I = 0x109

.field public static final NOTIFICATION_UNDO_SNOOZE:I = 0x475

.field public static final NOTIFICATION_ZEN_MODE:I = 0x4c

.field public static final NOTIFICATION_ZEN_MODE_ACCESS:I = 0xb4

.field public static final NOTIFICATION_ZEN_MODE_AUTOMATION:I = 0x8e

.field public static final NOTIFICATION_ZEN_MODE_CALLS:I = 0x4ea

.field public static final NOTIFICATION_ZEN_MODE_DELETE_RULE_DIALOG:I = 0x4f2

.field public static final NOTIFICATION_ZEN_MODE_DURATION_DIALOG:I = 0x53d

.field public static final NOTIFICATION_ZEN_MODE_DURATION_FOREVER:I = 0x53f

.field public static final NOTIFICATION_ZEN_MODE_DURATION_PROMPT:I = 0x540

.field public static final NOTIFICATION_ZEN_MODE_DURATION_TIME:I = 0x53e

.field public static final NOTIFICATION_ZEN_MODE_ENABLE_DIALOG:I = 0x506

.field public static final NOTIFICATION_ZEN_MODE_EVENT_RULE:I = 0x92

.field public static final NOTIFICATION_ZEN_MODE_EXTERNAL_RULE:I = 0x91

.field public static final NOTIFICATION_ZEN_MODE_MESSAGES:I = 0x4e9

.field public static final NOTIFICATION_ZEN_MODE_OVERRIDING_APP:I = 0x635

.field public static final NOTIFICATION_ZEN_MODE_OVERRIDING_APPS:I = 0x634

.field public static final NOTIFICATION_ZEN_MODE_PRIORITY:I = 0x8d

.field public static final NOTIFICATION_ZEN_MODE_RULE_NAME_DIALOG:I = 0x4f5

.field public static final NOTIFICATION_ZEN_MODE_RULE_SELECTION_DIALOG:I = 0x4f6

.field public static final NOTIFICATION_ZEN_MODE_SCHEDULE_RULE:I = 0x90

.field public static final NOTIFICATION_ZEN_MODE_TOGGLE_ON_ALARM:I = 0x4ed

.field public static final NOTIFICATION_ZEN_MODE_TOGGLE_ON_COUNTDOWN:I = 0x4ec

.field public static final NOTIFICATION_ZEN_MODE_TOGGLE_ON_FOREVER:I = 0x4eb

.field public static final NOTIFICATION_ZEN_MODE_VISUAL_INTERRUPTIONS:I = 0x106

.field public static final OUTPUT_CHOOSER:I = 0x50f

.field public static final OVERVIEW_ACTIVITY:I = 0xe0

.field public static final OVERVIEW_DISMISS:I = 0x121

.field public static final OVERVIEW_DISMISS_ALL:I = 0x165

.field public static final OVERVIEW_HISTORY:I = 0x113

.field public static final OVERVIEW_LAUNCH_PREVIOUS_TASK:I = 0x13e

.field public static final OVERVIEW_SCROLL:I = 0x11f

.field public static final OVERVIEW_SELECT_TIMEOUT:I = 0x120

.field public static final OWNER_INFO:I = 0x4d

.field public static final PACKAGE_OPTIMIZATION_COMPILATION_FILTER:I = 0x528

.field public static final PACKAGE_OPTIMIZATION_COMPILATION_REASON:I = 0x529

.field public static final PAGE_ATHNP:I = 0x689

.field public static final PAGE_ATSAP:I = 0x687

.field public static final PAGE_ATSCP:I = 0x688

.field public static final PAGE_ATSII:I = 0x684

.field public static final PAGE_ATSSI:I = 0x683

.field public static final PAGE_ATSSP:I = 0x686

.field public static final PAGE_ATUS:I = 0x685

.field public static final PANEL_INTERNET_CONNECTIVITY:I = 0x676

.field public static final PANEL_MEDIA_OUTPUT:I = 0x679

.field public static final PANEL_NFC:I = 0x678

.field public static final PANEL_VOLUME:I = 0x677

.field public static final PANEL_WIFI:I = 0x697

.field public static final PARENT_PROFILE:I = 0x1

.field public static final PHYSICAL_KEYBOARDS:I = 0x15a

.field public static final PICTURE_IN_PICTURE_ASPECT_RATIO:I = 0x339

.field public static final POWER_MENU:I = 0x620

.field public static final POWER_OVERHEAT_ALARM:I = 0x5b1

.field public static final PREMIUM_SMS_ACCESS:I = 0x184

.field public static final PREVIOUSLY_CONNECTED_DEVICES:I = 0x55a

.field public static final PREVIOUSLY_HIDDEN:I = 0x1

.field public static final PREVIOUSLY_UNKNOWN:I = 0x0

.field public static final PREVIOUSLY_VISIBLE:I = 0x2

.field public static final PRINT_ADD_PRINTERS:I = 0x1f8

.field public static final PRINT_ALL_PRINTERS:I = 0x1f7

.field public static final PRINT_JOB_OPTIONS:I = 0x1f6

.field public static final PRINT_JOB_SETTINGS:I = 0x4e

.field public static final PRINT_PREVIEW:I = 0x1f5

.field public static final PRINT_SERVICE_SETTINGS:I = 0x4f

.field public static final PRINT_SETTINGS:I = 0x50

.field public static final PRIVACY:I = 0x51

.field public static final PROCESS_STATS_SUMMARY:I = 0xca

.field public static final PROFILE_CHALLENGE:I = 0x111

.field public static final PROVISIONING_ACTION:I = 0x263

.field public static final PROVISIONING_CANCELLED:I = 0x270

.field public static final PROVISIONING_COPY_ACCOUNT_STATUS:I = 0x272

.field public static final PROVISIONING_COPY_ACCOUNT_TASK_MS:I = 0x26b

.field public static final PROVISIONING_CREATE_PROFILE_TASK_MS:I = 0x26c

.field public static final PROVISIONING_DOWNLOAD_PACKAGE_TASK_MS:I = 0x26e

.field public static final PROVISIONING_DPC_INSTALLED_BY_PACKAGE:I = 0x206

.field public static final PROVISIONING_DPC_PACKAGE_NAME:I = 0x205

.field public static final PROVISIONING_ENCRYPT_DEVICE_ACTIVITY_TIME_MS:I = 0x209

.field public static final PROVISIONING_ENTRY_POINT_ADB:I = 0x269

.field public static final PROVISIONING_ENTRY_POINT_NFC:I = 0x267

.field public static final PROVISIONING_ENTRY_POINT_QR_CODE:I = 0x268

.field public static final PROVISIONING_ENTRY_POINT_TRUSTED_SOURCE:I = 0x26a

.field public static final PROVISIONING_ENTRY_POINT_ZERO_TOUCH:I = 0x266

.field public static final PROVISIONING_ERROR:I = 0x271

.field public static final PROVISIONING_EXTRA:I = 0x264

.field public static final PROVISIONING_FINALIZATION_ACTIVITY_TIME_MS:I = 0x20d

.field public static final PROVISIONING_INSTALL_PACKAGE_TASK_MS:I = 0x26f

.field public static final PROVISIONING_NETWORK_TYPE:I = 0x262

.field public static final PROVISIONING_POST_ENCRYPTION_ACTIVITY_TIME_MS:I = 0x20c

.field public static final PROVISIONING_PREPROVISIONING_ACTIVITY_TIME_MS:I = 0x208

.field public static final PROVISIONING_PROVISIONING_ACTIVITY_TIME_MS:I = 0x207

.field public static final PROVISIONING_SESSION_COMPLETED:I = 0x2df

.field public static final PROVISIONING_SESSION_STARTED:I = 0x2de

.field public static final PROVISIONING_START_PROFILE_TASK_MS:I = 0x26d

.field public static final PROVISIONING_TERMS_ACTIVITY_TIME_MS:I = 0x329

.field public static final PROVISIONING_TERMS_COUNT:I = 0x32a

.field public static final PROVISIONING_TERMS_READ:I = 0x32b

.field public static final PROVISIONING_TOTAL_TASK_TIME_MS:I = 0x273

.field public static final PROVISIONING_TRAMPOLINE_ACTIVITY_TIME_MS:I = 0x20b

.field public static final PROVISIONING_WEB_ACTIVITY_TIME_MS:I = 0x20a

.field public static final PROXY_SELECTOR:I = 0x52

.field public static final QS_AIRPLANEMODE:I = 0x70

.field public static final QS_ALARM:I = 0x50a

.field public static final QS_BATTERY_DETAIL:I = 0x112

.field public static final QS_BATTERY_TILE:I = 0x105

.field public static final QS_BLUETOOTH:I = 0x71

.field public static final QS_BLUETOOTH_DETAILS:I = 0x96

.field public static final QS_BLUETOOTH_TOGGLE:I = 0x9a

.field public static final QS_CAST:I = 0x72

.field public static final QS_CAST_DETAILS:I = 0x97

.field public static final QS_CAST_DISCONNECT:I = 0x9e

.field public static final QS_CAST_SELECT:I = 0x9d

.field public static final QS_CELLULAR:I = 0x73

.field public static final QS_CELLULAR_TOGGLE:I = 0x9b

.field public static final QS_COLORINVERSION:I = 0x74

.field public static final QS_COLOR_MATRIX:I = 0x10b

.field public static final QS_CUSTOM:I = 0x10c

.field public static final QS_DATAUSAGEDETAIL:I = 0x75

.field public static final QS_DATA_SAVER:I = 0x11c

.field public static final QS_DND:I = 0x76

.field public static final QS_DND_CONDITION_SELECT:I = 0xa4

.field public static final QS_DND_DETAILS:I = 0x95

.field public static final QS_DND_TIME:I = 0xa3

.field public static final QS_DND_TOGGLE:I = 0xa6

.field public static final QS_DND_ZEN_SELECT:I = 0xa5

.field public static final QS_EDIT:I = 0x166

.field public static final QS_FLASHLIGHT:I = 0x77

.field public static final QS_HOTSPOT:I = 0x78

.field public static final QS_INTENT:I = 0x79

.field public static final QS_LOCATION:I = 0x7a

.field public static final QS_LOCK_TILE:I = 0x103

.field public static final QS_NFC:I = 0x320

.field public static final QS_NIGHT_DISPLAY:I = 0x1eb

.field public static final QS_PANEL:I = 0x6f

.field public static final QS_ROTATIONLOCK:I = 0x7b

.field public static final QS_SENSOR_PRIVACY:I = 0x63e

.field public static final QS_SWITCH_USER:I = 0x9c

.field public static final QS_UI_MODE_NIGHT:I = 0x6aa

.field public static final QS_USERDETAIL:I = 0x7d

.field public static final QS_USERDETAILITE:I = 0x7c

.field public static final QS_USER_TILE:I = 0x104

.field public static final QS_WIFI:I = 0x7e

.field public static final QS_WIFI_DETAILS:I = 0x98

.field public static final QS_WIFI_TOGGLE:I = 0x99

.field public static final QS_WORKMODE:I = 0x101

.field public static final REASON_APP_CANCEL:I = 0x8

.field public static final REASON_APP_CANCEL_ALL:I = 0x9

.field public static final REASON_CANCEL:I = 0x2

.field public static final REASON_CANCEL_ALL:I = 0x3

.field public static final REASON_CHANNEL_BANNED:I = 0x11

.field public static final REASON_CLICK:I = 0x1

.field public static final REASON_ERROR:I = 0x4

.field public static final REASON_GROUP_OPTIMIZATION:I = 0xd

.field public static final REASON_GROUP_SUMMARY_CANCELED:I = 0xc

.field public static final REASON_LISTENER_CANCEL:I = 0xa

.field public static final REASON_LISTENER_CANCEL_ALL:I = 0xb

.field public static final REASON_PACKAGE_BANNED:I = 0x7

.field public static final REASON_PACKAGE_CHANGED:I = 0x5

.field public static final REASON_PACKAGE_SUSPENDED:I = 0xe

.field public static final REASON_PROFILE_TURNED_OFF:I = 0xf

.field public static final REASON_SNOOZED:I = 0x12

.field public static final REASON_TIMEOUT:I = 0x13

.field public static final REASON_UNAUTOBUNDLED:I = 0x10

.field public static final REASON_USER_STOPPED:I = 0x6

.field public static final RECENT_LOCATION_REQUESTS_ALL:I = 0x52d

.field public static final RESERVED_FOR_LOGBUILDER_BUCKET:I = 0x321

.field public static final RESERVED_FOR_LOGBUILDER_CATEGORY:I = 0x2f5

.field public static final RESERVED_FOR_LOGBUILDER_COUNTER:I = 0x323

.field public static final RESERVED_FOR_LOGBUILDER_HISTOGRAM:I = 0x324

.field public static final RESERVED_FOR_LOGBUILDER_LATENCY_MILLIS:I = 0x54f

.field public static final RESERVED_FOR_LOGBUILDER_NAME:I = 0x31f

.field public static final RESERVED_FOR_LOGBUILDER_PACKAGENAME:I = 0x326

.field public static final RESERVED_FOR_LOGBUILDER_PID:I = 0x361

.field public static final RESERVED_FOR_LOGBUILDER_SUBTYPE:I = 0x2f7

.field public static final RESERVED_FOR_LOGBUILDER_TIMESTAMP:I = 0x325

.field public static final RESERVED_FOR_LOGBUILDER_TYPE:I = 0x2f6

.field public static final RESERVED_FOR_LOGBUILDER_UID:I = 0x3af

.field public static final RESERVED_FOR_LOGBUILDER_VALUE:I = 0x322

.field public static final RESET_DASHBOARD:I = 0x39c

.field public static final RESET_NETWORK:I = 0x53

.field public static final RESET_NETWORK_CONFIRM:I = 0x54

.field public static final ROTATION_SUGGESTION_SHOWN:I = 0x508

.field public static final RUNNING_BACKGROUND_APPS_DIALOG:I = 0x3b0

.field public static final RUNNING_SERVICES:I = 0x194

.field public static final RUNNING_SERVICE_DETAILS:I = 0x55

.field public static final SCREEN:I = 0xc6

.field public static final SCREEN_LOCK_SETTINGS:I = 0x4f1

.field public static final SCREEN_PINNING:I = 0x56

.field public static final SECURITY:I = 0x57

.field public static final SETTINGS_ADAPTIVE_SLEEP:I = 0x65c

.field public static final SETTINGS_APP_NOTIF_CATEGORY:I = 0x2ec

.field public static final SETTINGS_ASSIST_GESTURE:I = 0x3e4

.field public static final SETTINGS_ASSIST_GESTURE_FIRST_TIME:I = 0x3f4

.field public static final SETTINGS_ASSIST_GESTURE_TRAINING_ENROLLING:I = 0x3e0

.field public static final SETTINGS_ASSIST_GESTURE_TRAINING_FINISHED:I = 0x3e1

.field public static final SETTINGS_ASSIST_GESTURE_TRAINING_INTRO:I = 0x3df

.field public static final SETTINGS_AUTO_BRIGHTNESS:I = 0x565

.field public static final SETTINGS_AWARE:I = 0x660

.field public static final SETTINGS_AWARE_DISPLAY:I = 0x6d6

.field public static final SETTINGS_CHOOSE_LOCK_DIALOG:I = 0x3de

.field public static final SETTINGS_CONDITION_AIRPLANE_MODE:I = 0x179

.field public static final SETTINGS_CONDITION_BACKGROUND_DATA:I = 0x17a

.field public static final SETTINGS_CONDITION_BATTERY_SAVER:I = 0x17b

.field public static final SETTINGS_CONDITION_CELLULAR_DATA:I = 0x17c

.field public static final SETTINGS_CONDITION_DEVICE_MUTED:I = 0x558

.field public static final SETTINGS_CONDITION_DEVICE_VIBRATE:I = 0x559

.field public static final SETTINGS_CONDITION_DND:I = 0x17d

.field public static final SETTINGS_CONDITION_GRAYSCALE_MODE:I = 0x693

.field public static final SETTINGS_CONDITION_HOTSPOT:I = 0x17e

.field public static final SETTINGS_CONDITION_NIGHT_DISPLAY:I = 0x1ec

.field public static final SETTINGS_CONDITION_WORK_MODE:I = 0x17f

.field public static final SETTINGS_CONNECTED_DEVICE_CATEGORY:I = 0x2eb

.field public static final SETTINGS_CREATE_SHORTCUT:I = 0x5df

.field public static final SETTINGS_FEATURE_FLAGS_DASHBOARD:I = 0x4c1

.field public static final SETTINGS_FINANCIAL_APPS_SMS_ACCESS:I = 0x63d

.field public static final SETTINGS_GAME_DRIVER_DASHBOARD:I = 0x64d

.field public static final SETTINGS_GESTURES:I = 0x1cb

.field public static final SETTINGS_GESTURE_CAMERA_LIFT_TRIGGER:I = 0x3da

.field public static final SETTINGS_GESTURE_DOUBLE_TAP_POWER:I = 0x2f0

.field public static final SETTINGS_GESTURE_DOUBLE_TAP_SCREEN:I = 0x2f2

.field public static final SETTINGS_GESTURE_DOUBLE_TWIST:I = 0x2f3

.field public static final SETTINGS_GESTURE_NAV_BACK_SENSITIVITY_DLG:I = 0x6d4

.field public static final SETTINGS_GESTURE_NAV_NOT_AVAILABLE_DLG:I = 0x6d3

.field public static final SETTINGS_GESTURE_PICKUP:I = 0x2f1

.field public static final SETTINGS_GESTURE_SILENCE:I = 0x659

.field public static final SETTINGS_GESTURE_SKIP_SONG:I = 0x658

.field public static final SETTINGS_GESTURE_SWIPE_TO_NOTIFICATION:I = 0x2ef

.field public static final SETTINGS_GESTURE_SWIPE_UP:I = 0x55e

.field public static final SETTINGS_GESTURE_TAP_SCREEN:I = 0x65a

.field public static final SETTINGS_GESTURE_WAKE_LOCK_SCREEN:I = 0x615

.field public static final SETTINGS_GESTURE_WAKE_SCREEN:I = 0x622

.field public static final SETTINGS_HOMEPAGE:I = 0x5de

.field public static final SETTINGS_INPUT_CATEGORY:I = 0x2ed

.field public static final SETTINGS_LANGUAGE_CATEGORY:I = 0x2ee

.field public static final SETTINGS_LOCK_SCREEN_PREFERENCES:I = 0x372

.field public static final SETTINGS_MANAGE_PICTURE_IN_PICTURE:I = 0x32c

.field public static final SETTINGS_MOBILE_NETWORK_CATEGORY:I = 0x4b0

.field public static final SETTINGS_NETWORK_CATEGORY:I = 0x2ea

.field public static final SETTINGS_NETWORK_SCORER:I = 0x35d

.field public static final SETTINGS_PREVENT_RINGING:I = 0x550

.field public static final SETTINGS_SEARCH_NO_RESULT:I = 0x3f3

.field public static final SETTINGS_STORAGE_CATEGORY:I = 0x2e9

.field public static final SETTINGS_STORAGE_PROFILE:I = 0x34d

.field public static final SETTINGS_SYSTEM_CATEGORY:I = 0x2e8

.field public static final SETTINGS_TV_DEVICE_CATEGORY:I = 0x514

.field public static final SETTINGS_TV_HOME_THEATER_CONTROL_CATEGORY:I = 0x512

.field public static final SETTINGS_TV_INPUTS_CATEGORY:I = 0x513

.field public static final SETTINGS_TV_INPUT_OPTIONS_CATEGORY:I = 0x532

.field public static final SETTINGS_TV_WIFI_ADD_KNOWN_CATEGORY:I = 0x533

.field public static final SETTINGS_WIFI_ADD_NETWORK:I = 0x614

.field public static final SETTINGS_WIFI_DPP_CONFIGURATOR:I = 0x63b

.field public static final SETTINGS_WIFI_DPP_ENROLLEE:I = 0x63c

.field public static final SETTINGS_ZEN_NOTIFICATIONS:I = 0x578

.field public static final SETTINGS_ZEN_ONBOARDING:I = 0x564

.field public static final SETTINGS_ZONE_PICKER_FIXED_OFFSET:I = 0x54d

.field public static final SETTINGS_ZONE_PICKER_REGION:I = 0x54b

.field public static final SETTINGS_ZONE_PICKER_TIME_ZONE:I = 0x54c

.field public static final SET_NEW_PASSWORD_ACTIVITY:I = 0x66c

.field public static final SHORTCUTS_CHANGED_PACKAGE_COUNT:I = 0x2

.field public static final SHORTCUTS_CHANGED_SHORTCUT_COUNT:I = 0x3

.field public static final SHORTCUTS_CHANGED_UNKNOWN:I = 0x0

.field public static final SHORTCUTS_CHANGED_USER_ID:I = 0x1

.field public static final SIM:I = 0x58

.field public static final SLICE:I = 0x579

.field public static final SMART_REPLY_ACTION:I = 0x567

.field public static final SMART_REPLY_VISIBLE:I = 0x566

.field public static final SOUND:I = 0x150

.field public static final SPECIAL_ACCESS:I = 0x15f

.field public static final STATUS_BAR_ICONS_CHANGED:I = 0x445

.field public static final STORAGE_FILES:I = 0x349

.field public static final STORAGE_FREE_UP_SPACE_NOW:I = 0x348

.field public static final STORAGE_MANAGER_SETTINGS:I = 0x1ca

.field public static final SUPPORT_FRAGMENT:I = 0x1db

.field public static final SUW_ACCESSIBILITY:I = 0x16f

.field public static final SUW_ACCESSIBILITY_DISPLAY_SIZE:I = 0x172

.field public static final SUW_ACCESSIBILITY_FONT_SIZE:I = 0x171

.field public static final SUW_ACCESSIBILITY_TOGGLE_SCREEN_MAGNIFICATION:I = 0x170

.field public static final SUW_ACCESSIBILITY_TOGGLE_SCREEN_READER:I = 0x173

.field public static final SUW_ACCESSIBILITY_TOGGLE_SELECT_TO_SPEAK:I = 0x331

.field public static final SYSTEM_ALERT_WINDOW_APPS:I = 0xdd

.field public static final TESTING:I = 0x59

.field public static final TETHER:I = 0x5a

.field public static final TEXT_CLASSIFIER_GENERATE_LINKS:I = 0x521

.field public static final TEXT_CLASSIFIER_TYPE_ADDRESS:I = 0x5

.field public static final TEXT_CLASSIFIER_TYPE_EMAIL:I = 0x3

.field public static final TEXT_CLASSIFIER_TYPE_OTHER:I = 0x2

.field public static final TEXT_CLASSIFIER_TYPE_PHONE:I = 0x4

.field public static final TEXT_CLASSIFIER_TYPE_UNKNOWN:I = 0x1

.field public static final TEXT_CLASSIFIER_TYPE_URL:I = 0x6

.field public static final TEXT_LONGPRESS:I = 0x275

.field public static final TEXT_SELECTION_INVOCATION_LINK:I = 0x2

.field public static final TEXT_SELECTION_INVOCATION_MANUAL:I = 0x1

.field public static final TEXT_SELECTION_INVOCATION_UNKNOWN:I = 0x0

.field public static final TEXT_SELECTION_MENU_ITEM_ASSIST:I = 0x3a8

.field public static final TEXT_SELECTION_SESSION:I = 0x44c

.field public static final TOP_LEVEL_PRIVACY:I = 0x633

.field public static final TRAMPOLINE_SETTINGS_EVENT:I = 0x409

.field public static final TRUSTED_CREDENTIALS:I = 0x5c

.field public static final TRUST_AGENT:I = 0x5b

.field public static final TTS_ENGINE_SETTINGS:I = 0x5d

.field public static final TTS_SLIDERS:I = 0x32f

.field public static final TTS_TEXT_TO_SPEECH:I = 0x5e

.field public static final TUNER:I = 0xe3

.field public static final TUNER_BATTERY_PERCENTAGE:I = 0xed

.field public static final TUNER_CALIBRATE_DISPLAY:I = 0x131

.field public static final TUNER_COLOR_AND_APPEARANCE:I = 0x132

.field public static final TUNER_DEMO_MODE:I = 0xe5

.field public static final TUNER_DEMO_MODE_ENABLED:I = 0xeb

.field public static final TUNER_DEMO_MODE_ON:I = 0xec

.field public static final TUNER_NIGHT_MODE:I = 0x134

.field public static final TUNER_POWER_NOTIFICATION_CONTROLS:I = 0x188

.field public static final TUNER_QS:I = 0xe4

.field public static final TUNER_QS_ADD:I = 0xe7

.field public static final TUNER_QS_REMOVE:I = 0xe8

.field public static final TUNER_QS_REORDER:I = 0xe6

.field public static final TUNER_STATUS_BAR_DISABLE:I = 0xea

.field public static final TUNER_STATUS_BAR_ENABLE:I = 0xe9

.field public static final TYPE_ACTION:I = 0x4

.field public static final TYPE_CLOSE:I = 0x2

.field public static final TYPE_COLLAPSE:I = 0xe

.field public static final TYPE_DETAIL:I = 0x3

.field public static final TYPE_DISMISS:I = 0x5

.field public static final TYPE_ERROR:I = 0xf

.field public static final TYPE_FAILURE:I = 0xb

.field public static final TYPE_NOTIFICATION_ASSISTANT_ADJUSTMENT:I = 0x625

.field public static final TYPE_OPEN:I = 0x1

.field public static final TYPE_SUCCESS:I = 0xa

.field public static final TYPE_TRANSITION_COLD_LAUNCH:I = 0x7

.field public static final TYPE_TRANSITION_HOT_LAUNCH:I = 0x9

.field public static final TYPE_TRANSITION_REPORTED_DRAWN_NO_BUNDLE:I = 0xc

.field public static final TYPE_TRANSITION_REPORTED_DRAWN_WITH_BUNDLE:I = 0xd

.field public static final TYPE_TRANSITION_WARM_LAUNCH:I = 0x8

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_UPDATE:I = 0x6

.field public static final USAGE_ACCESS:I = 0x5f

.field public static final USB_DEFAULT:I = 0x520

.field public static final USB_DEVICE_DETAILS:I = 0x50b

.field public static final USER:I = 0x60

.field public static final USERS_APP_RESTRICTIONS:I = 0x61

.field public static final USER_CREDENTIALS:I = 0x11d

.field public static final USER_DETAILS:I = 0x62

.field public static final USER_DICTIONARY_SETTINGS:I = 0x202

.field public static final USER_LOCALE_LIST:I = 0x158

.field public static final VIEW_UNKNOWN:I = 0x0

.field public static final VIRTUAL_KEYBOARDS:I = 0x159

.field public static final VOICE_INPUT:I = 0x63

.field public static final VOLUME_DIALOG:I = 0xcf

.field public static final VOLUME_DIALOG_DETAILS:I = 0xd0

.field public static final VPN:I = 0x64

.field public static final VR_DISPLAY_PREFERENCE:I = 0x399

.field public static final VR_MANAGE_LISTENERS:I = 0x14e

.field public static final WALLPAPER_TYPE:I = 0x65

.field public static final WEBVIEW_IMPLEMENTATION:I = 0x195

.field public static final WFD_WIFI_DISPLAY:I = 0x66

.field public static final WIFI:I = 0x67

.field public static final WIFI_ADVANCED:I = 0x68

.field public static final WIFI_APITEST:I = 0x6b

.field public static final WIFI_CALLING:I = 0x69

.field public static final WIFI_CALLING_FOR_SUB:I = 0x4ce

.field public static final WIFI_INFO:I = 0x6c

.field public static final WIFI_NETWORK_DETAILS:I = 0x351

.field public static final WIFI_NETWORK_RECOMMENDATION_CONNECTION_SUCCESS:I = 0x345

.field public static final WIFI_NETWORK_RECOMMENDATION_RECOMMENDED_NETWORK_EVALUATOR:I = 0x344

.field public static final WIFI_NETWORK_RECOMMENDATION_SAVED_NETWORK_EVALUATOR:I = 0x343

.field public static final WIFI_P2P:I = 0x6d

.field public static final WIFI_SAVED_ACCESS_POINTS:I = 0x6a

.field public static final WIFI_SCANNING_NEEDED_DIALOG:I = 0x55d

.field public static final WIFI_TETHER_SETTINGS:I = 0x3f6

.field public static final WINDOW_DOCK_SHORTCUTS:I = 0x160

.field public static final WIRELESS:I = 0x6e

.field public static final ZEN_ACCESS_DETAIL:I = 0x69c

.field public static final ZEN_CUSTOM_RULE_CALLS:I = 0x64b

.field public static final ZEN_CUSTOM_RULE_CUSTOM_SETTINGS:I = 0x647

.field public static final ZEN_CUSTOM_RULE_DEFAULT_SETTINGS:I = 0x646

.field public static final ZEN_CUSTOM_RULE_MESSAGES:I = 0x64a

.field public static final ZEN_CUSTOM_RULE_NOTIFICATION_RESTRICTIONS:I = 0x648

.field public static final ZEN_CUSTOM_RULE_SETTINGS:I = 0x644

.field public static final ZEN_CUSTOM_RULE_SOUND_SETTINGS:I = 0x645

.field public static final ZEN_CUSTOM_RULE_VIS_EFFECTS:I = 0x649

.field public static final ZEN_CUSTOM_SETTINGS_DIALOG:I = 0x64c

.field public static final ZEN_WHAT_TO_BLOCK:I = 0x53b

.field public static final ZONE_PICKER:I = 0x203

.field private static volatile _emptyArray:[Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;->clear()Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;
    .registers 2

    sget-object v0, Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;->_emptyArray:[Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;->_emptyArray:[Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;

    sput-object v1, Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;->_emptyArray:[Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;

    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;->_emptyArray:[Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;

    invoke-direct {v0}, Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;

    invoke-direct {v0}, Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;->cachedSize:I

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/logging/nano/MetricsProto$MetricsEvent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_d

    return-object p0

    :cond_d
    goto :goto_0

    :cond_e
    return-object p0
.end method
