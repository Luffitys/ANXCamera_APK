.class final Landroid/view/Choreographer$CallbackRecord;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackRecord"
.end annotation


# instance fields
.field public action:Ljava/lang/Object;

.field public dueTime:J

.field public next:Landroid/view/Choreographer$CallbackRecord;

.field public token:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Choreographer$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/Choreographer$CallbackRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public run(J)V
    .registers 5

    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    # getter for: Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;
    invoke-static {}, Landroid/view/Choreographer;->access$500()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    check-cast v0, Landroid/view/Choreographer$FrameCallback;

    invoke-interface {v0, p1, p2}, Landroid/view/Choreographer$FrameCallback;->doFrame(J)V

    goto :goto_17

    :cond_10
    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_17
    return-void
.end method
