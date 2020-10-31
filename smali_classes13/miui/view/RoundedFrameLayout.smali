.class public Lmiui/view/RoundedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RoundedFrameLayout.java"

# interfaces
.implements Lmiui/view/ClipRoundedBounds;


# instance fields
.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/view/RoundedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/view/RoundedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/view/RoundedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lmiui/view/RoundedFrameLayout;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public isClipRoundedCorner()Z
    .registers 2

    iget-object v0, p0, Lmiui/view/RoundedFrameLayout;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public setClipRoundedBounds(Landroid/graphics/RectF;I)V
    .registers 7

    if-eqz p1, :cond_11

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiui/view/RoundedFrameLayout;->mPath:Landroid/graphics/Path;

    int-to-float v1, p2

    int-to-float v2, p2

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_14

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/RoundedFrameLayout;->mPath:Landroid/graphics/Path;

    :goto_14
    invoke-virtual {p0}, Lmiui/view/RoundedFrameLayout;->invalidate()V

    return-void
.end method

.method public setClipRoundedBounds(Landroid/graphics/RectF;[F)V
    .registers 5

    if-eqz p1, :cond_f

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiui/view/RoundedFrameLayout;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_12

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/RoundedFrameLayout;->mPath:Landroid/graphics/Path;

    :goto_12
    invoke-virtual {p0}, Lmiui/view/RoundedFrameLayout;->invalidate()V

    return-void
.end method
