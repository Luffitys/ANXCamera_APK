.class public abstract Lmiui/maml/RendererController$EmptyListener;
.super Ljava/lang/Object;
.source "RendererController.java"

# interfaces
.implements Lmiui/maml/RendererController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/RendererController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EmptyListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doRender()V
    .registers 1

    return-void
.end method

.method public finish()V
    .registers 1

    return-void
.end method

.method public init()V
    .registers 1

    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public tick(J)V
    .registers 3

    return-void
.end method
