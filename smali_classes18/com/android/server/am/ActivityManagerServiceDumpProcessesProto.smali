.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpProcessesProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$Controller;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$Profile;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$DebugApp;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$Voice;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$SleepStatus;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$PendingTempWhitelist;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$UidObserverRegistrationProto;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$ScreenCompatPackage;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$LruProcesses;
    }
.end annotation


# static fields
.field public static final ACTIVE_INSTRUMENTATIONS:J = 0x20b00000003L

.field public static final ACTIVE_UIDS:J = 0x20b00000004L

.field public static final ADJ_SEQ:J = 0x10500000031L

.field public static final ALLOW_LOWER_MEM_LEVEL:J = 0x10800000037L

.field public static final ALWAYS_FINISH_ACTIVITIES:J = 0x10800000024L

.field public static final APP_ERRORS:J = 0x10b0000000dL

.field public static final BOOTED:J = 0x10800000029L

.field public static final BOOTING:J = 0x1080000002bL

.field public static final BOOT_ANIMATION_COMPLETE:J = 0x1080000002dL

.field public static final CALL_FINISH_BOOTING:J = 0x1080000002cL

.field public static final CONFIG_WILL_CHANGE:J = 0x10800000015L

.field public static final CONTROLLER:J = 0x10b00000025L

.field public static final CURRENT_TRACKER:J = 0x10b0000001fL

.field public static final DEBUG:J = 0x10b0000001eL

.field public static final DEVICE_IDLE_TEMP_WHITELIST:J = 0x20500000019L

.field public static final DEVICE_IDLE_WHITELIST:J = 0x20500000018L

.field public static final FACTORY_TEST:J = 0x1050000002aL

.field public static final GC_PROCS:J = 0x20b0000000cL

.field public static final GLOBAL_CONFIGURATION:J = 0x10b00000013L

.field public static final GOING_TO_SLEEP:J = 0x10b0000002fL

.field public static final HEAVY_WEIGHT_PROC:J = 0x10b00000012L

.field public static final HOME_PROC:J = 0x10b0000000fL

.field public static final IMPORTANT_PROCS:J = 0x20b00000008L

.field public static final ISOLATED_PROCS:J = 0x20b00000002L

.field public static final LAST_IDLE_TIME:J = 0x10b0000003aL

.field public static final LAST_MEMORY_LEVEL:J = 0x10500000038L

.field public static final LAST_NUM_PROCESSES:J = 0x10500000039L

.field public static final LAST_POWER_CHECK_UPTIME_MS:J = 0x1030000002eL

.field public static final LAUNCHING_ACTIVITY:J = 0x10b00000030L

.field public static final LOW_RAM_SINCE_LAST_IDLE_MS:J = 0x1030000003bL

.field public static final LRU_PROCS:J = 0x10b00000006L

.field public static final LRU_SEQ:J = 0x10500000032L

.field public static final MEM_WATCH_PROCESSES:J = 0x10b00000020L

.field public static final NATIVE_DEBUGGING_APP:J = 0x10900000023L

.field public static final NEW_NUM_SERVICE_PROCS:J = 0x10500000036L

.field public static final NUM_CACHED_HIDDEN_PROCS:J = 0x10500000034L

.field public static final NUM_NON_CACHED_PROCS:J = 0x10500000033L

.field public static final NUM_SERVICE_PROCS:J = 0x10500000035L

.field public static final ON_HOLD_PROCS:J = 0x20b0000000bL

.field public static final PENDING_TEMP_WHITELIST:J = 0x20b0000001aL

.field public static final PERSISTENT_STARTING_PROCS:J = 0x20b00000009L

.field public static final PIDS_SELF_LOCKED:J = 0x20b00000007L

.field public static final PREVIOUS_PROC:J = 0x10b00000010L

.field public static final PREVIOUS_PROC_VISIBLE_TIME_MS:J = 0x10300000011L

.field public static final PROCESSES_READY:J = 0x10800000027L

.field public static final PROCS:J = 0x20b00000001L

.field public static final PROFILE:J = 0x10b00000022L

.field public static final REMOVED_PROCS:J = 0x20b0000000aL

.field public static final RUNNING_VOICE:J = 0x10b0000001cL

.field public static final SCREEN_COMPAT_PACKAGES:J = 0x20b00000016L

.field public static final SLEEP_STATUS:J = 0x10b0000001bL

.field public static final SYSTEM_READY:J = 0x10800000028L

.field public static final TOTAL_PERSISTENT_PROCS:J = 0x10500000026L

.field public static final TRACK_ALLOCATION_APP:J = 0x10900000021L

.field public static final UID_OBSERVERS:J = 0x20b00000017L

.field public static final USER_CONTROLLER:J = 0x10b0000000eL

.field public static final VALIDATE_UIDS:J = 0x20b00000005L

.field public static final VR_CONTROLLER:J = 0x10b0000001dL


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
