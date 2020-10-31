.class public Lcom/android/internal/os/BinderCallsStats$CallStat;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallStat"
.end annotation


# instance fields
.field public final binderClass:Ljava/lang/Class;
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

.field public final callingUid:I

.field public cpuTimeMicros:J

.field public exceptionCount:J

.field public latencyMicros:J

.field public maxCpuTimeMicros:J

.field public maxLatencyMicros:J

.field public maxReplySizeBytes:J

.field public maxRequestSizeBytes:J

.field public recordedCallCount:J

.field public final screenInteractive:Z

.field public final transactionCode:I


# direct methods
.method constructor <init>(ILjava/lang/Class;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    iput-object p2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput p3, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput-boolean p4, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    return-void
.end method
