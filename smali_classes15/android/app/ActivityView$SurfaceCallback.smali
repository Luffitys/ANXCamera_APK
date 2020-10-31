.class Landroid/app/ActivityView$SurfaceCallback;
.super Ljava/lang/Object;
.source "ActivityView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceCallback"
.end annotation


# instance fields
.field private final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field private final mTempMetrics:Landroid/util/DisplayMetrics;

.field final synthetic this$0:Landroid/app/ActivityView;


# direct methods
.method private constructor <init>(Landroid/app/ActivityView;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/view/DisplayInfo;

    invoke-direct {p1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityView$SurfaceCallback;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityView$SurfaceCallback;->mTempMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityView;Landroid/app/ActivityView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityView$SurfaceCallback;-><init>(Landroid/app/ActivityView;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-virtual {v0}, Landroid/app/ActivityView;->getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView$SurfaceCallback;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    iget-object v1, p0, Landroid/app/ActivityView$SurfaceCallback;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Landroid/app/ActivityView$SurfaceCallback;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Landroid/app/ActivityView$SurfaceCallback;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne p3, v1, :cond_26

    iget-object v1, p0, Landroid/app/ActivityView$SurfaceCallback;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq p4, v1, :cond_38

    :cond_26
    iget-object v1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;
    invoke-static {v1}, Landroid/app/ActivityView;->access$200(Landroid/app/ActivityView;)Landroid/window/TaskEmbedder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/window/TaskEmbedder;->resizeTask(II)V

    iget-object v1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;
    invoke-static {v1}, Landroid/app/ActivityView;->access$200(Landroid/app/ActivityView;)Landroid/window/TaskEmbedder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TaskEmbedder;->notifyBoundsChanged()V

    :cond_38
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;
    invoke-static {v0}, Landroid/app/ActivityView;->access$200(Landroid/app/ActivityView;)Landroid/window/TaskEmbedder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TaskEmbedder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    # invokes: Landroid/app/ActivityView;->initTaskEmbedder(Landroid/view/SurfaceControl;)Z
    invoke-static {v0, v1}, Landroid/app/ActivityView;->access$400(Landroid/app/ActivityView;Landroid/view/SurfaceControl;)Z

    goto :goto_3b

    :cond_1a
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;
    invoke-static {v0}, Landroid/app/ActivityView;->access$500(Landroid/app/ActivityView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;
    invoke-static {v1}, Landroid/app/ActivityView;->access$200(Landroid/app/ActivityView;)Landroid/window/TaskEmbedder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TaskEmbedder;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v2}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_3b
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;
    invoke-static {v0}, Landroid/app/ActivityView;->access$200(Landroid/app/ActivityView;)Landroid/window/TaskEmbedder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-virtual {v1}, Landroid/app/ActivityView;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-virtual {v2}, Landroid/app/ActivityView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/window/TaskEmbedder;->resizeTask(II)V

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;
    invoke-static {v0}, Landroid/app/ActivityView;->access$200(Landroid/app/ActivityView;)Landroid/window/TaskEmbedder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TaskEmbedder;->start()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;
    invoke-static {v0}, Landroid/app/ActivityView;->access$200(Landroid/app/ActivityView;)Landroid/window/TaskEmbedder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TaskEmbedder;->stop()V

    return-void
.end method
