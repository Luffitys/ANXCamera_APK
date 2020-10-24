.class public Lcom/miui/internal/widget/Android_Preference_Preference_class_helper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setPreferenceTouchAnim(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiui/animation/IFolme;->touch()Lmiui/animation/ITouchStyle;

    move-result-object v1

    new-array v0, v0, [Lmiui/animation/ITouchStyle$TouchType;

    sget-object v3, Lmiui/animation/ITouchStyle$TouchType;->DOWN:Lmiui/animation/ITouchStyle$TouchType;

    aput-object v3, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v1, v3, v0}, Lmiui/animation/ITouchStyle;->setScale(F[Lmiui/animation/ITouchStyle$TouchType;)Lmiui/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v2, [Lmiui/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiui/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V

    return-void
.end method
