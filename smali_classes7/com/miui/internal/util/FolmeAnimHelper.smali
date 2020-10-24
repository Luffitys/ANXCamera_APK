.class public Lcom/miui/internal/util/FolmeAnimHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAlphaPressAnim(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiui/animation/IFolme;->touch()Lmiui/animation/ITouchStyle;

    move-result-object v0

    new-array v2, v1, [Lmiui/animation/ITouchStyle$TouchType;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v3, v2}, Lmiui/animation/ITouchStyle;->setScale(F[Lmiui/animation/ITouchStyle$TouchType;)Lmiui/animation/ITouchStyle;

    move-result-object v0

    new-array v2, v1, [Lmiui/animation/ITouchStyle$TouchType;

    const v3, 0x3f19999a    # 0.6f

    invoke-interface {v0, v3, v2}, Lmiui/animation/ITouchStyle;->setAlpha(F[Lmiui/animation/ITouchStyle$TouchType;)Lmiui/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v1, [Lmiui/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiui/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V

    return-void
.end method

.method public static addPressAnim(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiui/animation/IFolme;->touch()Lmiui/animation/ITouchStyle;

    move-result-object v0

    new-array v2, v1, [Lmiui/animation/ITouchStyle$TouchType;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v3, v2}, Lmiui/animation/ITouchStyle;->setScale(F[Lmiui/animation/ITouchStyle$TouchType;)Lmiui/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v1, [Lmiui/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiui/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V

    return-void
.end method

.method public static addPressAnimWithTint(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiui/animation/IFolme;->touch()Lmiui/animation/ITouchStyle;

    move-result-object v0

    new-array v2, v1, [Lmiui/animation/ITouchStyle$TouchType;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v3, v2}, Lmiui/animation/ITouchStyle;->setScale(F[Lmiui/animation/ITouchStyle$TouchType;)Lmiui/animation/ITouchStyle;

    move-result-object v0

    const v2, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v3, v3}, Lmiui/animation/ITouchStyle;->setTint(FFFF)Lmiui/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v1, [Lmiui/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiui/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V

    return-void
.end method
