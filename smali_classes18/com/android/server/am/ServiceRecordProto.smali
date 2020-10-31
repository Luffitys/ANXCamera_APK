.class public final Lcom/android/server/am/ServiceRecordProto;
.super Ljava/lang/Object;
.source "ServiceRecordProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ServiceRecordProto$StartItem;,
        Lcom/android/server/am/ServiceRecordProto$Crash;,
        Lcom/android/server/am/ServiceRecordProto$ExecuteNesting;,
        Lcom/android/server/am/ServiceRecordProto$Start;,
        Lcom/android/server/am/ServiceRecordProto$Foreground;,
        Lcom/android/server/am/ServiceRecordProto$AppInfo;
    }
.end annotation


# static fields
.field public static final ALLOW_WHILE_IN_USE_PERMISSION_IN_FGS:J = 0x1080000001bL

.field public static final APP:J = 0x10b00000009L

.field public static final APPINFO:J = 0x10b00000008L

.field public static final BINDINGS:J = 0x20b00000019L

.field public static final CONNECTIONS:J = 0x20b0000001aL

.field public static final CRASH:J = 0x10b00000016L

.field public static final CREATED_FROM_FG:J = 0x10800000012L

.field public static final CREATE_REAL_TIME:J = 0x10b0000000eL

.field public static final DELAYED:J = 0x1080000000cL

.field public static final DELIVERED_STARTS:J = 0x20b00000017L

.field public static final DESTORY_TIME:J = 0x10b00000015L

.field public static final EXECUTE:J = 0x10b00000014L

.field public static final FOREGROUND:J = 0x10b0000000dL

.field public static final INTENT:J = 0x10b00000004L

.field public static final ISOLATED_PROC:J = 0x10b0000000aL

.field public static final IS_RUNNING:J = 0x10800000002L

.field public static final LAST_ACTIVITY_TIME:J = 0x10b00000010L

.field public static final PACKAGE_NAME:J = 0x10900000005L

.field public static final PENDING_STARTS:J = 0x20b00000018L

.field public static final PERMISSION:J = 0x10900000007L

.field public static final PID:J = 0x10500000003L

.field public static final PROCESS_NAME:J = 0x10900000006L

.field public static final RESTART_TIME:J = 0x10b00000011L

.field public static final SHORT_NAME:J = 0x10900000001L

.field public static final START:J = 0x10b00000013L

.field public static final STARTING_BG_TIMEOUT:J = 0x10b0000000fL

.field public static final WHITELIST_MANAGER:J = 0x1080000000bL


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
