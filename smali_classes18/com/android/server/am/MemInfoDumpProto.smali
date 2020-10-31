.class public final Lcom/android/server/am/MemInfoDumpProto;
.super Ljava/lang/Object;
.source "MemInfoDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemInfoDumpProto$MemItem;,
        Lcom/android/server/am/MemInfoDumpProto$AppData;,
        Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;
    }
.end annotation


# static fields
.field public static final APP_PROCESSES:J = 0x20b00000004L

.field public static final CACHED_KERNEL_KB:J = 0x1030000000bL

.field public static final CACHED_PSS_KB:J = 0x1030000000aL

.field public static final ELAPSED_REALTIME_MS:J = 0x10300000002L

.field public static final FREE_KB:J = 0x1030000000cL

.field public static final IS_HIGH_END_GFX:J = 0x1080000001cL

.field public static final IS_LOW_RAM_DEVICE:J = 0x1080000001bL

.field public static final KSM_SHARED_KB:J = 0x10300000014L

.field public static final KSM_SHARING_KB:J = 0x10300000013L

.field public static final KSM_UNSHARED_KB:J = 0x10300000015L

.field public static final KSM_VOLATILE_KB:J = 0x10300000016L

.field public static final LOST_RAM_KB:J = 0x1030000000fL

.field public static final NATIVE_PROCESSES:J = 0x20b00000003L

.field public static final OOM_KB:J = 0x10300000019L

.field public static final RESTORE_LIMIT_KB:J = 0x1030000001aL

.field public static final STATUS:J = 0x10e00000009L

.field public static final TOTAL_PSS_BY_CATEGORY:J = 0x20b00000007L

.field public static final TOTAL_PSS_BY_OOM_ADJUSTMENT:J = 0x20b00000006L

.field public static final TOTAL_PSS_BY_PROCESS:J = 0x20b00000005L

.field public static final TOTAL_RAM_KB:J = 0x10300000008L

.field public static final TOTAL_RSS_BY_CATEGORY:J = 0x20b0000001fL

.field public static final TOTAL_RSS_BY_OOM_ADJUSTMENT:J = 0x20b0000001eL

.field public static final TOTAL_RSS_BY_PROCESS:J = 0x20b0000001dL

.field public static final TOTAL_ZRAM_KB:J = 0x10300000010L

.field public static final TOTAL_ZRAM_SWAP_KB:J = 0x10300000012L

.field public static final TUNING_LARGE_MB:J = 0x10500000018L

.field public static final TUNING_MB:J = 0x10500000017L

.field public static final UPTIME_DURATION_MS:J = 0x10300000001L

.field public static final USED_KERNEL_KB:J = 0x1030000000eL

.field public static final USED_PSS_KB:J = 0x1030000000dL

.field public static final ZRAM_PHYSICAL_USED_IN_SWAP_KB:J = 0x10300000011L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
