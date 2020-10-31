.class public final Landroid/widget/AbsListView$InspectionCompanion;
.super Ljava/lang/Object;
.source "AbsListView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/AbsListView;",
        ">;"
    }
.end annotation


# instance fields
.field private mCacheColorHintId:I

.field private mChoiceModeId:I

.field private mDrawSelectorOnTopId:I

.field private mFastScrollEnabledId:I

.field private mListSelectorId:I

.field private mPropertiesMapped:Z

.field private mScrollingCacheId:I

.field private mSmoothScrollbarId:I

.field private mStackFromBottomId:I

.field private mTextFilterEnabledId:I

.field private mTranscriptModeId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 9

    const-string v0, "cacheColorHint"

    const v1, 0x1010101

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mCacheColorHintId:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "none"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    const-string/jumbo v3, "singleChoice"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x2

    const-string/jumbo v4, "multipleChoice"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v4, 0x3

    const-string/jumbo v5, "multipleChoiceModal"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v4, v0}, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string v5, "choiceMode"

    const v6, 0x101012b

    invoke-interface {p1, v5, v6, v4}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView$InspectionCompanion;->mChoiceModeId:I

    const-string v4, "drawSelectorOnTop"

    const v5, 0x10100fc

    invoke-interface {p1, v4, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView$InspectionCompanion;->mDrawSelectorOnTopId:I

    const-string v4, "fastScrollEnabled"

    const v5, 0x1010226

    invoke-interface {p1, v4, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView$InspectionCompanion;->mFastScrollEnabledId:I

    const-string v4, "listSelector"

    const v5, 0x10100fb

    invoke-interface {p1, v4, v5}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView$InspectionCompanion;->mListSelectorId:I

    const-string/jumbo v4, "scrollingCache"

    const v5, 0x10100fe

    invoke-interface {p1, v4, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView$InspectionCompanion;->mScrollingCacheId:I

    const-string/jumbo v4, "smoothScrollbar"

    const v5, 0x1010231

    invoke-interface {p1, v4, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView$InspectionCompanion;->mSmoothScrollbarId:I

    const-string/jumbo v4, "stackFromBottom"

    const v5, 0x10100fd

    invoke-interface {p1, v4, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView$InspectionCompanion;->mStackFromBottomId:I

    const-string/jumbo v4, "textFilterEnabled"

    const v5, 0x10100ff

    invoke-interface {p1, v4, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView$InspectionCompanion;->mTextFilterEnabledId:I

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    const-string v5, "disabled"

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v1, "normal"

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "alwaysScroll"

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v1, v4}, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v3, "transcriptMode"

    const v5, 0x1010100

    invoke-interface {p1, v3, v5, v1}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView$InspectionCompanion;->mTranscriptModeId:I

    iput-boolean v2, p0, Landroid/widget/AbsListView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/AbsListView;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_5f

    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mCacheColorHintId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mChoiceModeId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mDrawSelectorOnTopId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isDrawSelectorOnTop()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mFastScrollEnabledId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mListSelectorId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mScrollingCacheId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isScrollingCacheEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mSmoothScrollbarId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isSmoothScrollbarEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mStackFromBottomId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mTextFilterEnabledId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/AbsListView$InspectionCompanion;->mTranscriptModeId:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getTranscriptMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    return-void

    :cond_5f
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView$InspectionCompanion;->readProperties(Landroid/widget/AbsListView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
