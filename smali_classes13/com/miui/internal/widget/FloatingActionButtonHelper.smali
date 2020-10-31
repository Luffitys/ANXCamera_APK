.class public Lcom/miui/internal/widget/FloatingActionButtonHelper;
.super Ljava/lang/Object;
.source "FloatingActionButtonHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initFabTouchAnimation(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiui/animation/IFolme;->touch()Lmiui/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v1, [Lmiui/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiui/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V

    return-void
.end method
