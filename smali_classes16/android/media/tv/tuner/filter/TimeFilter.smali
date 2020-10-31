.class public Landroid/media/tv/tuner/filter/TimeFilter;
.super Ljava/lang/Object;
.source "TimeFilter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private mEnable:Z

.field private mNativeContext:J


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/TimeFilter;->mEnable:Z

    return-void
.end method

.method private native nativeClearTimestamp()I
.end method

.method private native nativeClose()I
.end method

.method private native nativeGetSourceTime()Ljava/lang/Long;
.end method

.method private native nativeGetTimestamp()Ljava/lang/Long;
.end method

.method private native nativeSetTimestamp(J)I
.end method


# virtual methods
.method public clearTimestamp()I
    .registers 3

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/TimeFilter;->nativeClearTimestamp()I

    move-result v0

    if-nez v0, :cond_9

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/TimeFilter;->mEnable:Z

    :cond_9
    return v0
.end method

.method public close()V
    .registers 3

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/TimeFilter;->nativeClose()I

    move-result v0

    if-eqz v0, :cond_b

    const-string v1, "Failed to close time filter."

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    :cond_b
    return-void
.end method

.method public getSourceTime()J
    .registers 3

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/TimeFilter;->mEnable:Z

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_7
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/TimeFilter;->nativeGetSourceTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeStamp()J
    .registers 3

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/TimeFilter;->mEnable:Z

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_7
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/TimeFilter;->nativeGetTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setCurrentTimestamp(J)I
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/filter/TimeFilter;->nativeSetTimestamp(J)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/TimeFilter;->mEnable:Z

    :cond_9
    return v0
.end method
