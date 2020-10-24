.class public abstract Lcom/android/camera/videoplayer/player_messages/PlayerMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/videoplayer/player_messages/Message;


# static fields
.field private static final SHOW_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "PlayerMessage"


# instance fields
.field private final mCallback:Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;

.field private final mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    iput-object p2, p0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->mCallback:Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;

    return-void
.end method


# virtual methods
.method protected final getCurrentState()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->mCallback:Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;

    invoke-interface {p0}, Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;->getCurrentPlayerState()Lcom/android/camera/videoplayer/PlayerMessageState;

    move-result-object p0

    return-object p0
.end method

.method public final messageFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->mCallback:Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;

    iget-object v1, p0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-virtual {p0}, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->stateAfter()Lcom/android/camera/videoplayer/PlayerMessageState;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;->setVideoPlayerState(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/PlayerMessageState;)V

    return-void
.end method

.method protected abstract performAction(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)V
.end method

.method public final polledFromQueue()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->mCallback:Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;

    iget-object v1, p0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-virtual {p0}, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->stateBefore()Lcom/android/camera/videoplayer/PlayerMessageState;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;->setVideoPlayerState(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/PlayerMessageState;)V

    return-void
.end method

.method public final runMessage()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->mCurrentPlayer:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-virtual {p0, v0}, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->performAction(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)V

    return-void
.end method

.method protected abstract stateAfter()Lcom/android/camera/videoplayer/PlayerMessageState;
.end method

.method protected abstract stateBefore()Lcom/android/camera/videoplayer/PlayerMessageState;
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
