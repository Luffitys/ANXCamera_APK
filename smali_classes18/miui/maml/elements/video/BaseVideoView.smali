.class public abstract Lmiui/maml/elements/video/BaseVideoView;
.super Landroid/view/SurfaceView;
.source "BaseVideoView.java"


# static fields
.field private static final DURATION:Ljava/lang/String; = ".duration"

.field private static final PLAY_STATE:Ljava/lang/String; = ".playState"

.field private static final POSITION:Ljava/lang/String; = ".position"

.field public static final SCALE_MODE_FIT_CROP:I = 0x2

.field public static final SCALE_MODE_FIT_START:I = 0x3

.field public static final SCALE_MODE_FIT_XY:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseVideoView"


# instance fields
.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioFocusType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDataSource:Landroid/media/MediaDataSource;

.field private mDurationVar:Lmiui/maml/data/IndexedVariable;

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mLooping:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mName:Ljava/lang/String;

.field private mPositionVar:Lmiui/maml/data/IndexedVariable;

.field private mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field protected mScaleMode:I

.field private mSeekWhenPrepared:I

.field private mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStateVar:Lmiui/maml/data/IndexedVariable;

.field protected mSurface:Landroid/view/Surface;

.field private mTargetState:I

.field protected mVideoHeight:I

.field protected mVideoWidth:I

