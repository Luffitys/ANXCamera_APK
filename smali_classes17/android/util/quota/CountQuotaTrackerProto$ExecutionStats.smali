.class public final Landroid/util/quota/CountQuotaTrackerProto$ExecutionStats;
.super Ljava/lang/Object;
.source "CountQuotaTrackerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/quota/CountQuotaTrackerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExecutionStats"
.end annotation


# static fields
.field public static final COUNT_IN_WINDOW:J = 0x10500000004L

.field public static final COUNT_LIMIT:J = 0x10500000003L

.field public static final EXPIRATION_TIME_ELAPSED:J = 0x10300000001L

.field public static final IN_QUOTA_TIME_ELAPSED:J = 0x10300000005L

.field public static final WINDOW_SIZE_MS:J = 0x10300000002L


# instance fields
.field final synthetic this$0:Landroid/util/quota/CountQuotaTrackerProto;


# direct methods
.method public constructor <init>(Landroid/util/quota/CountQuotaTrackerProto;)V
    .registers 2

    iput-object p1, p0, Landroid/util/quota/CountQuotaTrackerProto$ExecutionStats;->this$0:Landroid/util/quota/CountQuotaTrackerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
