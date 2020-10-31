.class Landroid/widget/AbsListViewInjector$DummyEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "AbsListViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListViewInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyEdgeEffect"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onAbsorb(I)V
    .registers 2

    return-void
.end method

.method public onPull(F)V
    .registers 2

    return-void
.end method

.method public onPull(FF)V
    .registers 3

    return-void
.end method

.method public onRelease()V
    .registers 1

    return-void
.end method
