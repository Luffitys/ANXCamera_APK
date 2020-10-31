.class Lmiui/maml/elements/MusicControlScreenElement$4;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPlaying:Z
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$2400(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mMetadata:Landroid/media/MediaMetadata;
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$1000(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_76

    :cond_11
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mMetadata:Landroid/media/MediaMetadata;
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$1000(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object v0

    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$1700(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicController;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/maml/elements/MusicController;->getEstimatedMediaPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_75

    cmp-long v4, v2, v4

    if-gez v4, :cond_32

    goto :goto_75

    :cond_32
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v4

    long-to-double v5, v0

    invoke-virtual {v4, v5, v6}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2600(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v4

    long-to-double v5, v2

    invoke-virtual {v4, v5, v6}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2700(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v4

    if-eqz v4, :cond_5b

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$1500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicLyricParser$Lyric;

    move-result-object v4

    if-eqz v4, :cond_5b

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateLyricVar(J)V
    invoke-static {v4, v2, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$2800(Lmiui/maml/elements/MusicControlScreenElement;J)V

    :cond_5b
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v4}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v4}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressInterval:I
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$2900(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_75
    :goto_75
    return-void

    :cond_76
    :goto_76
    return-void
.end method
