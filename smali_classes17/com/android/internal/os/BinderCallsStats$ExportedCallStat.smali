.class public Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportedCallStat"
.end annotation


# instance fields
.field binderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field public callCount:J

.field public callingUid:I

.field public className:Ljava/lang/String;

.field public cpuTimeMicros:J

.field public exceptionCount:J

.field public latencyMicros:J

.field public maxCpuTimeMicros:J

.field public maxLatencyMicros:J

.field public maxReplySizeBytes:J

.field public maxRequestSizeBytes:J

.field public methodName:Ljava/lang/String;

.field public recordedCallCount:J

.field public screenInteractive:Z

.field transactionCode:I

.field public workSourceUid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
