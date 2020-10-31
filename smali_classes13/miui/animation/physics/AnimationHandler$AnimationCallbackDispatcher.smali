.class Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/physics/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationCallbackDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/animation/physics/AnimationHandler;


# direct methods
.method constructor <init>(Lmiui/animation/physics/AnimationHandler;)V
    .registers 2

    iput-object p1, p0, Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiui/animation/physics/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchAnimationFrame()V
    .registers 4

    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiui/animation/physics/AnimationHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    # setter for: Lmiui/animation/physics/AnimationHandler;->mCurrentFrameTime:J
    invoke-static {v0, v1, v2}, Lmiui/animation/physics/AnimationHandler;->access$002(Lmiui/animation/physics/AnimationHandler;J)J

    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiui/animation/physics/AnimationHandler;

    # getter for: Lmiui/animation/physics/AnimationHandler;->mCurrentFrameTime:J
    invoke-static {v0}, Lmiui/animation/physics/AnimationHandler;->access$000(Lmiui/animation/physics/AnimationHandler;)J

    move-result-wide v1

    # invokes: Lmiui/animation/physics/AnimationHandler;->doAnimationFrame(J)V
    invoke-static {v0, v1, v2}, Lmiui/animation/physics/AnimationHandler;->access$100(Lmiui/animation/physics/AnimationHandler;J)V

    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiui/animation/physics/AnimationHandler;

    # getter for: Lmiui/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiui/animation/physics/AnimationHandler;->access$200(Lmiui/animation/physics/AnimationHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_27

    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiui/animation/physics/AnimationHandler;

    # invokes: Lmiui/animation/physics/AnimationHandler;->getProvider()Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;
    invoke-static {v0}, Lmiui/animation/physics/AnimationHandler;->access$300(Lmiui/animation/physics/AnimationHandler;)Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    :cond_27
    return-void
.end method
