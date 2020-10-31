.class Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarViewPagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollStatus"
.end annotation


# static fields
.field private static final THRESHOLD:F = 1.0E-4f


# instance fields
.field mFromPos:I

.field private mOffsetAtScroll:F

.field private mPosAtScroll:I

.field mScrollBegin:Z

.field mScrollEnd:Z

.field mToPos:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mPosAtScroll:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/app/ActionBarViewPagerController$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;-><init>()V

    return-void
.end method

.method private onScrollBegin(IF)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mScrollBegin:Z

    iget v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mOffsetAtScroll:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    if-eqz v0, :cond_e

    move v1, p1

    goto :goto_10

    :cond_e
    add-int/lit8 v1, p1, 0x1

    :goto_10
    iput v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mFromPos:I

    if-eqz v0, :cond_17

    add-int/lit8 v1, p1, 0x1

    goto :goto_18

    :cond_17
    move v1, p1

    :goto_18
    iput v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mToPos:I

    return-void
.end method

.method private onScrollEnd()V
    .registers 2

    iget v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mToPos:I

    iput v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mFromPos:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mPosAtScroll:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mOffsetAtScroll:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mScrollEnd:Z

    return-void
.end method

.method private onScrollPositionChange(IF)V
    .registers 4

    iput p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mPosAtScroll:I

    iput p2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mOffsetAtScroll:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mScrollBegin:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mScrollEnd:Z

    return-void
.end method


# virtual methods
.method update(IF)V
    .registers 4

    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_b

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->onScrollEnd()V

    goto :goto_1a

    :cond_b
    iget v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mPosAtScroll:I

    if-eq v0, p1, :cond_13

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->onScrollPositionChange(IF)V

    goto :goto_1a

    :cond_13
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mScrollBegin:Z

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->onScrollBegin(IF)V

    :cond_1a
    :goto_1a
    return-void
.end method
