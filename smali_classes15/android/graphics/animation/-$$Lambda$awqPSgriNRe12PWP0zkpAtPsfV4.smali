.class public final synthetic Landroid/graphics/animation/-$$Lambda$awqPSgriNRe12PWP0zkpAtPsfV4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/animation/RenderNodeAnimator;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/animation/RenderNodeAnimator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/animation/-$$Lambda$awqPSgriNRe12PWP0zkpAtPsfV4;->f$0:Landroid/graphics/animation/RenderNodeAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/graphics/animation/-$$Lambda$awqPSgriNRe12PWP0zkpAtPsfV4;->f$0:Landroid/graphics/animation/RenderNodeAnimator;

    invoke-virtual {v0}, Landroid/graphics/animation/RenderNodeAnimator;->onFinished()V

    return-void
.end method
