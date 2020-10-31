.class Landroid/media/tv/tuner/Tuner$1;
.super Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;
.source "Tuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/Tuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/tuner/Tuner;


# direct methods
.method constructor <init>(Landroid/media/tv/tuner/Tuner;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/tuner/Tuner$1;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-direct {p0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onReclaimResources()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$1;->this$0:Landroid/media/tv/tuner/Tuner;

    # getter for: Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;
    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->access$000(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$Frontend;

    move-result-object v0

    if-eqz v0, :cond_14

    const/16 v0, 0x114

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner$1;->this$0:Landroid/media/tv/tuner/Tuner;

    # getter for: Landroid/media/tv/tuner/Tuner;->mUserId:I
    invoke-static {v1}, Landroid/media/tv/tuner/Tuner;->access$100(Landroid/media/tv/tuner/Tuner;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    :cond_14
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$1;->this$0:Landroid/media/tv/tuner/Tuner;

    # getter for: Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;
    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->access$200(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner$1;->this$0:Landroid/media/tv/tuner/Tuner;

    # getter for: Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;
    invoke-static {v1}, Landroid/media/tv/tuner/Tuner;->access$200(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$EventHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/tv/tuner/Tuner$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/tv/tuner/Tuner$EventHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
