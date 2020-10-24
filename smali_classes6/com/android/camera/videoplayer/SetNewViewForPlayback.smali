.class public Lcom/android/camera/videoplayer/SetNewViewForPlayback;
.super Lcom/android/camera/videoplayer/player_messages/PlayerMessage;
.source ""


# instance fields
.field private final mCallback:Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;

.field private final mCurrentItemMetaData:Lcom/android/camera/videoplayer/meta/MetaData;

.field private final mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;


# direct methods
.method public constructor <init>(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    iput-object p1, p0, Lcom/android/camera/videoplayer/SetNewViewForPlayback;->mCurrentItemMetaData:Lcom/android/camera/videoplayer/meta/MetaData;

    iput-object p2, p0, Lcom/android/camera/videoplayer/SetNewViewForPlayback;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    iput-object p3, p0, Lcom/android/camera/videoplayer/SetNewViewForPlayback;->mCallback:Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;

    return-void
.end method


# virtual methods
.method protected performAction(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/videoplayer/SetNewViewForPlayback;->mCallback:Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;

    iget-object v0, p0, Lcom/android/camera/videoplayer/SetNewViewForPlayback;->mCurrentItemMetaData:Lcom/android/camera/videoplayer/meta/MetaData;

    iget-object p0, p0, Lcom/android/camera/videoplayer/SetNewViewForPlayback;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;->setCurrentItem(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;)V

    return-void
.end method

.method protected stateAfter()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 0

    sget-object p0, Lcom/android/camera/videoplayer/PlayerMessageState;->IDLE:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object p0
.end method

.method protected stateBefore()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 0

    sget-object p0, Lcom/android/camera/videoplayer/PlayerMessageState;->SETTING_NEW_PLAYER:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/camera/videoplayer/SetNewViewForPlayback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentPlayer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/videoplayer/SetNewViewForPlayback;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
