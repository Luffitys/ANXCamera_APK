.class public final Lcom/android/server/job/StateControllerProto$QuotaController;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QuotaController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$QuotaController$InQuotaAlarmListener;,
        Lcom/android/server/job/StateControllerProto$QuotaController$UidPackageMapping;,
        Lcom/android/server/job/StateControllerProto$QuotaController$PackageStats;,
        Lcom/android/server/job/StateControllerProto$QuotaController$Timer;,
        Lcom/android/server/job/StateControllerProto$QuotaController$TimingSession;,
        Lcom/android/server/job/StateControllerProto$QuotaController$Package;,
        Lcom/android/server/job/StateControllerProto$QuotaController$ExecutionStats;,
        Lcom/android/server/job/StateControllerProto$QuotaController$AlarmListener;,
        Lcom/android/server/job/StateControllerProto$QuotaController$TrackedJob;
    }
.end annotation


# static fields
.field public static final ELAPSED_REALTIME:J = 0x10300000006L

.field public static final FOREGROUND_UIDS:J = 0x20500000003L

.field public static final IN_QUOTA_ALARM_LISTENER:J = 0x10b00000008L

.field public static final IS_CHARGING:J = 0x10800000001L

.field public static final PACKAGE_STATS:J = 0x20b00000005L

.field public static final TRACKED_JOBS:J = 0x20b00000004L

.field public static final UID_TO_PACKAGE_CACHE:J = 0x20b00000007L


# instance fields
.field final synthetic this$0:Lcom/android/server/job/StateControllerProto;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$QuotaController;->this$0:Lcom/android/server/job/StateControllerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
