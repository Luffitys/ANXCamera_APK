.class Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14$1;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;-><init>(Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;


# direct methods
.method constructor <init>(Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;)V
    .registers 2

    iput-object p1, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14$1;->this$0:Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14$1;->this$0:Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    # setter for: Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J
    invoke-static {v0, v1, v2}, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;->access$402(Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;J)J

    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14$1;->this$0:Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;

    iget-object v0, v0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;->mDispatcher:Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;

    invoke-virtual {v0}, Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->dispatchAnimationFrame()V

    return-void
.end method
