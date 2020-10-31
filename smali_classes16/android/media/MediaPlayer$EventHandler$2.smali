.class Landroid/media/MediaPlayer$EventHandler$2;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer$EventHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaPlayer$EventHandler;

.field final synthetic val$mediaTimeListener:Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

.field final synthetic val$timestamp:Landroid/media/MediaTimestamp;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer$EventHandler;Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;Landroid/media/MediaTimestamp;)V
    .registers 4

    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler$2;->this$1:Landroid/media/MediaPlayer$EventHandler;

    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler$2;->val$mediaTimeListener:Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

    iput-object p3, p0, Landroid/media/MediaPlayer$EventHandler$2;->val$timestamp:Landroid/media/MediaTimestamp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler$2;->val$mediaTimeListener:Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;

    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler$2;->this$1:Landroid/media/MediaPlayer$EventHandler;

    # getter for: Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/media/MediaPlayer$EventHandler;->access$2800(Landroid/media/MediaPlayer$EventHandler;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler$2;->val$timestamp:Landroid/media/MediaTimestamp;

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;->onMediaTimeDiscontinuity(Landroid/media/MediaPlayer;Landroid/media/MediaTimestamp;)V

    return-void
.end method
