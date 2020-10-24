.class Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final synthetic this$0:Lmiuix/animation/physics/AnimationHandler;


# direct methods
.method constructor <init>(Lmiuix/animation/physics/AnimationHandler;)V
    .locals 0

    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/animation/physics/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchAnimationFrame()V
    .locals 3

    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/animation/physics/AnimationHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lmiuix/animation/physics/AnimationHandler;->access$002(Lmiuix/animation/physics/AnimationHandler;J)J

    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/animation/physics/AnimationHandler;

    invoke-static {v0}, Lmiuix/animation/physics/AnimationHandler;->access$000(Lmiuix/animation/physics/AnimationHandler;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lmiuix/animation/physics/AnimationHandler;->access$100(Lmiuix/animation/physics/AnimationHandler;J)V

    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/animation/physics/AnimationHandler;

    invoke-static {v0}, Lmiuix/animation/physics/AnimationHandler;->access$200(Lmiuix/animation/physics/AnimationHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/animation/physics/AnimationHandler;

    invoke-static {p0}, Lmiuix/animation/physics/AnimationHandler;->access$300(Lmiuix/animation/physics/AnimationHandler;)Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    :cond_0
    return-void
.end method
