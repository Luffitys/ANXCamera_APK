.class Landroid/animation/AnimationHandler$2;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/AnimationHandler;->doAnimationFrame(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/AnimationHandler;

.field final synthetic val$callback:Landroid/animation/AnimationHandler$AnimationFrameCallback;


# direct methods
.method constructor <init>(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$AnimationFrameCallback;)V
    .registers 3

    iput-object p1, p0, Landroid/animation/AnimationHandler$2;->this$0:Landroid/animation/AnimationHandler;

    iput-object p2, p0, Landroid/animation/AnimationHandler$2;->val$callback:Landroid/animation/AnimationHandler$AnimationFrameCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Landroid/animation/AnimationHandler$2;->this$0:Landroid/animation/AnimationHandler;

    iget-object v1, p0, Landroid/animation/AnimationHandler$2;->val$callback:Landroid/animation/AnimationHandler$AnimationFrameCallback;

    # invokes: Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;
    invoke-static {v0}, Landroid/animation/AnimationHandler;->access$000(Landroid/animation/AnimationHandler;)Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v2

    invoke-interface {v2}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->getFrameTime()J

    move-result-wide v2

    # invokes: Landroid/animation/AnimationHandler;->commitAnimationFrame(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V
    invoke-static {v0, v1, v2, v3}, Landroid/animation/AnimationHandler;->access$400(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    return-void
.end method
