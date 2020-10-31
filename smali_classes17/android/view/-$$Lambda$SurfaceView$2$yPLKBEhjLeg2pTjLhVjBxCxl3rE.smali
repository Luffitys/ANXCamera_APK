.class public final synthetic Landroid/view/-$$Lambda$SurfaceView$2$yPLKBEhjLeg2pTjLhVjBxCxl3rE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceView$2;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceView$2;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$SurfaceView$2$yPLKBEhjLeg2pTjLhVjBxCxl3rE;->f$0:Landroid/view/SurfaceView$2;

    iput-boolean p2, p0, Landroid/view/-$$Lambda$SurfaceView$2$yPLKBEhjLeg2pTjLhVjBxCxl3rE;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/-$$Lambda$SurfaceView$2$yPLKBEhjLeg2pTjLhVjBxCxl3rE;->f$0:Landroid/view/SurfaceView$2;

    iget-boolean v1, p0, Landroid/view/-$$Lambda$SurfaceView$2$yPLKBEhjLeg2pTjLhVjBxCxl3rE;->f$1:Z

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView$2;->lambda$setKeepScreenOn$0$SurfaceView$2(Z)V

    return-void
.end method
