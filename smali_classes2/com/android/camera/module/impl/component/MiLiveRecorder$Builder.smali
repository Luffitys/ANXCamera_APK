.class public Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;
.super Ljava/lang/Object;
.source "MiLiveRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/impl/component/MiLiveRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mActivityBase:Lcom/android/camera/ActivityBase;

.field private mBitrate:I

.field private mFps:I

.field private mHandler:Landroid/os/Handler;

.field private mMaxDuration:J

.field private mRecordingTimeListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

.field private mSegmentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation
.end field

.field private mStateListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;

.field private mVideoHeight:I

.field private mVideoSaveDirPath:Ljava/lang/String;

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mActivityBase:Lcom/android/camera/ActivityBase;

    iput p2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mVideoWidth:I

    iput p3, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mVideoHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Lcom/android/camera/ActivityBase;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mActivityBase:Lcom/android/camera/ActivityBase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mBitrate:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mFps:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mVideoSaveDirPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mMaxDuration:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mRecordingTimeListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mSegmentData:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/camera/module/impl/component/MiLiveRecorder;
    .locals 2

    new-instance v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;-><init>(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;Lcom/android/camera/module/impl/component/MiLiveRecorder$1;)V

    return-object v0
.end method

.method public setBitrate(I)Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;
    .locals 0

    iput p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mBitrate:I

    return-object p0
.end method

.method public setFps(I)Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;
    .locals 0

    iput p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mFps:I

    return-object p0
.end method

.method public setHandler(Landroid/os/Handler;)Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public setMaxDuration(J)Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mMaxDuration:J

    return-object p0
.end method

.method public setRecordingTimeListener(Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;)Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mRecordingTimeListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    return-object p0
.end method

.method public setSegmentData(Ljava/util/List;)Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;)",
            "Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mSegmentData:Ljava/util/List;

    return-object p0
.end method

.method public setStateListener(Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;)Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;

    return-object p0
.end method

.method public setVideoSaveDirPath(Ljava/lang/String;)Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->mVideoSaveDirPath:Ljava/lang/String;

    return-object p0
.end method
