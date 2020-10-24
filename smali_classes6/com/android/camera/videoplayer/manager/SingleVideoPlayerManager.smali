.class public Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/videoplayer/manager/VideoPlayerManager;
.implements Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;
.implements Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;


# static fields
.field private static final SHOW_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "SingleVideoPlayerManager"


# instance fields
.field private mCurrentItemMetaData:Lcom/android/camera/videoplayer/meta/MetaData;

.field private mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

.field private mCurrentPlayerState:Lcom/android/camera/videoplayer/PlayerMessageState;

.field private final mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

.field private final mPlayerItemChangeListener:Lcom/android/camera/videoplayer/manager/PlayerItemChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/videoplayer/manager/PlayerItemChangeListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-direct {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;-><init>()V

    iput-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    sget-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->IDLE:Lcom/android/camera/videoplayer/PlayerMessageState;

    iput-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/android/camera/videoplayer/PlayerMessageState;

    iput-object p1, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerItemChangeListener:Lcom/android/camera/videoplayer/manager/PlayerItemChangeListener;

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/android/camera/videoplayer/PlayerMessageState;

    sget-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->STARTED:Lcom/android/camera/videoplayer/PlayerMessageState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->STARTING:Lcom/android/camera/videoplayer/PlayerMessageState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private resetReleaseClearCurrentPlayer()V
    .locals 3

    sget-object v0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager$1;->$SwitchMap$com$android$camera$videoplayer$PlayerMessageState:[I

    iget-object v1, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/android/camera/videoplayer/PlayerMessageState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unhandled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/android/camera/videoplayer/PlayerMessageState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    new-instance v1, Lcom/android/camera/videoplayer/player_messages/Reset;

    iget-object v2, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-direct {v1, v2, p0}, Lcom/android/camera/videoplayer/player_messages/Reset;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->addMessage(Lcom/android/camera/videoplayer/player_messages/Message;)V

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    new-instance v1, Lcom/android/camera/videoplayer/player_messages/Release;

    iget-object v2, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-direct {v1, v2, p0}, Lcom/android/camera/videoplayer/player_messages/Release;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->addMessage(Lcom/android/camera/videoplayer/player_messages/Message;)V

    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    new-instance v1, Lcom/android/camera/videoplayer/player_messages/ClearPlayerInstance;

    iget-object v2, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-direct {v1, v2, p0}, Lcom/android/camera/videoplayer/player_messages/ClearPlayerInstance;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->addMessage(Lcom/android/camera/videoplayer/player_messages/Message;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private setNewViewForPlayback(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    new-instance v1, Lcom/android/camera/videoplayer/SetNewViewForPlayback;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/camera/videoplayer/SetNewViewForPlayback;-><init>(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->addMessage(Lcom/android/camera/videoplayer/player_messages/Message;)V

    return-void
.end method

.method private startNewPlayback(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;)V
    .locals 2

    invoke-virtual {p2, p0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->addMediaPlayerListener(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;)V

    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    sget-object v1, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->clearAllPendingMessages(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->stopResetReleaseClearCurrentPlayer()V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->setNewViewForPlayback(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;)V

    invoke-direct {p0, p2, p3}, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->startPlayback(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method private startNewPlayback(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2, p0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->addMediaPlayerListener(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;)V

    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    sget-object v1, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->clearAllPendingMessages(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->stopResetReleaseClearCurrentPlayer()V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->setNewViewForPlayback(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;)V

    invoke-direct {p0, p2, p3}, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->startPlayback(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Ljava/lang/String;)V

    return-void
.end method

.method private startPlayback(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/camera/videoplayer/player_messages/PlayerMessage;

    new-instance v2, Lcom/android/camera/videoplayer/player_messages/CreateNewPlayerInstance;

    invoke-direct {v2, p1, p0}, Lcom/android/camera/videoplayer/player_messages/CreateNewPlayerInstance;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/videoplayer/player_messages/SetAssetsDataSourceMessage;

    invoke-direct {v2, p1, p2, p0}, Lcom/android/camera/videoplayer/player_messages/SetAssetsDataSourceMessage;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    const/4 p2, 0x1

    aput-object v2, v1, p2

    new-instance p2, Lcom/android/camera/videoplayer/player_messages/Prepare;

    invoke-direct {p2, p1, p0}, Lcom/android/camera/videoplayer/player_messages/Prepare;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    const/4 v2, 0x2

    aput-object p2, v1, v2

    new-instance p2, Lcom/android/camera/videoplayer/player_messages/Start;

    invoke-direct {p2, p1, p0}, Lcom/android/camera/videoplayer/player_messages/Start;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    const/4 p0, 0x3

    aput-object p2, v1, p0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->addMessages(Ljava/util/List;)V

    return-void
.end method

.method private startPlayback(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/camera/videoplayer/player_messages/PlayerMessage;

    new-instance v2, Lcom/android/camera/videoplayer/player_messages/CreateNewPlayerInstance;

    invoke-direct {v2, p1, p0}, Lcom/android/camera/videoplayer/player_messages/CreateNewPlayerInstance;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/videoplayer/player_messages/SetUrlDataSourceMessage;

    invoke-direct {v2, p1, p2, p0}, Lcom/android/camera/videoplayer/player_messages/SetUrlDataSourceMessage;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Ljava/lang/String;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    const/4 p2, 0x1

    aput-object v2, v1, p2

    new-instance p2, Lcom/android/camera/videoplayer/player_messages/Prepare;

    invoke-direct {p2, p1, p0}, Lcom/android/camera/videoplayer/player_messages/Prepare;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    const/4 v2, 0x2

    aput-object p2, v1, v2

    new-instance p2, Lcom/android/camera/videoplayer/player_messages/Start;

    invoke-direct {p2, p1, p0}, Lcom/android/camera/videoplayer/player_messages/Start;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    const/4 p0, 0x3

    aput-object p2, v1, p0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->addMessages(Ljava/util/List;)V

    return-void
.end method

.method private stopResetReleaseClearCurrentPlayer()V
    .locals 3

    sget-object v0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager$1;->$SwitchMap$com$android$camera$videoplayer$PlayerMessageState:[I

    iget-object v1, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/android/camera/videoplayer/PlayerMessageState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unhandled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/android/camera/videoplayer/PlayerMessageState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    new-instance v1, Lcom/android/camera/videoplayer/player_messages/Stop;

    iget-object v2, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-direct {v1, v2, p0}, Lcom/android/camera/videoplayer/player_messages/Stop;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->addMessage(Lcom/android/camera/videoplayer/player_messages/Message;)V

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    new-instance v1, Lcom/android/camera/videoplayer/player_messages/Reset;

    iget-object v2, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-direct {v1, v2, p0}, Lcom/android/camera/videoplayer/player_messages/Reset;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->addMessage(Lcom/android/camera/videoplayer/player_messages/Message;)V

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    new-instance v1, Lcom/android/camera/videoplayer/player_messages/Release;

    iget-object v2, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-direct {v1, v2, p0}, Lcom/android/camera/videoplayer/player_messages/Release;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->addMessage(Lcom/android/camera/videoplayer/player_messages/Message;)V

    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    new-instance v1, Lcom/android/camera/videoplayer/player_messages/ClearPlayerInstance;

    iget-object v2, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-direct {v1, v2, p0}, Lcom/android/camera/videoplayer/player_messages/ClearPlayerInstance;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->addMessage(Lcom/android/camera/videoplayer/player_messages/Message;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCurrentPlayerState()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object p0
.end method

.method public onBufferingUpdateMainThread(I)V
    .locals 0

    return-void
.end method

.method public onErrorMainThread(II)V
    .locals 0

    sget-object p1, Lcom/android/camera/videoplayer/PlayerMessageState;->ERROR:Lcom/android/camera/videoplayer/PlayerMessageState;

    iput-object p1, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-void
.end method

.method public onVideoCompletionMainThread()V
    .locals 1

    sget-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->PLAYBACK_COMPLETED:Lcom/android/camera/videoplayer/PlayerMessageState;

    iput-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-void
.end method

.method public onVideoPreparedMainThread()V
    .locals 0

    return-void
.end method

.method public onVideoSizeChangedMainThread(II)V
    .locals 0

    return-void
.end method

.method public onVideoStoppedMainThread()V
    .locals 0

    return-void
.end method

.method public playNewVideo(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    sget-object v1, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->pauseQueueProcessing(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->getAssetFileDescriptorDataSource()Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    if-ne v3, p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->startNewPlayback(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;)V

    :goto_2
    iget-object p0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    sget-object p1, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->resumeQueueProcessing(Ljava/lang/String;)V

    return-void
.end method

.method public playNewVideo(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    sget-object v1, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->pauseQueueProcessing(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->getVideoUrlDataSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->startNewPlayback(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;Ljava/lang/String;)V

    :goto_2
    iget-object p0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    sget-object p1, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->resumeQueueProcessing(Ljava/lang/String;)V

    return-void
.end method

.method public resetMediaPlayer()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    sget-object v1, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->pauseQueueProcessing(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    sget-object v1, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->clearAllPendingMessages(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->resetReleaseClearCurrentPlayer()V

    iget-object p0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    sget-object v0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->resumeQueueProcessing(Ljava/lang/String;)V

    return-void
.end method

.method public resumeMediaPlayer()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentItemMetaData:Lcom/android/camera/videoplayer/meta/MetaData;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->getAssetFileDescriptorDataSource()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentItemMetaData:Lcom/android/camera/videoplayer/meta/MetaData;

    iget-object v1, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-virtual {v1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->getAssetFileDescriptorDataSource()Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->playNewVideo(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCurrentItem(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;)V
    .locals 0

    iput-object p2, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    iput-object p1, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentItemMetaData:Lcom/android/camera/videoplayer/meta/MetaData;

    iget-object p0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerItemChangeListener:Lcom/android/camera/videoplayer/manager/PlayerItemChangeListener;

    invoke-interface {p0, p1}, Lcom/android/camera/videoplayer/manager/PlayerItemChangeListener;->onPlayerItemChanged(Lcom/android/camera/videoplayer/meta/MetaData;)V

    return-void
.end method

.method public setVideoPlayerState(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/PlayerMessageState;)V
    .locals 0

    iput-object p2, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mCurrentPlayerState:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-void
.end method

.method public stopAnyPlayback()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    sget-object v1, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->pauseQueueProcessing(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    sget-object v1, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->clearAllPendingMessages(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->stopResetReleaseClearCurrentPlayer()V

    iget-object p0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    sget-object v0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->resumeQueueProcessing(Ljava/lang/String;)V

    return-void
.end method

.method public terminate()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/manager/SingleVideoPlayerManager;->mPlayerHandler:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-virtual {p0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->terminate()V

    return-void
.end method
