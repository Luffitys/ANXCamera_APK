.class public Landroid/media/tv/tuner/dvr/DvrPlayback;
.super Ljava/lang/Object;
.source "DvrPlayback.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/dvr/DvrPlayback$PlaybackStatus;
    }
.end annotation


# static fields
.field public static final PLAYBACK_STATUS_ALMOST_EMPTY:I = 0x2

.field public static final PLAYBACK_STATUS_ALMOST_FULL:I = 0x4

.field public static final PLAYBACK_STATUS_EMPTY:I = 0x1

.field public static final PLAYBACK_STATUS_FULL:I = 0x8

.field private static final TAG:Ljava/lang/String; = "TvTunerPlayback"

.field private static sInstantId:I


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mListener:Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;

.field private mNativeContext:J

.field private mSegmentId:I

.field private mUnderflow:I

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Landroid/media/tv/tuner/dvr/DvrPlayback;->sInstantId:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mSegmentId:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mUserId:I

    sget v0, Landroid/media/tv/tuner/dvr/DvrPlayback;->sInstantId:I

    const v1, 0xffff

    and-int/2addr v1, v0

    shl-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mSegmentId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/media/tv/tuner/dvr/DvrPlayback;->sInstantId:I

    return-void
.end method

.method private native nativeAttachFilter(Landroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native nativeClose()I
.end method

.method private native nativeConfigureDvr(Landroid/media/tv/tuner/dvr/DvrSettings;)I
.end method

.method private native nativeDetachFilter(Landroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native nativeFlushDvr()I
.end method

.method private native nativeRead(J)J
.end method

.method private native nativeRead([BJJ)J
.end method

.method private native nativeSetFileDescriptor(I)V
.end method

.method private native nativeStartDvr()I
.end method

.method private native nativeStopDvr()I
.end method

.method private onPlaybackStatusChanged(I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    iget v1, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mUnderflow:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mUnderflow:I

    :cond_8
    iget-object v0, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_18

    iget-object v1, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mListener:Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;

    if-eqz v1, :cond_18

    new-instance v1, Landroid/media/tv/tuner/dvr/-$$Lambda$DvrPlayback$sKzn5fYfElwunzAUVfbswXnopYc;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/tuner/dvr/-$$Lambda$DvrPlayback$sKzn5fYfElwunzAUVfbswXnopYc;-><init>(Landroid/media/tv/tuner/dvr/DvrPlayback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_18
    return-void
.end method


# virtual methods
.method public attachFilter(Landroid/media/tv/tuner/filter/Filter;)I
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .registers 3

    invoke-direct {p0}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeClose()I

    move-result v0

    if-eqz v0, :cond_b

    const-string v1, "failed to close DVR playback"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    :cond_b
    return-void
.end method

.method public configure(Landroid/media/tv/tuner/dvr/DvrSettings;)I
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeConfigureDvr(Landroid/media/tv/tuner/dvr/DvrSettings;)I

    move-result v0

    return v0
.end method

.method public detachFilter(Landroid/media/tv/tuner/filter/Filter;)I
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public flush()I
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeFlushDvr()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onPlaybackStatusChanged$0$DvrPlayback(I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mListener:Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;

    invoke-interface {v0, p1}, Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;->onPlaybackStatusChanged(I)V

    return-void
.end method

.method public read(J)J
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeRead(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([BJJ)J
    .registers 10

    add-long v0, p4, p2

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_d

    invoke-direct/range {p0 .. p5}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeRead([BJJ)J

    move-result-wide v0

    return-wide v0

    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeSetFileDescriptor(I)V

    return-void
.end method

.method public setListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;)V
    .registers 3

    iput-object p1, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mListener:Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;

    return-void
.end method

.method public start()I
    .registers 9

    iget v0, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mSegmentId:I

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    const v2, 0xffff

    and-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mSegmentId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mUnderflow:I

    const-string v0, "TvTunerPlayback"

    const-string v1, "Write Stats Log for Playback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mUserId:I

    iget v6, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mSegmentId:I

    const/16 v2, 0x117

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    invoke-direct {p0}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeStartDvr()I

    move-result v0

    return v0
.end method

.method public stop()I
    .registers 9

    const-string v0, "TvTunerPlayback"

    const-string v1, "Write Stats Log for Playback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mUserId:I

    iget v6, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mSegmentId:I

    iget v7, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mUnderflow:I

    const/16 v2, 0x117

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    invoke-direct {p0}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeStopDvr()I

    move-result v0

    return v0
.end method
