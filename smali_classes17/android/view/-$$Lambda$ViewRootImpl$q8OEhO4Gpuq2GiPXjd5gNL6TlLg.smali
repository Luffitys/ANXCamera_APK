.class public final synthetic Landroid/view/-$$Lambda$ViewRootImpl$q8OEhO4Gpuq2GiPXjd5gNL6TlLg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewRootImpl;

.field public final synthetic f$1:Landroid/view/IScrollCaptureController;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/IScrollCaptureController;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ViewRootImpl$q8OEhO4Gpuq2GiPXjd5gNL6TlLg;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/-$$Lambda$ViewRootImpl$q8OEhO4Gpuq2GiPXjd5gNL6TlLg;->f$1:Landroid/view/IScrollCaptureController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/view/-$$Lambda$ViewRootImpl$q8OEhO4Gpuq2GiPXjd5gNL6TlLg;->f$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/-$$Lambda$ViewRootImpl$q8OEhO4Gpuq2GiPXjd5gNL6TlLg;->f$1:Landroid/view/IScrollCaptureController;

    check-cast p1, Landroid/view/ScrollCaptureTarget;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl;->lambda$handleScrollCaptureRequest$3$ViewRootImpl(Landroid/view/IScrollCaptureController;Landroid/view/ScrollCaptureTarget;)V

    return-void
.end method
