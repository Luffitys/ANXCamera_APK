.class public final Lcom/android/server/job/ConstantsProto$QuotaController;
.super Ljava/lang/Object;
.source "ConstantsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/ConstantsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QuotaController"
.end annotation


# static fields
.field public static final ACTIVE_WINDOW_SIZE_MS:J = 0x10300000003L

.field public static final ALLOWED_TIME_PER_PERIOD_MS:J = 0x10300000001L

.field public static final FREQUENT_WINDOW_SIZE_MS:J = 0x10300000005L

.field public static final IN_QUOTA_BUFFER_MS:J = 0x10300000002L

.field public static final MAX_EXECUTION_TIME_MS:J = 0x10300000007L

.field public static final MAX_JOB_COUNT_ACTIVE:J = 0x10500000008L

.field public static final MAX_JOB_COUNT_FREQUENT:J = 0x1050000000aL

.field public static final MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:J = 0x1050000000cL

.field public static final MAX_JOB_COUNT_RARE:J = 0x1050000000bL

.field public static final MAX_JOB_COUNT_RESTRICTED:J = 0x10500000015L

.field public static final MAX_JOB_COUNT_WORKING:J = 0x10500000009L

.field public static final MAX_SESSION_COUNT_ACTIVE:J = 0x1050000000dL

.field public static final MAX_SESSION_COUNT_FREQUENT:J = 0x1050000000fL

.field public static final MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:J = 0x10500000011L

.field public static final MAX_SESSION_COUNT_RARE:J = 0x10500000010L

.field public static final MAX_SESSION_COUNT_RESTRICTED:J = 0x10500000016L

.field public static final MAX_SESSION_COUNT_WORKING:J = 0x1050000000eL

.field public static final MIN_QUOTA_CHECK_DELAY_MS:J = 0x10300000017L

.field public static final RARE_WINDOW_SIZE_MS:J = 0x10300000006L

.field public static final RATE_LIMITING_WINDOW_MS:J = 0x10500000013L

.field public static final RESTRICTED_WINDOW_SIZE_MS:J = 0x10300000014L

.field public static final TIMING_SESSION_COALESCING_DURATION_MS:J = 0x10300000012L

.field public static final WORKING_WINDOW_SIZE_MS:J = 0x10300000004L


# instance fields
.field final synthetic this$0:Lcom/android/server/job/ConstantsProto;


# direct methods
.method public constructor <init>(Lcom/android/server/job/ConstantsProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/ConstantsProto$QuotaController;->this$0:Lcom/android/server/job/ConstantsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
