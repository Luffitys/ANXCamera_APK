.class Landroid/media/tv/TvView$MySessionCallback;
.super Landroid/media/tv/TvInputManager$SessionCallback;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySessionCallback"
.end annotation


# instance fields
.field mChannelUri:Landroid/net/Uri;

.field final mInputId:Ljava/lang/String;

.field mRecordedProgramUri:Landroid/net/Uri;

.field mTuneParams:Landroid/os/Bundle;

.field final synthetic this$0:Landroid/media/tv/TvView;


# direct methods
.method constructor <init>(Landroid/media/tv/TvView;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    iput-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$SessionCallback;-><init>()V

    iput-object p2, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/TvView$MySessionCallback;->mRecordedProgramUri:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/media/tv/TvView;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$SessionCallback;-><init>()V

    iput-object p2, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    iput-object p4, p0, Landroid/media/tv/TvView$MySessionCallback;->mTuneParams:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onChannelRetuned(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_11

    const-string v0, "TvView"

    const-string/jumbo v1, "onChannelRetuned - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/media/tv/TvView$TvInputCallback;->onChannelRetuned(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_24
    return-void
.end method

.method public onContentAllowed(Landroid/media/tv/TvInputManager$Session;)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_11

    const-string v0, "TvView"

    const-string/jumbo v1, "onContentAllowed - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvView$TvInputCallback;->onContentAllowed(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public onContentBlocked(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvContentRating;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_11

    const-string v0, "TvView"

    const-string/jumbo v1, "onContentBlocked - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/media/tv/TvView$TvInputCallback;->onContentBlocked(Ljava/lang/String;Landroid/media/tv/TvContentRating;)V

    :cond_24
    return-void
.end method

.method public onLayoutSurface(Landroid/media/tv/TvInputManager$Session;IIII)V
    .registers 8

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_11

    const-string v0, "TvView"

    const-string/jumbo v1, "onLayoutSurface - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSurfaceViewLeft:I
    invoke-static {v0, p2}, Landroid/media/tv/TvView;->access$2102(Landroid/media/tv/TvView;I)I

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSurfaceViewTop:I
    invoke-static {v0, p3}, Landroid/media/tv/TvView;->access$2202(Landroid/media/tv/TvView;I)I

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSurfaceViewRight:I
    invoke-static {v0, p4}, Landroid/media/tv/TvView;->access$2302(Landroid/media/tv/TvView;I)I

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSurfaceViewBottom:I
    invoke-static {v0, p5}, Landroid/media/tv/TvView;->access$2402(Landroid/media/tv/TvView;I)I

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    const/4 v1, 0x1

    # setter for: Landroid/media/tv/TvView;->mUseRequestedSurfaceLayout:Z
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->access$2502(Landroid/media/tv/TvView;Z)Z

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-virtual {v0}, Landroid/media/tv/TvView;->requestLayout()V

    return-void
.end method

.method public onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .registers 7

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_16

    const-string v0, "TvView"

    const-string/jumbo v1, "onSessionCreated - session already created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session;->release()V

    :cond_15
    return-void

    :cond_16
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v0, p1}, Landroid/media/tv/TvView;->access$902(Landroid/media/tv/TvView;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;

    if-eqz p1, :cond_108

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1000(Landroid/media/tv/TvView;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v2}, Landroid/media/tv/TvView;->access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_27

    :cond_45
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1000(Landroid/media/tv/TvView;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    # getter for: Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/tv/TvView;->access$1100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_53
    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-virtual {v1}, Landroid/media/tv/TvView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;
    invoke-static {}, Landroid/media/tv/TvView;->access$1200()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_78

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # invokes: Landroid/media/tv/TvView;->checkChangeHdmiCecActiveSourcePermission()Z
    invoke-static {v1}, Landroid/media/tv/TvView;->access$1300(Landroid/media/tv/TvView;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v1}, Landroid/media/tv/TvView;->access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$Session;->setMain()V

    :cond_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_53 .. :try_end_79} :catchall_105

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$500(Landroid/media/tv/TvView;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$500(Landroid/media/tv/TvView;)Landroid/view/Surface;

    move-result-object v1

    # invokes: Landroid/media/tv/TvView;->setSessionSurface(Landroid/view/Surface;)V
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->access$600(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSurfaceChanged:Z
    invoke-static {v0}, Landroid/media/tv/TvView;->access$300(Landroid/media/tv/TvView;)Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSurfaceFormat:I
    invoke-static {v0}, Landroid/media/tv/TvView;->access$000(Landroid/media/tv/TvView;)I

    move-result v1

    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSurfaceWidth:I
    invoke-static {v2}, Landroid/media/tv/TvView;->access$100(Landroid/media/tv/TvView;)I

    move-result v2

    iget-object v3, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSurfaceHeight:I
    invoke-static {v3}, Landroid/media/tv/TvView;->access$200(Landroid/media/tv/TvView;)I

    move-result v3

    # invokes: Landroid/media/tv/TvView;->dispatchSurfaceChanged(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/tv/TvView;->access$400(Landroid/media/tv/TvView;III)V

    :cond_a7
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # invokes: Landroid/media/tv/TvView;->createSessionOverlayView()V
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1400(Landroid/media/tv/TvView;)V

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mStreamVolume:Ljava/lang/Float;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1500(Landroid/media/tv/TvView;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_c7

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mStreamVolume:Ljava/lang/Float;
    invoke-static {v1}, Landroid/media/tv/TvView;->access$1500(Landroid/media/tv/TvView;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session;->setStreamVolume(F)V

    :cond_c7
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCaptionEnabled:Ljava/lang/Boolean;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1600(Landroid/media/tv/TvView;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_e2

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCaptionEnabled:Ljava/lang/Boolean;
    invoke-static {v1}, Landroid/media/tv/TvView;->access$1600(Landroid/media/tv/TvView;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session;->setCaptionEnabled(Z)V

    :cond_e2
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    if-eqz v0, :cond_f4

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->mTuneParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_ff

    :cond_f4
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mRecordedProgramUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session;->timeShiftPlay(Landroid/net/Uri;)V

    :goto_ff
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # invokes: Landroid/media/tv/TvView;->ensurePositionTracking()V
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)V

    goto :goto_121

    :catchall_105
    move-exception v1

    :try_start_106
    monitor-exit v0
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_105

    throw v1

    :cond_108
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    const/4 v1, 0x0

    # setter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->access$802(Landroid/media/tv/TvView;Landroid/media/tv/TvView$MySessionCallback;)Landroid/media/tv/TvView$MySessionCallback;

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_121

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvView$TvInputCallback;->onConnectionFailed(Ljava/lang/String;)V

    :cond_121
    :goto_121
    return-void
.end method

.method public onSessionEvent(Landroid/media/tv/TvInputManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_11

    const-string v0, "TvView"

    const-string/jumbo v1, "onSessionEvent - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/TvView$TvInputCallback;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_24
    return-void
.end method

.method public onSessionReleased(Landroid/media/tv/TvInputManager$Session;)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_11

    const-string v0, "TvView"

    const-string/jumbo v1, "onSessionReleased - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    const/4 v1, 0x0

    # setter for: Landroid/media/tv/TvView;->mOverlayViewCreated:Z
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->access$1902(Landroid/media/tv/TvView;Z)Z

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    const/4 v1, 0x0

    # setter for: Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->access$2002(Landroid/media/tv/TvView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->access$802(Landroid/media/tv/TvView;Landroid/media/tv/TvView$MySessionCallback;)Landroid/media/tv/TvView$MySessionCallback;

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->access$902(Landroid/media/tv/TvView;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvView$TvInputCallback;->onDisconnected(Ljava/lang/String;)V

    :cond_3a
    return-void
.end method

.method public onTimeShiftCurrentPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .registers 6

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_11

    const-string v0, "TvView"

    const-string/jumbo v1, "onTimeShiftCurrentPositionChanged - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$2600(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$2600(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/TvView$TimeShiftPositionCallback;->onTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V

    :cond_24
    return-void
.end method

.method public onTimeShiftStartPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .registers 6

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_11

    const-string v0, "TvView"

    const-string/jumbo v1, "onTimeShiftStartPositionChanged - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$2600(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$2600(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/TvView$TimeShiftPositionCallback;->onTimeShiftStartPositionChanged(Ljava/lang/String;J)V

    :cond_24
    return-void
.end method

.method public onTimeShiftStatusChanged(Landroid/media/tv/TvInputManager$Session;I)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_11

    const-string v0, "TvView"

    const-string/jumbo v1, "onTimeShiftStatusChanged - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/media/tv/TvView$TvInputCallback;->onTimeShiftStatusChanged(Ljava/lang/String;I)V

    :cond_24
    return-void
.end method

.method public onTrackSelected(Landroid/media/tv/TvInputManager$Session;ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_11

    const-string v0, "TvView"

    const-string/jumbo v1, "onTrackSelected - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/TvView$TvInputCallback;->onTrackSelected(Ljava/lang/String;ILjava/lang/String;)V

    :cond_24
    return-void
.end method

.method public onTracksChanged(Landroid/media/tv/TvInputManager$Session;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/tv/TvInputManager$Session;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_11

    const-string v0, "TvView"

    const-string/jumbo v1, "onTracksChanged - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/media/tv/TvView$TvInputCallback;->onTracksChanged(Ljava/lang/String;Ljava/util/List;)V

    :cond_24
    return-void
.end method

.method public onVideoAvailable(Landroid/media/tv/TvInputManager$Session;)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_11

    const-string v0, "TvView"

    const-string/jumbo v1, "onVideoAvailable - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvView$TvInputCallback;->onVideoAvailable(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/tv/TvInputManager$Session;II)V
    .registers 6

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_11

    const-string v0, "TvView"

    const-string/jumbo v1, "onVideoSizeChanged - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/TvView$TvInputCallback;->onVideoSizeChanged(Ljava/lang/String;II)V

    :cond_24
    return-void
.end method

.method public onVideoUnavailable(Landroid/media/tv/TvInputManager$Session;I)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_11

    const-string v0, "TvView"

    const-string/jumbo v1, "onVideoUnavailable - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/media/tv/TvView$TvInputCallback;->onVideoUnavailable(Ljava/lang/String;I)V

    :cond_24
    return-void
.end method
