.class public final synthetic Landroid/view/-$$Lambda$TextureView$WAq1rgfoZeDSt6cBQga7iQDymYk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic f$0:Landroid/view/TextureView;


# direct methods
.method public synthetic constructor <init>(Landroid/view/TextureView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$TextureView$WAq1rgfoZeDSt6cBQga7iQDymYk;->f$0:Landroid/view/TextureView;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    iget-object v0, p0, Landroid/view/-$$Lambda$TextureView$WAq1rgfoZeDSt6cBQga7iQDymYk;->f$0:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->lambda$new$0$TextureView(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
