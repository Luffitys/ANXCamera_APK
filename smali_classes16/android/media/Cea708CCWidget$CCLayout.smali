.class Landroid/media/Cea708CCWidget$CCLayout;
.super Landroid/media/Cea708CCWidget$ScaledLayout;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CCLayout"
.end annotation


# static fields
.field private static final SAFE_TITLE_AREA_SCALE_END_X:F = 0.9f

.field private static final SAFE_TITLE_AREA_SCALE_END_Y:F = 0.9f

.field private static final SAFE_TITLE_AREA_SCALE_START_X:F = 0.1f

.field private static final SAFE_TITLE_AREA_SCALE_START_Y:F = 0.1f


# instance fields
.field private final mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$ScaledLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout;

    invoke-direct {v0, p1}, Landroid/media/Cea708CCWidget$ScaledLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    new-instance v1, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v1, v2, v3, v2, v3}, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(FFFF)V

    invoke-virtual {p0, v0, v1}, Landroid/media/Cea708CCWidget$CCLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addOrUpdateViewToSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;)V
    .registers 5

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$ScaledLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_e

    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    invoke-virtual {v1, p1, p2}, Landroid/media/Cea708CCWidget$ScaledLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_e
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    invoke-virtual {v1, p1, p2}, Landroid/media/Cea708CCWidget$ScaledLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public removeViewFromSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;)V
    .registers 3

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$ScaledLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 5

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    invoke-virtual {v2, v1}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v2, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public setFontScale(F)V
    .registers 5

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    invoke-virtual {v2, v1}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v2, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setFontScale(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method
