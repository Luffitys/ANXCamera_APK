.class public Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;
.super Lcom/android/camera/visibilityutils/calculator/BaseItemsVisibilityCalculator;
.source ""


# static fields
.field private static final INACTIVE_LIST_ITEM_VISIBILITY_PERCENTS:I = 0x46

.field private static final SHOW_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "SingleListViewItemActiveCalculator"


# instance fields
.field private final mCallback:Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$Callback;

.field private final mCurrentItem:Lcom/android/camera/visibilityutils/items/ListItemData;

.field private final mListItems:Ljava/util/List;

.field private mScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$Callback;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/visibilityutils/calculator/BaseItemsVisibilityCalculator;-><init>()V

    sget-object v0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;->UP:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    iput-object v0, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    new-instance v0, Lcom/android/camera/visibilityutils/items/ListItemData;

    invoke-direct {v0}, Lcom/android/camera/visibilityutils/items/ListItemData;-><init>()V

    iput-object v0, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mCurrentItem:Lcom/android/camera/visibilityutils/items/ListItemData;

    iput-object p1, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mCallback:Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$Callback;

    iput-object p2, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mListItems:Ljava/util/List;

    return-void
.end method

.method private bottomToTopMostVisibleItem(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;ILcom/android/camera/visibilityutils/items/ListItemData;)V
    .locals 4

    invoke-interface {p1}, Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/camera/visibilityutils/items/ListItemData;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;->indexOfChild(Landroid/view/View;)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mListItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/visibilityutils/items/ListItem;

    invoke-interface {p1, v1}, Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/visibilityutils/items/ListItem;->getVisibilityPercents(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_0

    invoke-virtual {p3, v0, v3}, Lcom/android/camera/visibilityutils/items/ListItemData;->fillWithData(ILandroid/view/View;)Lcom/android/camera/visibilityutils/items/ListItemData;

    move p2, v2

    :cond_0
    iget-object v2, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mCurrentItem:Lcom/android/camera/visibilityutils/items/ListItemData;

    invoke-virtual {v2}, Lcom/android/camera/visibilityutils/items/ListItemData;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/camera/visibilityutils/items/ListItemData;->getView()Landroid/view/View;

    move-result-object v3

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p3, v2}, Lcom/android/camera/visibilityutils/items/ListItemData;->setMostVisibleItemChanged(Z)V

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private calculateActiveItem(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;Lcom/android/camera/visibilityutils/items/ListItemData;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mListItems:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/android/camera/visibilityutils/items/ListItemData;->getVisibilityPercents(Ljava/util/List;)I

    move-result v0

    new-instance v1, Lcom/android/camera/visibilityutils/items/ListItemData;

    invoke-direct {v1}, Lcom/android/camera/visibilityutils/items/ListItemData;-><init>()V

    sget-object v2, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$1;->$SwitchMap$com$android$camera$visibilityutils$scroll_utils$ScrollDirectionDetector$ScrollDirection:[I

    iget-object v3, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->findNextItem(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;Lcom/android/camera/visibilityutils/items/ListItemData;Lcom/android/camera/visibilityutils/items/ListItemData;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->findPreviousItem(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;Lcom/android/camera/visibilityutils/items/ListItemData;Lcom/android/camera/visibilityutils/items/ListItemData;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->enoughPercentsForDeactivation(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/android/camera/visibilityutils/items/ListItemData;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->setCurrentItem(Lcom/android/camera/visibilityutils/items/ListItemData;)V

    :cond_2
    return-void
.end method

.method private calculateMostVisibleItem(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->getMockCurrentItem(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;II)Lcom/android/camera/visibilityutils/items/ListItemData;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mListItems:Ljava/util/List;

    invoke-virtual {p2, p3}, Lcom/android/camera/visibilityutils/items/ListItemData;->getVisibilityPercents(Ljava/util/List;)I

    move-result p3

    sget-object v0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$1;->$SwitchMap$com$android$camera$visibilityutils$scroll_utils$ScrollDirectionDetector$ScrollDirection:[I

    iget-object v1, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p3, p2}, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->topToBottomMostVisibleItem(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;ILcom/android/camera/visibilityutils/items/ListItemData;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not handled mScrollDirection "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->bottomToTopMostVisibleItem(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;ILcom/android/camera/visibilityutils/items/ListItemData;)V

    :goto_0
    invoke-virtual {p2}, Lcom/android/camera/visibilityutils/items/ListItemData;->isMostVisibleItemChanged()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->setCurrentItem(Lcom/android/camera/visibilityutils/items/ListItemData;)V

    :cond_2
    return-void
.end method

.method private enoughPercentsForDeactivation(I)Z
    .locals 0

    const/16 p0, 0x46

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private findNextItem(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;Lcom/android/camera/visibilityutils/items/ListItemData;Lcom/android/camera/visibilityutils/items/ListItemData;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/camera/visibilityutils/items/ListItemData;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mListItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/android/camera/visibilityutils/items/ListItemData;->getView()Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;->indexOfChild(Landroid/view/View;)I

    move-result p2

    if-ltz p2, :cond_0

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p2}, Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mListItems:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/visibilityutils/items/ListItem;

    invoke-interface {p0, p1}, Lcom/android/camera/visibilityutils/items/ListItem;->getVisibilityPercents(Landroid/view/View;)I

    invoke-virtual {p3, v0, p1}, Lcom/android/camera/visibilityutils/items/ListItemData;->fillWithData(ILandroid/view/View;)Lcom/android/camera/visibilityutils/items/ListItemData;

    :cond_0
    return-void
.end method

.method private findPreviousItem(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;Lcom/android/camera/visibilityutils/items/ListItemData;Lcom/android/camera/visibilityutils/items/ListItemData;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/camera/visibilityutils/items/ListItemData;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/camera/visibilityutils/items/ListItemData;->getView()Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;->indexOfChild(Landroid/view/View;)I

    move-result p2

    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mListItems:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/visibilityutils/items/ListItem;

    invoke-interface {p0, p1}, Lcom/android/camera/visibilityutils/items/ListItem;->getVisibilityPercents(Landroid/view/View;)I

    invoke-virtual {p3, v0, p1}, Lcom/android/camera/visibilityutils/items/ListItemData;->fillWithData(ILandroid/view/View;)Lcom/android/camera/visibilityutils/items/ListItemData;

    :cond_0
    return-void
.end method

.method private getMockCurrentItem(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;II)Lcom/android/camera/visibilityutils/items/ListItemData;
    .locals 2

    sget-object v0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$1;->$SwitchMap$com$android$camera$visibilityutils$scroll_utils$ScrollDirectionDetector$ScrollDirection:[I

    iget-object v1, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p3, 0x2

    if-ne v0, p3, :cond_0

    new-instance p0, Lcom/android/camera/visibilityutils/items/ListItemData;

    invoke-direct {p0}, Lcom/android/camera/visibilityutils/items/ListItemData;-><init>()V

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1, p3}, Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/camera/visibilityutils/items/ListItemData;->fillWithData(ILandroid/view/View;)Lcom/android/camera/visibilityutils/items/ListItemData;

    move-result-object p0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not handled mScrollDirection "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-gez p3, :cond_2

    goto :goto_1

    :cond_2
    move p2, p3

    :goto_1
    new-instance p0, Lcom/android/camera/visibilityutils/items/ListItemData;

    invoke-direct {p0}, Lcom/android/camera/visibilityutils/items/ListItemData;-><init>()V

    invoke-interface {p1}, Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v1

    goto :goto_0

    :goto_2
    return-object p0
.end method

.method private setCurrentItem(Lcom/android/camera/visibilityutils/items/ListItemData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/camera/visibilityutils/items/ListItemData;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/visibilityutils/items/ListItemData;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mCurrentItem:Lcom/android/camera/visibilityutils/items/ListItemData;

    invoke-virtual {v1, v0, p1}, Lcom/android/camera/visibilityutils/items/ListItemData;->fillWithData(ILandroid/view/View;)Lcom/android/camera/visibilityutils/items/ListItemData;

    iget-object v1, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mCallback:Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$Callback;

    iget-object p0, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mListItems:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/visibilityutils/items/ListItem;

    invoke-interface {v1, p0, p1, v0}, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$Callback;->activateNewCurrentItem(Lcom/android/camera/visibilityutils/items/ListItem;Landroid/view/View;I)V

    return-void
.end method

.method private topToBottomMostVisibleItem(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;ILcom/android/camera/visibilityutils/items/ListItemData;)V
    .locals 4

    invoke-interface {p1}, Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/camera/visibilityutils/items/ListItemData;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;->indexOfChild(Landroid/view/View;)I

    move-result v1

    :goto_0
    invoke-interface {p1}, Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mListItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/visibilityutils/items/ListItem;

    invoke-interface {p1, v1}, Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/visibilityutils/items/ListItem;->getVisibilityPercents(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_0

    invoke-virtual {p3, v0, v3}, Lcom/android/camera/visibilityutils/items/ListItemData;->fillWithData(ILandroid/view/View;)Lcom/android/camera/visibilityutils/items/ListItemData;

    move p2, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mCurrentItem:Lcom/android/camera/visibilityutils/items/ListItemData;

    invoke-virtual {p0}, Lcom/android/camera/visibilityutils/items/ListItemData;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p3}, Lcom/android/camera/visibilityutils/items/ListItemData;->getView()Landroid/view/View;

    move-result-object p1

    if-eq p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p3, p0}, Lcom/android/camera/visibilityutils/items/ListItemData;->setMostVisibleItemChanged(Z)V

    return-void
.end method


# virtual methods
.method public onScrollDirectionChanged(Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    return-void
.end method

.method public onScrollStateIdle(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->calculateMostVisibleItem(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;II)V

    return-void
.end method

.method protected onStateFling(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;)V
    .locals 2

    iget-object p1, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mCurrentItem:Lcom/android/camera/visibilityutils/items/ListItemData;

    iget-object v0, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mCallback:Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$Callback;

    iget-object p0, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mListItems:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/camera/visibilityutils/items/ListItemData;->getIndex()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/visibilityutils/items/ListItem;

    invoke-virtual {p1}, Lcom/android/camera/visibilityutils/items/ListItemData;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/visibilityutils/items/ListItemData;->getIndex()I

    move-result p1

    invoke-interface {v0, p0, v1, p1}, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$Callback;->deactivateCurrentItem(Lcom/android/camera/visibilityutils/items/ListItem;Landroid/view/View;I)V

    return-void
.end method

.method protected onStateTouchScroll(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->mCurrentItem:Lcom/android/camera/visibilityutils/items/ListItemData;

    invoke-virtual {v0}, Lcom/android/camera/visibilityutils/items/ListItemData;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->TAG:Ljava/lang/String;

    const-string p1, "onStateTouchScroll ignore, currentItem not available"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;->calculateActiveItem(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;Lcom/android/camera/visibilityutils/items/ListItemData;)V

    return-void
.end method
