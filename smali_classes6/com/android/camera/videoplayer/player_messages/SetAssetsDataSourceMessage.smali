.class public Lcom/android/camera/videoplayer/player_messages/SetAssetsDataSourceMessage;
.super Lcom/android/camera/videoplayer/player_messages/SetDataSourceMessage;
.source ""


# instance fields
.field private final mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method public constructor <init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/camera/videoplayer/player_messages/SetDataSourceMessage;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    iput-object p2, p0, Lcom/android/camera/videoplayer/player_messages/SetAssetsDataSourceMessage;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method


# virtual methods
.method protected performAction(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/player_messages/SetAssetsDataSourceMessage;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, p0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method
