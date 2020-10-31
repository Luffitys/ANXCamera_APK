.class public final synthetic Landroid/view/-$$Lambda$SurfaceView$LV-kXr5_jITlrRhkV6FsfMSbnO8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceView;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/view/ViewRootImpl;

.field public final synthetic f$3:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceView;ZLandroid/view/ViewRootImpl;Landroid/view/Surface;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$SurfaceView$LV-kXr5_jITlrRhkV6FsfMSbnO8;->f$0:Landroid/view/SurfaceView;

    iput-boolean p2, p0, Landroid/view/-$$Lambda$SurfaceView$LV-kXr5_jITlrRhkV6FsfMSbnO8;->f$1:Z

    iput-object p3, p0, Landroid/view/-$$Lambda$SurfaceView$LV-kXr5_jITlrRhkV6FsfMSbnO8;->f$2:Landroid/view/ViewRootImpl;

    iput-object p4, p0, Landroid/view/-$$Lambda$SurfaceView$LV-kXr5_jITlrRhkV6FsfMSbnO8;->f$3:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final onFrameDraw(J)V
    .registers 9

    iget-object v0, p0, Landroid/view/-$$Lambda$SurfaceView$LV-kXr5_jITlrRhkV6FsfMSbnO8;->f$0:Landroid/view/SurfaceView;

    iget-boolean v1, p0, Landroid/view/-$$Lambda$SurfaceView$LV-kXr5_jITlrRhkV6FsfMSbnO8;->f$1:Z

    iget-object v2, p0, Landroid/view/-$$Lambda$SurfaceView$LV-kXr5_jITlrRhkV6FsfMSbnO8;->f$2:Landroid/view/ViewRootImpl;

    iget-object v3, p0, Landroid/view/-$$Lambda$SurfaceView$LV-kXr5_jITlrRhkV6FsfMSbnO8;->f$3:Landroid/view/Surface;

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceView;->lambda$setZOrderedOnTop$2$SurfaceView(ZLandroid/view/ViewRootImpl;Landroid/view/Surface;J)V

    return-void
.end method
