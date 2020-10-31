.class Landroid/widget/MediaController$4;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    # invokes: Landroid/widget/MediaController;->setProgress()I
    invoke-static {v0}, Landroid/widget/MediaController;->access$500(Landroid/widget/MediaController;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    # getter for: Landroid/widget/MediaController;->mDragging:Z
    invoke-static {v1}, Landroid/widget/MediaController;->access$600(Landroid/widget/MediaController;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    # getter for: Landroid/widget/MediaController;->mShowing:Z
    invoke-static {v1}, Landroid/widget/MediaController;->access$100(Landroid/widget/MediaController;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    # getter for: Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v1}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    # getter for: Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/widget/MediaController;->access$800(Landroid/widget/MediaController;)Ljava/lang/Runnable;

    move-result-object v2

    rem-int/lit16 v3, v0, 0x3e8

    rsub-int v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/MediaController;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_30
    return-void
.end method
