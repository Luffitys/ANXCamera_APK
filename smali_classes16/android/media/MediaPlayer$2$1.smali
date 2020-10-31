.class Landroid/media/MediaPlayer$2$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/SubtitleController$Anchor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaPlayer$2;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer$2;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaPlayer$2$1;->this$1:Landroid/media/MediaPlayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubtitleLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer$2$1;->this$1:Landroid/media/MediaPlayer$2;

    iget-object v0, v0, Landroid/media/MediaPlayer$2;->val$timeProvider:Landroid/media/MediaPlayer$TimeProvider;

    # getter for: Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/media/MediaPlayer$TimeProvider;->access$200(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .registers 2

    return-void
.end method
