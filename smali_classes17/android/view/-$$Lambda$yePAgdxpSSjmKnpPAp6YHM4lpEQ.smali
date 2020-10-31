.class public final synthetic Landroid/view/-$$Lambda$yePAgdxpSSjmKnpPAp6YHM4lpEQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/InsetsAnimationControlCallbacks;


# direct methods
.method public synthetic constructor <init>(Landroid/view/InsetsAnimationControlCallbacks;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$yePAgdxpSSjmKnpPAp6YHM4lpEQ;->f$0:Landroid/view/InsetsAnimationControlCallbacks;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/view/-$$Lambda$yePAgdxpSSjmKnpPAp6YHM4lpEQ;->f$0:Landroid/view/InsetsAnimationControlCallbacks;

    check-cast p1, Landroid/view/SurfaceControl;

    invoke-interface {v0, p1}, Landroid/view/InsetsAnimationControlCallbacks;->releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V

    return-void
.end method
