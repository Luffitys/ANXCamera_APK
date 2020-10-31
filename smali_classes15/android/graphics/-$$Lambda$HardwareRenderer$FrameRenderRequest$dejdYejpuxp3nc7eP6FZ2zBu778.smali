.class public final synthetic Landroid/graphics/-$$Lambda$HardwareRenderer$FrameRenderRequest$dejdYejpuxp3nc7eP6FZ2zBu778;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameCompleteCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/-$$Lambda$HardwareRenderer$FrameRenderRequest$dejdYejpuxp3nc7eP6FZ2zBu778;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/graphics/-$$Lambda$HardwareRenderer$FrameRenderRequest$dejdYejpuxp3nc7eP6FZ2zBu778;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onFrameComplete(J)V
    .registers 5

    iget-object v0, p0, Landroid/graphics/-$$Lambda$HardwareRenderer$FrameRenderRequest$dejdYejpuxp3nc7eP6FZ2zBu778;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/graphics/-$$Lambda$HardwareRenderer$FrameRenderRequest$dejdYejpuxp3nc7eP6FZ2zBu778;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->lambda$setFrameCommitCallback$0(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;J)V

    return-void
.end method
