.class Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16;
.super Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;
.source ""


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method constructor <init>(Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;-><init>(Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16;->mChoreographer:Landroid/view/Choreographer;

    new-instance p1, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16$1;

    invoke-direct {p1, p0}, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16$1;-><init>(Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16;)V

    iput-object p1, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method


# virtual methods
.method postFrameCallback()V
    .locals 1

    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
