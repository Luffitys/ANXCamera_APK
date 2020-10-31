.class public final synthetic Landroid/view/-$$Lambda$SurfaceView$DKSyxzWn62XKbC15Dh1hMSfxKQg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceView;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/view/ViewRootImpl;

.field public final synthetic f$3:Landroid/view/Surface;

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceView;ZLandroid/view/ViewRootImpl;Landroid/view/Surface;F)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$SurfaceView$DKSyxzWn62XKbC15Dh1hMSfxKQg;->f$0:Landroid/view/SurfaceView;

    iput-boolean p2, p0, Landroid/view/-$$Lambda$SurfaceView$DKSyxzWn62XKbC15Dh1hMSfxKQg;->f$1:Z

    iput-object p3, p0, Landroid/view/-$$Lambda$SurfaceView$DKSyxzWn62XKbC15Dh1hMSfxKQg;->f$2:Landroid/view/ViewRootImpl;

    iput-object p4, p0, Landroid/view/-$$Lambda$SurfaceView$DKSyxzWn62XKbC15Dh1hMSfxKQg;->f$3:Landroid/view/Surface;

    iput p5, p0, Landroid/view/-$$Lambda$SurfaceView$DKSyxzWn62XKbC15Dh1hMSfxKQg;->f$4:F

    return-void
.end method


# virtual methods
.method public final onFrameDraw(J)V
    .registers 10

    iget-object v0, p0, Landroid/view/-$$Lambda$SurfaceView$DKSyxzWn62XKbC15Dh1hMSfxKQg;->f$0:Landroid/view/SurfaceView;

    iget-boolean v1, p0, Landroid/view/-$$Lambda$SurfaceView$DKSyxzWn62XKbC15Dh1hMSfxKQg;->f$1:Z

    iget-object v2, p0, Landroid/view/-$$Lambda$SurfaceView$DKSyxzWn62XKbC15Dh1hMSfxKQg;->f$2:Landroid/view/ViewRootImpl;

    iget-object v3, p0, Landroid/view/-$$Lambda$SurfaceView$DKSyxzWn62XKbC15Dh1hMSfxKQg;->f$3:Landroid/view/Surface;

    iget v4, p0, Landroid/view/-$$Lambda$SurfaceView$DKSyxzWn62XKbC15Dh1hMSfxKQg;->f$4:F

    move-wide v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/view/SurfaceView;->lambda$updateSurfaceAlpha$1$SurfaceView(ZLandroid/view/ViewRootImpl;Landroid/view/Surface;FJ)V

    return-void
.end method
