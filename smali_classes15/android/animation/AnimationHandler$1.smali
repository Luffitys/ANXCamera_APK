.class Landroid/animation/AnimationHandler$1;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/AnimationHandler;


# direct methods
.method constructor <init>(Landroid/animation/AnimationHandler;)V
    .registers 2

    iput-object p1, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 6

    iget-object v0, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    # invokes: Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;
    invoke-static {v0}, Landroid/animation/AnimationHandler;->access$000(Landroid/animation/AnimationHandler;)Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v1

    invoke-interface {v1}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->getFrameTime()J

    move-result-wide v1

    # invokes: Landroid/animation/AnimationHandler;->doAnimationFrame(J)V
    invoke-static {v0, v1, v2}, Landroid/animation/AnimationHandler;->access$100(Landroid/animation/AnimationHandler;J)V

    iget-object v0, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    # getter for: Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/animation/AnimationHandler;->access$200(Landroid/animation/AnimationHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    # invokes: Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;
    invoke-static {v0}, Landroid/animation/AnimationHandler;->access$000(Landroid/animation/AnimationHandler;)Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_22
    return-void
.end method
