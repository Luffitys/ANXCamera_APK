.class public final Landroid/view/ViewGroup$InspectionCompanion;
.super Ljava/lang/Object;
.source "ViewGroup$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddStatesFromChildrenId:I

.field private mAlwaysDrawnWithCacheId:I

.field private mAnimationCacheId:I

.field private mClipChildrenId:I

.field private mClipToPaddingId:I

.field private mDescendantFocusabilityId:I

.field private mLayoutAnimationId:I

.field private mLayoutModeId:I

.field private mPersistentDrawingCacheId:I

.field private mPropertiesMapped:Z

.field private mSplitMotionEventsId:I

.field private mTouchscreenBlocksFocusId:I

.field private mTransitionGroupId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 9

    const-string v0, "addStatesFromChildren"

    const v1, 0x10100f0

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mAddStatesFromChildrenId:I

    const-string v0, "alwaysDrawnWithCache"

    const v1, 0x10100ef

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mAlwaysDrawnWithCacheId:I

    const-string v0, "animationCache"

    const v1, 0x10100ed

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mAnimationCacheId:I

    const-string v0, "clipChildren"

    const v1, 0x10100ea

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mClipChildrenId:I

    const-string v0, "clipToPadding"

    const v1, 0x10100eb

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mClipToPaddingId:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/high16 v1, 0x20000

    const-string v2, "beforeDescendants"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/high16 v1, 0x40000

    const-string v2, "afterDescendants"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/high16 v1, 0x60000

    const-string v2, "blocksDescendants"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v1, v0}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string v2, "descendantFocusability"

    const v3, 0x10100f1

    invoke-interface {p1, v2, v3, v1}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$InspectionCompanion;->mDescendantFocusabilityId:I

    const-string v1, "layoutAnimation"

    const v2, 0x10100ec

    invoke-interface {p1, v1, v2}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$InspectionCompanion;->mLayoutAnimationId:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    const-string v3, "clipBounds"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x1

    const-string/jumbo v4, "opticalBounds"

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v4, v1}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string v5, "layoutMode"

    const v6, 0x10103da

    invoke-interface {p1, v5, v6, v4}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v4

    iput v4, p0, Landroid/view/ViewGroup$InspectionCompanion;->mLayoutModeId:I

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    const-string/jumbo v5, "none"

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v2, "animation"

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x2

    const-string/jumbo v5, "scrolling"

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x3

    const-string v5, "all"

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v2, v4}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v5, "persistentDrawingCache"

    const v6, 0x10100ee

    invoke-interface {p1, v5, v6, v2}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$InspectionCompanion;->mPersistentDrawingCacheId:I

    const-string/jumbo v2, "splitMotionEvents"

    const v5, 0x10102ef

    invoke-interface {p1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$InspectionCompanion;->mSplitMotionEventsId:I

    const-string/jumbo v2, "touchscreenBlocksFocus"

    const v5, 0x101048f

    invoke-interface {p1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$InspectionCompanion;->mTouchscreenBlocksFocusId:I

    const-string/jumbo v2, "transitionGroup"

    const v5, 0x1010401

    invoke-interface {p1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$InspectionCompanion;->mTransitionGroupId:I

    iput-boolean v3, p0, Landroid/view/ViewGroup$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/view/ViewGroup;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_71

    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mAddStatesFromChildrenId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->addStatesFromChildren()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mAlwaysDrawnWithCacheId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mAnimationCacheId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAnimationCacheEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mClipChildrenId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mClipToPaddingId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mDescendantFocusabilityId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mLayoutAnimationId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mLayoutModeId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mPersistentDrawingCacheId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPersistentDrawingCache()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mSplitMotionEventsId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isMotionEventSplittingEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mTouchscreenBlocksFocusId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mTransitionGroupId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    return-void

    :cond_71
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup$InspectionCompanion;->readProperties(Landroid/view/ViewGroup;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
