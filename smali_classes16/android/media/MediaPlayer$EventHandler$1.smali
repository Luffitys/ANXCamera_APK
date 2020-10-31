.class Landroid/media/MediaPlayer$EventHandler$1;
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

.field final synthetic val$data:Landroid/media/SubtitleData;

.field final synthetic val$extSubtitleListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer$EventHandler;Landroid/media/MediaPlayer$OnSubtitleDataListener;Landroid/media/SubtitleData;)V
    .registers 4

    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler$1;->this$1:Landroid/media/MediaPlayer$EventHandler;

    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler$1;->val$extSubtitleListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    iput-object p3, p0, Landroid/media/MediaPlayer$EventHandler$1;->val$data:Landroid/media/SubtitleData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler$1;->val$extSubtitleListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler$1;->this$1:Landroid/media/MediaPlayer$EventHandler;

    # getter for: Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/media/MediaPlayer$EventHandler;->access$2800(Landroid/media/MediaPlayer$EventHandler;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler$1;->val$data:Landroid/media/SubtitleData;

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    return-void
.end method
