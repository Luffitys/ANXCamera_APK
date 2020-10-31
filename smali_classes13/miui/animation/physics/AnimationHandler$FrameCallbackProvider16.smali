.class Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16;
.super Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/physics/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameCallbackProvider16"
.end annotation


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method constructor <init>(Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;-><init>(Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16;->mChoreographer:Landroid/view/Choreographer;

    new-instance v0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16$1;

    invoke-direct {v0, p0}, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16$1;-><init>(Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16;)V

    iput-object v0, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method


# virtual methods
.method postFrameCallback()V
    .registers 3

    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
