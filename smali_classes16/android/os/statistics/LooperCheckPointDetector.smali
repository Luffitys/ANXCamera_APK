.class public abstract Landroid/os/statistics/LooperCheckPointDetector;
.super Ljava/lang/Object;
.source "LooperCheckPointDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;
    }
.end annotation


# static fields
.field private static final FIRST_TIME_DETECT_DELAY_TIME_MS:I = 0x1388

.field private static final LATER_DETECT_DELAY_TIME_MS:I = 0x7d0

.field private static final MESSAGE_DETECTING_CHECKPOINT:I

.field private static mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

.field private static mDetectingThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;
    .registers 1

    sget-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    return-object v0
.end method

.method public static beginLoopOnce(IJ)V
    .registers 4

    sget-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->beginLoopOnce(IJ)V

    return-void
.end method

.method public static endLooperOnce()V
    .registers 1

    sget-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->endLooperOnce()V

    return-void
.end method

.method static start()V
    .registers 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Binder:looper-check-point-detect"

    const/16 v2, -0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    sget-object v1, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    return-void
.end method
