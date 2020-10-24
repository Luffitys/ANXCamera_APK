.class public Lcom/miui/internal/app/AlertControllerImplHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeTitlePadding(Landroid/widget/TextView;)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public static getLandScapeGravity()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public static initTouchAnim(Landroid/view/Window;)V
    .locals 7

    const v0, 0x1020019

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-array v1, v3, [Landroid/view/View;

    aput-object v0, v1, v4

    invoke-static {v1}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiui/animation/IFolme;->touch()Lmiui/animation/ITouchStyle;

    move-result-object v1

    new-array v5, v3, [Lmiui/animation/ITouchStyle$TouchType;

    sget-object v6, Lmiui/animation/ITouchStyle$TouchType;->DOWN:Lmiui/animation/ITouchStyle$TouchType;

    aput-object v6, v5, v4

    invoke-interface {v1, v2, v5}, Lmiui/animation/ITouchStyle;->setScale(F[Lmiui/animation/ITouchStyle$TouchType;)Lmiui/animation/ITouchStyle;

    move-result-object v1

    new-array v5, v4, [Lmiui/animation/base/AnimConfig;

    invoke-interface {v1, v0, v5}, Lmiui/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V

    :cond_0
    const v0, 0x102001a

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-array v1, v3, [Landroid/view/View;

    aput-object v0, v1, v4

    invoke-static {v1}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiui/animation/IFolme;->touch()Lmiui/animation/ITouchStyle;

    move-result-object v1

    new-array v5, v3, [Lmiui/animation/ITouchStyle$TouchType;

    sget-object v6, Lmiui/animation/ITouchStyle$TouchType;->DOWN:Lmiui/animation/ITouchStyle$TouchType;

    aput-object v6, v5, v4

    invoke-interface {v1, v2, v5}, Lmiui/animation/ITouchStyle;->setScale(F[Lmiui/animation/ITouchStyle$TouchType;)Lmiui/animation/ITouchStyle;

    move-result-object v1

    new-array v5, v4, [Lmiui/animation/base/AnimConfig;

    invoke-interface {v1, v0, v5}, Lmiui/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V

    :cond_1
    const v0, 0x102001b

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-array v0, v3, [Landroid/view/View;

    aput-object p0, v0, v4

    invoke-static {v0}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiui/animation/IFolme;->touch()Lmiui/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v3, [Lmiui/animation/ITouchStyle$TouchType;

    sget-object v3, Lmiui/animation/ITouchStyle$TouchType;->DOWN:Lmiui/animation/ITouchStyle$TouchType;

    aput-object v3, v1, v4

    invoke-interface {v0, v2, v1}, Lmiui/animation/ITouchStyle;->setScale(F[Lmiui/animation/ITouchStyle$TouchType;)Lmiui/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v4, [Lmiui/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiui/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V

    :cond_2
    return-void
.end method