.field private mVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x1

    iput v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mScaleMode:I

    const/4 v1, 0x0

    iput v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mCurrentState:I

    iput v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mTargetState:I

    iput-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iput v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    new-instance v0, Lmiui/maml/elements/video/BaseVideoView$1;

    invoke-direct {v0, p0}, Lmiui/maml/elements/video/BaseVideoView$1;-><init>(Lmiui/maml/elements/video/BaseVideoView;)V

    iput-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Lmiui/maml/elements/video/BaseVideoView$2;

    invoke-direct {v0, p0}, Lmiui/maml/elements/video/BaseVideoView$2;-><init>(Lmiui/maml/elements/video/BaseVideoView;)V

    iput-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lmiui/maml/elements/video/BaseVideoView$3;

    invoke-direct {v0, p0}, Lmiui/maml/elements/video/BaseVideoView$3;-><init>(Lmiui/maml/elements/video/BaseVideoView;)V

    iput-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    new-instance v0, Lmiui/maml/elements/video/BaseVideoView$4;

    invoke-direct {v0, p0}, Lmiui/maml/elements/video/BaseVideoView$4;-><init>(Lmiui/maml/elements/video/BaseVideoView;)V

    iput-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lmiui/maml/elements/video/BaseVideoView$5;

    invoke-direct {v0, p0}, Lmiui/maml/elements/video/BaseVideoView$5;-><init>(Lmiui/maml/elements/video/BaseVideoView;)V

    iput-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lmiui/maml/elements/video/BaseVideoView$6;

    invoke-direct {v0, p0}, Lmiui/maml/elements/video/BaseVideoView$6;-><init>(Lmiui/maml/elements/video/BaseVideoView;)V

    iput-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lmiui/maml/elements/video/BaseVideoView$7;

    invoke-direct {v0, p0}, Lmiui/maml/elements/video/BaseVideoView$7;-><init>(Lmiui/maml/elements/video/BaseVideoView;)V

    iput-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p1, p0, Lmiui/maml/elements/video/BaseVideoView;->mContext:Landroid/content/Context;

    iput v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    iput v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    iput v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mCurrentState:I

    iput v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mTargetState:I

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/video/BaseVideoView;)I
    .registers 2

    iget v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$002(Lmiui/maml/elements/video/BaseVideoView;I)I
    .registers 2

    iput p1, p0, Lmiui/maml/elements/video/BaseVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$100(Lmiui/maml/elements/video/BaseVideoView;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Lmiui/maml/elements/video/BaseVideoView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/elements/video/BaseVideoView;->updateDurationVar(I)V

    return-void
.end method

.method static synthetic access$200(Lmiui/maml/elements/video/BaseVideoView;)I
    .registers 2

    iget v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$300(Lmiui/maml/elements/video/BaseVideoView;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/elements/video/BaseVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$400(Lmiui/maml/elements/video/BaseVideoView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/elements/video/BaseVideoView;->updateStateVar(I)V

    return-void
.end method

.method static synthetic access$500(Lmiui/maml/elements/video/BaseVideoView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/elements/video/BaseVideoView;->updatePositionVar(I)V

    return-void
.end method

.method static synthetic access$600(Lmiui/maml/elements/video/BaseVideoView;)I
    .registers 2

    iget v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    return v0
.end method

.method static synthetic access$700(Lmiui/maml/elements/video/BaseVideoView;)Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/maml/elements/video/BaseVideoView;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mLooping:Z

    return v0
.end method

.method static synthetic access$900(Lmiui/maml/elements/video/BaseVideoView;)F
    .registers 2

    iget v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mVolume:F

    return v0
.end method

.method private checkAudioFocus()V
    .registers 5

    iget v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_19

    :cond_c
    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_19
    :goto_19
    return-void
.end method

.method private getStateName(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_1c

    const-string v0, ""

    return-object v0

    :pswitch_6
    const-string v0, "state_playback_completed"

    return-object v0

    :pswitch_9
    const-string v0, "state_paused"

    return-object v0

    :pswitch_c
    const-string v0, "state_playing"

    return-object v0

    :pswitch_f
    const-string v0, "state_prepared"

    return-object v0

    :pswitch_12
    const-string v0, "state_preparing"

    return-object v0

    :pswitch_15
    const-string v0, "state_idle"

    return-object v0

    :pswitch_18
    const-string v0, "state_error"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch -0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private initIndexedVariable(Lmiui/maml/data/Variables;)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".duration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mDurationVar:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".position"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mPositionVar:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".playState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mStateVar:Lmiui/maml/data/IndexedVariable;

    iget v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mCurrentState:I

    invoke-direct {p0, v1}, Lmiui/maml/elements/video/BaseVideoView;->getStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_61
    return-void
.end method

.method private openVideo()V
    .registers 8

    const-string v0, "Unable to open content: "

    const-string v1, "BaseVideoView"

    iget-object v2, p0, Lmiui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lmiui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_ac

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_ac

    :cond_14
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmiui/maml/elements/video/BaseVideoView;->releaseMedia(Z)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    :try_start_1a
    new-instance v5, Lmiui/maml/elements/video/MamlPlayer;

    invoke-direct {v5}, Lmiui/maml/elements/video/MamlPlayer;-><init>()V

    iput-object v5, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lmiui/maml/elements/video/BaseVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v5, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lmiui/maml/elements/video/BaseVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v5, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lmiui/maml/elements/video/BaseVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v5, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lmiui/maml/elements/video/BaseVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v5, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lmiui/maml/elements/video/BaseVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v5, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lmiui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V

    iget v5, p0, Lmiui/maml/elements/video/BaseVideoView;->mScaleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_53

    iget-object v5, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    :cond_53
    iget-object v5, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v5, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v5, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lmiui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    invoke-direct {p0, v3}, Lmiui/maml/elements/video/BaseVideoView;->updateStateVar(I)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_68} :catch_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_68} :catch_6a

    nop

    return-void

    :catch_6a
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v4, p0, Lmiui/maml/elements/video/BaseVideoView;->mCurrentState:I

    iput v4, p0, Lmiui/maml/elements/video/BaseVideoView;->mTargetState:I

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v3, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    return-void

    :catch_8b
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v4, p0, Lmiui/maml/elements/video/BaseVideoView;->mCurrentState:I

    iput v4, p0, Lmiui/maml/elements/video/BaseVideoView;->mTargetState:I

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v3, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    return-void

    :cond_ac
    :goto_ac
    return-void
.end method

.method private updateDurationVar(I)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mDurationVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_8

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_8
    return-void
.end method

.method private updatePositionVar(I)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mPositionVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_8

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_8
    return-void
.end method

.method private updateStateVar(I)V
    .registers 4

    iput p1, p0, Lmiui/maml/elements/video/BaseVideoView;->mCurrentState:I

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mStateVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lmiui/maml/elements/video/BaseVideoView;->getStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method


# virtual methods
.method protected abstract addSurfaceHolderCallback()V
.end method

.method public doTick()V
    .registers 2

    invoke-virtual {p0}, Lmiui/maml/elements/video/BaseVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lmiui/maml/elements/video/BaseVideoView;->getCurrentPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/maml/elements/video/BaseVideoView;->updatePositionVar(I)V

    :cond_d
    return-void
.end method

.method public getCurrentPosition()I
    .registers 2

    invoke-virtual {p0}, Lmiui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .registers 2

    invoke-virtual {p0}, Lmiui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public init(Lmiui/maml/data/Variables;)V
    .registers 2

    invoke-virtual {p0}, Lmiui/maml/elements/video/BaseVideoView;->addSurfaceHolderCallback()V

    invoke-direct {p0, p1}, Lmiui/maml/elements/video/BaseVideoView;->initIndexedVariable(Lmiui/maml/data/Variables;)V

    return-void
.end method

.method public isInPlaybackState()Z
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    iget v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    if-eqz v0, :cond_f

    if-eq v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public isPlaying()Z
    .registers 2

    invoke-virtual {p0}, Lmiui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/maml/elements/video/BaseVideoView;->releaseMedia(Z)V

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method protected abstract onSurfaceCreated(Landroid/view/SurfaceHolder;)V
.end method

.method protected abstract onSurfaceDestroyed()V
.end method

.method public pause()V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_17

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-direct {p0, v1}, Lmiui/maml/elements/video/BaseVideoView;->updateStateVar(I)V

    :cond_17
    iput v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mTargetState:I

    return-void
.end method

.method protected releaseMedia(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    iput v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mCurrentState:I

    if-eqz p1, :cond_11

    iput v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mTargetState:I

    :cond_11
    iget v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1a
    return-void
.end method

.method public seekTo(I)V
    .registers 7

    invoke-virtual {p0}, Lmiui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mCurrentState:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_1a

    :cond_13
    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    int-to-long v3, p1

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v4, v1}, Landroid/media/MediaPlayer;->seekTo(JI)V

    :goto_1a
    iput v2, p0, Lmiui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I

    goto :goto_1f

    :cond_1d
    iput p1, p0, Lmiui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I

    :goto_1f
    return-void
.end method

.method protected abstract setFormat(I)V
.end method

.method public setLooping(Z)V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mLooping:Z

    if-eq v0, p1, :cond_d

    iget-object v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_b
    iput-boolean p1, p0, Lmiui/maml/elements/video/BaseVideoView;->mLooping:Z

    :cond_d
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    return-void
.end method

.method public setScaleMode(I)V
    .registers 3

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    const/4 v0, 0x1

    if-lt p1, v0, :cond_8

    iput p1, p0, Lmiui/maml/elements/video/BaseVideoView;->mScaleMode:I

    :cond_8
    return-void
.end method

.method public setVideoDataSource(Landroid/media/MediaDataSource;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I

    invoke-direct {p0}, Lmiui/maml/elements/video/BaseVideoView;->openVideo()V

    invoke-virtual {p0}, Lmiui/maml/elements/video/BaseVideoView;->requestLayout()V

    invoke-virtual {p0}, Lmiui/maml/elements/video/BaseVideoView;->invalidate()V

    return-void
.end method

.method public setVolume(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_7

    const/4 p1, 0x0

    goto :goto_f

    :cond_7
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_f

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_f
    :goto_f
    cmpl-float v0, p1, v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    const/4 v0, 0x1

    :goto_16
    iget v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    if-eq v0, v1, :cond_1c

    iput v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    :cond_1c
    invoke-direct {p0}, Lmiui/maml/elements/video/BaseVideoView;->checkAudioFocus()V

    iget v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mVolume:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2c

    invoke-virtual {v1, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_2c
    iput p1, p0, Lmiui/maml/elements/video/BaseVideoView;->mVolume:F

    :cond_2e
    return-void
.end method

.method public start()V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lmiui/maml/elements/video/BaseVideoView;->checkAudioFocus()V

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0, v1}, Lmiui/maml/elements/video/BaseVideoView;->updateStateVar(I)V

    :cond_12
    iput v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mTargetState:I

    return-void
.end method

.method public stopPlayback()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiui/maml/elements/video/BaseVideoView;->updateStateVar(I)V

    iput v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mTargetState:I

    iget-object v1, p0, Lmiui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1a
    return-void
.end method

.method protected abstract updateVideoSize()V
.end method
