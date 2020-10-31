.class public final Lcom/android/server/job/StateControllerProto$QuotaController$ExecutionStats;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExecutionStats"
.end annotation


# static fields
.field public static final BG_JOB_COUNT_IN_MAX_PERIOD:J = 0x10500000007L

.field public static final BG_JOB_COUNT_IN_WINDOW:J = 0x10500000005L

.field public static final EXECUTION_TIME_IN_MAX_PERIOD_MS:J = 0x10300000006L

.field public static final EXECUTION_TIME_IN_WINDOW_MS:J = 0x10300000004L

.field public static final EXPIRATION_TIME_ELAPSED:J = 0x10300000002L

.field public static final IN_QUOTA_TIME_ELAPSED:J = 0x10300000008L

.field public static final JOB_COUNT_EXPIRATION_TIME_ELAPSED:J = 0x10300000009L

.field public static final JOB_COUNT_IN_RATE_LIMITING_WINDOW:J = 0x1050000000aL

.field public static final JOB_COUNT_LIMIT:J = 0x1050000000eL

.field public static final SESSION_COUNT_EXPIRATION_TIME_ELAPSED:J = 0x1030000000cL

.field public static final SESSION_COUNT_IN_RATE_LIMITING_WINDOW:J = 0x1050000000dL

.field public static final SESSION_COUNT_IN_WINDOW:J = 0x1050000000bL

.field public static final SESSION_COUNT_LIMIT:J = 0x1050000000fL

.field public static final STANDBY_BUCKET:J = 0x10e00000001L

.field public static final WINDOW_SIZE_MS:J = 0x10300000003L


# instance fields
.field final synthetic this$1:Lcom/android/server/job/StateControllerProto$QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto$QuotaController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$QuotaController$ExecutionStats;->this$1:Lcom/android/server/job/StateControllerProto$QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
