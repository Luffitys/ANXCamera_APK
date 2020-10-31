.class public final synthetic Landroid/view/-$$Lambda$ViewRootImpl$vBfxngTfPtkwcFoa96FB0CWn5ZI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameCompleteCallback;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewRootImpl;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl;Landroid/os/Handler;ZLjava/util/ArrayList;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ViewRootImpl$vBfxngTfPtkwcFoa96FB0CWn5ZI;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/-$$Lambda$ViewRootImpl$vBfxngTfPtkwcFoa96FB0CWn5ZI;->f$1:Landroid/os/Handler;

    iput-boolean p3, p0, Landroid/view/-$$Lambda$ViewRootImpl$vBfxngTfPtkwcFoa96FB0CWn5ZI;->f$2:Z

    iput-object p4, p0, Landroid/view/-$$Lambda$ViewRootImpl$vBfxngTfPtkwcFoa96FB0CWn5ZI;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onFrameComplete(J)V
    .registers 9

    iget-object v0, p0, Landroid/view/-$$Lambda$ViewRootImpl$vBfxngTfPtkwcFoa96FB0CWn5ZI;->f$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/-$$Lambda$ViewRootImpl$vBfxngTfPtkwcFoa96FB0CWn5ZI;->f$1:Landroid/os/Handler;

    iget-boolean v2, p0, Landroid/view/-$$Lambda$ViewRootImpl$vBfxngTfPtkwcFoa96FB0CWn5ZI;->f$2:Z

    iget-object v3, p0, Landroid/view/-$$Lambda$ViewRootImpl$vBfxngTfPtkwcFoa96FB0CWn5ZI;->f$3:Ljava/util/ArrayList;

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewRootImpl;->lambda$performDraw$2$ViewRootImpl(Landroid/os/Handler;ZLjava/util/ArrayList;J)V

    return-void
.end method
