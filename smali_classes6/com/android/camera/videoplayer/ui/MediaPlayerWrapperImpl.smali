.class public Lcom/android/camera/videoplayer/ui/MediaPlayerWrapperImpl;
.super Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;-><init>(Landroid/media/MediaPlayer;)V

    return-void
.end method
