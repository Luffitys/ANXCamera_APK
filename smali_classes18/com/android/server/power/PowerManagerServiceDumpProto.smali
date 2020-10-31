.class public final Lcom/android/server/power/PowerManagerServiceDumpProto;
.super Ljava/lang/Object;
.source "PowerManagerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerServiceDumpProto$UidStateProto;,
        Lcom/android/server/power/PowerManagerServiceDumpProto$UserActivityProto;,
        Lcom/android/server/power/PowerManagerServiceDumpProto$ActiveWakeLocksProto;,
        Lcom/android/server/power/PowerManagerServiceDumpProto$ConstantsProto;
    }
.end annotation


# static fields
.field public static final ACTIVE_WAKE_LOCKS:J = 0x10b00000010L

.field public static final ARE_UIDS_CHANGED:J = 0x1080000002cL

.field public static final ARE_UIDS_CHANGING:J = 0x1080000002bL

.field public static final ATTENTIVE_TIMEOUT_MS:J = 0x11100000033L

.field public static final BATTERY_LEVEL:J = 0x10500000007L

.field public static final BATTERY_LEVEL_WHEN_DREAM_STARTED:J = 0x10500000008L

.field public static final BATTERY_SAVER_STATE_MACHINE:J = 0x10b00000032L

.field public static final CONSTANTS:J = 0x10b00000001L

.field public static final DEVICE_IDLE_TEMP_WHITELIST:J = 0x2050000001cL

.field public static final DEVICE_IDLE_WHITELIST:J = 0x2050000001bL

.field public static final DIRTY:J = 0x10500000002L

.field public static final DOCK_STATE:J = 0x10e00000009L

.field public static final IS_BATTERY_LEVEL_LOW:J = 0x10800000018L

.field public static final IS_BOOT_COMPLETED:J = 0x1080000000cL

.field public static final IS_DEVICE_IDLE_MODE:J = 0x1080000001aL

.field public static final IS_DISPLAY_READY:J = 0x10800000024L

.field public static final IS_HAL_AUTO_INTERACTIVE_MODE_ENABLED:J = 0x1080000000fL

.field public static final IS_HAL_AUTO_SUSPEND_MODE_ENABLED:J = 0x1080000000eL

.field public static final IS_HOLDING_DISPLAY_SUSPEND_BLOCKER:J = 0x10800000026L

.field public static final IS_HOLDING_WAKE_LOCK_SUSPEND_BLOCKER:J = 0x10800000025L

.field public static final IS_LIGHT_DEVICE_IDLE_MODE:J = 0x10800000019L

.field public static final IS_POWERED:J = 0x10800000005L

.field public static final IS_PROXIMITY_POSITIVE:J = 0x1080000000bL

.field public static final IS_REQUEST_WAIT_FOR_NEGATIVE_PROXIMITY:J = 0x10800000015L

.field public static final IS_SANDMAN_SCHEDULED:J = 0x10800000016L

.field public static final IS_SANDMAN_SUMMONED:J = 0x10800000017L

.field public static final IS_SCREEN_BRIGHTNESS_BOOST_IN_PROGRESS:J = 0x10800000023L

.field public static final IS_STAY_ON:J = 0x1080000000aL

.field public static final IS_SYSTEM_READY:J = 0x1080000000dL

.field public static final IS_WAKEFULNESS_CHANGING:J = 0x10800000004L

.field public static final LAST_INTERACTIVE_POWER_HINT_TIME_MS:J = 0x10300000021L

.field public static final LAST_SCREEN_BRIGHTNESS_BOOST_TIME_MS:J = 0x10300000022L

.field public static final LAST_SLEEP_TIME_MS:J = 0x1030000001eL

.field public static final LAST_USER_ACTIVITY_TIME_MS:J = 0x1030000001fL

.field public static final LAST_USER_ACTIVITY_TIME_NO_CHANGE_LIGHTS_MS:J = 0x10300000020L

.field public static final LAST_WAKE_TIME_MS:J = 0x1030000001dL

.field public static final LOOPER:J = 0x10b0000002eL

.field public static final NOTIFY_LONG_DISPATCHED_MS:J = 0x10300000012L

.field public static final NOTIFY_LONG_NEXT_CHECK_MS:J = 0x10300000013L

.field public static final NOTIFY_LONG_SCHEDULED_MS:J = 0x10300000011L

.field public static final PLUG_TYPE:J = 0x10e00000006L

.field public static final SCREEN_DIM_DURATION_MS:J = 0x1050000002aL

.field public static final SCREEN_OFF_TIMEOUT_MS:J = 0x10500000029L

.field public static final SETTINGS_AND_CONFIGURATION:J = 0x10b00000027L

.field public static final SLEEP_TIMEOUT_MS:J = 0x11100000028L

.field public static final SUSPEND_BLOCKERS:J = 0x20b00000030L

.field public static final UID_STATES:J = 0x20b0000002dL

.field public static final USER_ACTIVITY:J = 0x10b00000014L

.field public static final WAKEFULNESS:J = 0x10e00000003L

.field public static final WAKE_LOCKS:J = 0x20b0000002fL

.field public static final WIRELESS_CHARGER_DETECTOR:J = 0x10b00000031L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
