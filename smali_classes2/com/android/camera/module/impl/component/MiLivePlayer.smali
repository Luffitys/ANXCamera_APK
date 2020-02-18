.class public Lcom/android/camera/module/impl/component/MiLivePlayer;
.super Ljava/lang/Object;
.source "MiLivePlayer.java"

# interfaces
.implements Lcom/android/camera/module/impl/component/ILive$ILivePlayer;


# static fields
.field private static final DEFAULT_FPS:I = 0x1e

.field private static final DEFAULT_TARGET_BITRATE:I = 0x1e00000

.field private static final TAG:Ljava/lang/String; = "MiLivePlayer"


# instance fields
.field private mAudioPath:Ljava/lang/String;

.field private mComposeNotifier:Lcom/xiaomi/recordmediaprocess/EffectNotifier;

.field private mComposeState:I

.field private mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

.field private mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

.field private mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

.field private mPlayerNotifier:Lcom/xiaomi/recordmediaprocess/EffectNotifier;

.field private mPlayerState:I

.field private mSegmentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation
.end field

.field private mStateListener:Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    iput v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    new-instance v0, Lcom/android/camera/module/impl/component/MiLivePlayer$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/MiLivePlayer$1;-><init>(Lcom/android/camera/module/impl/component/MiLivePlayer;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerNotifier:Lcom/xiaomi/recordmediaprocess/EffectNotifier;

    new-instance v0, Lcom/android/camera/module/impl/component/MiLivePlayer$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/MiLivePlayer$2;-><init>(Lcom/android/camera/module/impl/component/MiLivePlayer;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeNotifier:Lcom/xiaomi/recordmediaprocess/EffectNotifier;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/impl/component/MiLivePlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setPlayerState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/module/impl/component/MiLivePlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setComposeState(I)V

    return-void
.end method

.method private getComposeStateString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_4

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "COMPOSED"

    return-object p0

    :cond_1
    const-string p0, "PENDING_COMPOSE"

    return-object p0

    :cond_2
    const-string p0, "CREATED"

    return-object p0

    :cond_3
    const-string p0, "IDLE"

    return-object p0

    :cond_4
    const-string p0, "ERROR"

    return-object p0
.end method

.method private getPlayerStateString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_5

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "PAUSE"

    return-object p0

    :cond_1
    const-string p0, "PREVIEWING"

    return-object p0

    :cond_2
    const-string p0, "PENDING_START"

    return-object p0

    :cond_3
    const-string p0, "CREATED"

    return-object p0

    :cond_4
    const-string p0, "IDLE"

    return-object p0

    :cond_5
    const-string p0, "ERROR"

    return-object p0
.end method

.method private initEffectGraph()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mSegmentData:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initEffectGraph mSegmentData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mSegmentData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mSegmentData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mSegmentData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mSegmentData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mSegmentData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;

    invoke-interface {v4}, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v4, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mSegmentData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;

    invoke-interface {v4}, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;->getSpeed()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    invoke-direct {v3}, Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;-><init>()V

    iput-object v3, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    iget-object v3, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    invoke-virtual {v3}, Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;->ConstructMediaEffectGraph()V

    iget-object v3, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;->AddSourcesAndEffectBySourcesPath([Ljava/lang/String;[F)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mAudioPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;->SetAudioMute(Z)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mAudioPath:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;->AddAudioTrack(Ljava/lang/String;Z)J

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Segment data is empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initMediaCompose(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    invoke-direct {v0, v1}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;-><init>(Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    iget v3, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mVideoWidth:I

    iget v4, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mVideoHeight:I

    const/high16 v5, 0x1e00000

    const/16 v6, 0x1e

    iget-object v7, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeNotifier:Lcom/xiaomi/recordmediaprocess/EffectNotifier;

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->ConstructMediaComposeFile(IIIILcom/xiaomi/recordmediaprocess/EffectNotifier;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    invoke-virtual {v0, p1}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->SetComposeFileName(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setComposeState(I)V

    return-void
.end method

.method private initMediaPlayer(II)V
    .locals 3

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mVideoHeight:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mVideoWidth:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    invoke-direct {v0, v2}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;-><init>(Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->ConstructMediaPlayer()Z

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerNotifier:Lcom/xiaomi/recordmediaprocess/EffectNotifier;

    invoke-virtual {v0, v2}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->SetPlayerNotify(Lcom/xiaomi/recordmediaprocess/EffectNotifier;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->SetPlayLoop(Z)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    sget-object v2, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer$SurfaceGravity;->SurfaceGravityResizeAspectFit:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer$SurfaceGravity;

    invoke-virtual {v0, v2, p1, p2}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->setGravity(Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer$SurfaceGravity;II)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    invoke-virtual {p1, v1}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->SetGraphLoop(Z)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    invoke-virtual {p1, v1}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->EnableUserAdjustRotatePlay(Z)V

    sget-object p1, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    const-string p2, "initMediaPlayer"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setPlayerState(I)V

    return-void

    :cond_2
    :goto_0
    sget-object p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    const-string p1, "invalid video size."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private releaseComposeFile()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->DestructMediaComposeFile()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    :cond_0
    return-void
.end method

.method private releaseEffectGraph()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;->DestructMediaEffectGraph()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    :cond_0
    return-void
.end method

.method private releasePlayer()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->DestructMediaPlayer()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    :cond_0
    return-void
.end method

.method private setComposeState(I)V
    .locals 3

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComposeState state change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/MiLivePlayer;->getComposeStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->getComposeStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    invoke-interface {p1, p0}, Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;->onComposeStateChange(I)V

    :cond_0
    return-void
.end method

.method private setPlayerState(I)V
    .locals 3

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player state change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/MiLivePlayer;->getPlayerStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->getPlayerStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    invoke-interface {p1, p0}, Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;->onPlayStateChange(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelCompose()V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->CancelCompose()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->release()V

    return-void
.end method

.method public init(IILjava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", audioPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mVideoWidth:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mVideoHeight:I

    iput-object p3, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mSegmentData:Ljava/util/List;

    iput-object p4, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mAudioPath:Ljava/lang/String;

    return-void
.end method

.method public pausePlayer()V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->PausePreView()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setPlayerState(I)V

    return-void
.end method

.method public release()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->releasePlayer()V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->releaseComposeFile()V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->releaseEffectGraph()V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->reset()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setPlayerState(I)V

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setComposeState(I)V

    return-void
.end method

.method public resumePlayer()V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->ResumePreView()Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setPlayerState(I)V

    return-void
.end method

.method public setStateListener(Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;

    return-void
.end method

.method public startCompose(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCompose path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/MiLivePlayer;->getComposeStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->initEffectGraph()V

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->initMediaCompose(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    invoke-virtual {p1}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->BeginCompose()V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setComposeState(I)V

    return-void
.end method

.method public startPlayer(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlayer state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/MiLivePlayer;->getPlayerStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",texture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->initEffectGraph()V

    invoke-direct {p0, p2, p3}, Lcom/android/camera/module/impl/component/MiLivePlayer;->initMediaPlayer(II)V

    iget-object p2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p2, p3}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->SetViewSurface(Landroid/view/Surface;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setPlayerState(I)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    invoke-virtual {p1}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->StartPreView()V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setPlayerState(I)V

    return-void
.end method

.method public stopPlayer()V
    .locals 3

    sget-object v0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPlayer state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/MiLivePlayer;->getPlayerStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->StopPreView()V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->release()V

    return-void
.end method
