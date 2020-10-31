.class Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationCallbackDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;


# direct methods
.method constructor <init>(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchAnimationFrame()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;

    iget-wide v1, v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->doAnimationFrame(J)V

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;

    iget-object v0, v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->getProvider()Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    :cond_22
    return-void
.end method
