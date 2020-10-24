.class public Lcom/android/camera/ui/ModeSelectView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field private static final BOUNCE_RANGE:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_HEADER_FOOTER:I = 0x1

.field public static final TYPE_NORMAL:I


# instance fields
.field private mAdapter:Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;

.field private mCurMode:I

.field private mInit:Z

.field private mIsModeChange:Z

.field private mItems:Ljava/util/List;

.field private mLayoutManager:Lcom/android/camera/ui/ModeSelectView$ModeLayoutManager;

.field private mModeSelectedListener:Lcom/android/camera/ui/ModeSelectView$onModeSelectedListener;

.field private mPaintView:Landroid/widget/TextView;

.field private mSnapHelper:Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;

.field private mTempMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ModeSelectView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/ui/ModeSelectView;->mInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/ui/ModeSelectView;->mInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/ui/ModeSelectView;->mInit:Z

    return-void
.end method

.method private synthetic OooO00o()V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ModeSelectView;->updateSelectedItemColor(IZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ModeSelectView;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/ModeSelectView;->getHeaderOffset()I

    move-result p0

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/ui/ModeSelectView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/ModeSelectView;)Lcom/android/camera/ui/ModeSelectView$onModeSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView;->mModeSelectedListener:Lcom/android/camera/ui/ModeSelectView$onModeSelectedListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/ModeSelectView;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/ModeSelectView;->getSelectPos()I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/ModeSelectView;)Lcom/android/camera/ui/ModeSelectView$ModeLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView;->mLayoutManager:Lcom/android/camera/ui/ModeSelectView$ModeLayoutManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/ModeSelectView;)Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView;->mSnapHelper:Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/ModeSelectView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ModeSelectView;->updateSelectedItemColor(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ModeSelectView;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeSelectView;->getItemText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ModeSelectView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeSelectView;->isItemSelected(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ModeSelectView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeSelectView;->getModeByPos(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/ModeSelectView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView;->mItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/ModeSelectView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/ModeSelectView;->canScroll()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/ModeSelectView;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeSelectView;->getModeFromTag(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/ModeSelectView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/camera/ui/ModeSelectView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/ui/ModeSelectView;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ModeSelectView;->isSameMode(II)Z

    move-result p0

    return p0
.end method

.method private canScroll()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xb3

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->canSwipeChangeMode()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private getHeaderOffset()I
    .locals 4

    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectView;->mPaintView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00dd

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090243

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/ModeSelectView;->mPaintView:Landroid/widget/TextView;

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/ModeSelectView;->getSelectPos()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ModeSelectView;->getItemText(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView;->mPaintView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/Util;->getScreenWidth(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private getItemMode(I)I
    .locals 0

    const/16 p0, 0xb4

    if-ne p1, p0, :cond_0

    const/16 p0, 0xa7

    return p0

    :cond_0
    const/16 p0, 0xb0

    if-ne p1, p0, :cond_1

    const/16 p0, 0xa6

    return p0

    :cond_1
    return p1
.end method

.method private getItemText(I)Ljava/lang/String;
    .locals 2

    if-gtz p1, :cond_0

    sget-object p0, Lcom/android/camera/ui/ModeSelectView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getItemText fail, pos is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectView;->mItems:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    iget v0, p1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    iget p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "can\'t find mode text."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getModeByPos(I)I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/16 v1, 0xa3

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView;->mItems:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private getModeFromTag(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0xa0

    :goto_0
    return p0
.end method

.method private getPosition(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/ModeSelectView;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/ui/ModeSelectView;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/16 v2, 0xa3

    iget-object v3, p0, Lcom/android/camera/ui/ModeSelectView;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v0, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private getSelectPos()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ModeSelectView;->getPosition(I)I

    move-result p0

    return p0
.end method

.method private getSelectedMode(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectView;->mSnapHelper:Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;

    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView;->mLayoutManager:Lcom/android/camera/ui/ModeSelectView$ModeLayoutManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/ui/ModeSelectView;->TAG:Ljava/lang/String;

    const-string v0, "target is null???"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/ui/ModeSelectView;->getModeFromTag(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private isItemSelected(I)Z
    .locals 3

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    sget-object p0, Lcom/android/camera/ui/ModeSelectView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isItemSelected fail, pos is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView;->mItems:Ljava/util/List;

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget p0, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    if-ne p1, p0, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method private isSameMode(II)Z
    .locals 2

    const/4 p0, 0x1

    if-ne p1, p2, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa3

    if-ne p1, v1, :cond_1

    const/16 p1, 0xa5

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    return p0
.end method

.method private updateSelectedItemColor(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectView;->mItems:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectView;->mLayoutManager:Lcom/android/camera/ui/ModeSelectView$ModeLayoutManager;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView;->mLayoutManager:Lcom/android/camera/ui/ModeSelectView$ModeLayoutManager;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;->mModeItem:Landroid/widget/TextView;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/camera/ui/ModeSelectView;->getModeFromTag(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/ui/ModeSelectView;->isSameMode(II)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v2, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;->mModeItem:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v3

    if-eq v1, v3, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->getInstance(Landroid/content/Context;)Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->performModeSwitch()V

    :cond_4
    iget-object v1, v2, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;->mModeItem:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v2

    goto :goto_1

    :cond_5
    iget-object v1, v2, Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;->mModeItem:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06013b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public synthetic OooO0O0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/ModeSelectView;->OooO00o()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/ui/ModeSelectView;->canScroll()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/ui/ModeSelectView;->TAG:Ljava/lang/String;

    const-string p1, "dispatchTouchEvent skip."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public fling(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p1

    iget-boolean p0, p0, Lcom/android/camera/ui/ModeSelectView;->mIsModeChange:Z

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurSelectMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    return p0
.end method

.method public init(Lcom/android/camera/data/data/global/ComponentModuleList;ILcom/android/camera/ui/ModeSelectView$onModeSelectedListener;)V
    .locals 3

    sget-object v0, Lcom/android/camera/ui/ModeSelectView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init curMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/android/camera/ui/ModeSelectView;->mModeSelectedListener:Lcom/android/camera/ui/ModeSelectView$onModeSelectedListener;

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getCommonItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/ModeSelectView;->mItems:Ljava/util/List;

    sget-object p1, Lcom/android/camera/ui/ModeSelectView;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init mItems = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/camera/ui/ModeSelectView;->getItemMode(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    iput p1, p0, Lcom/android/camera/ui/ModeSelectView;->mTempMode:I

    iget-object p1, p0, Lcom/android/camera/ui/ModeSelectView;->mAdapter:Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;-><init>(Lcom/android/camera/ui/ModeSelectView;)V

    iput-object p1, p0, Lcom/android/camera/ui/ModeSelectView;->mAdapter:Lcom/android/camera/ui/ModeSelectView$ModeSelectAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/ModeSelectView;->mLayoutManager:Lcom/android/camera/ui/ModeSelectView$ModeLayoutManager;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/camera/ui/ModeSelectView$ModeLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/android/camera/ui/ModeSelectView$ModeLayoutManager;-><init>(Lcom/android/camera/ui/ModeSelectView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/ui/ModeSelectView;->mLayoutManager:Lcom/android/camera/ui/ModeSelectView$ModeLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object p1, p0, Lcom/android/camera/ui/ModeSelectView;->mLayoutManager:Lcom/android/camera/ui/ModeSelectView$ModeLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/ModeSelectView;->mSnapHelper:Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;

    if-nez p1, :cond_2

    new-instance p1, Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;-><init>(Lcom/android/camera/ui/ModeSelectView;)V

    iput-object p1, p0, Lcom/android/camera/ui/ModeSelectView;->mSnapHelper:Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_2
    iput-boolean p2, p0, Lcom/android/camera/ui/ModeSelectView;->mInit:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public moveToPosition(I)V
    .locals 5

    iget v0, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    iput p1, p0, Lcom/android/camera/ui/ModeSelectView;->mTempMode:I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeSelectView;->getPosition(I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/ui/ModeSelectView;->getHeaderOffset()I

    move-result v1

    sget-object v2, Lcom/android/camera/ui/ModeSelectView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveToPosition select pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", offset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/ui/ModeSelectView;->mLayoutManager:Lcom/android/camera/ui/ModeSelectView$ModeLayoutManager;

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    new-instance p1, Lcom/android/camera/ui/OooO0o;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/OooO0o;-><init>(Lcom/android/camera/ui/ModeSelectView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGlobalLayout()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-boolean v0, p0, Lcom/android/camera/ui/ModeSelectView;->mInit:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/ModeSelectView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGlobalLayout mCurMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeSelectView;->moveToPosition(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ModeSelectView;->mInit:Z

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    iget v0, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ModeSelectView;->getSelectedMode(I)I

    move-result v0

    sget-object v1, Lcom/android/camera/ui/ModeSelectView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScrollStateChanged state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/ui/ModeSelectView;->mIsModeChange:Z

    sget-object p1, Lcom/android/camera/ui/ModeSelectView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode change , mCurMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/ModeSelectView;->updateSelectedItemColor(IZ)V

    iget-object p1, p0, Lcom/android/camera/ui/ModeSelectView;->mModeSelectedListener:Lcom/android/camera/ui/ModeSelectView$onModeSelectedListener;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    invoke-direct {p0}, Lcom/android/camera/ui/ModeSelectView;->getSelectPos()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/ModeSelectView;->getItemText(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/camera/ui/ModeSelectView$onModeSelectedListener;->onModeSelected(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScrolled(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    iget-boolean p1, p0, Lcom/android/camera/ui/ModeSelectView;->mInit:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/android/camera/ui/ModeSelectView;->mTempMode:I

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeSelectView;->getSelectedMode(I)I

    move-result p1

    iget p2, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    invoke-direct {p0, p2, p1}, Lcom/android/camera/ui/ModeSelectView;->isSameMode(II)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/camera/ui/ModeSelectView;->updateSelectedItemColor(IZ)V

    :cond_1
    iget p2, p0, Lcom/android/camera/ui/ModeSelectView;->mTempMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ModeSelectView;->isSameMode(II)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/android/camera/ui/ModeSelectView;->TAG:Ljava/lang/String;

    const-string v0, "onScrolled"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/ui/ModeSelectView;->mTempMode:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/camera/ui/ModeSelectView;->mIsModeChange:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ModeSelectView;->updateSelectedItemColor(IZ)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/ui/ModeSelectView;->canScroll()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/ui/ModeSelectView;->TAG:Ljava/lang/String;

    const-string p1, "onTouchEvent skip."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    iget p1, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ModeSelectView;->updateSelectedItemColor(IZ)V

    return-void
.end method

.method public refresh()V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/ModeSelectView;->mCurMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ModeSelectView;->getPosition(I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/ui/ModeSelectView;->getHeaderOffset()I

    move-result v1

    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView;->mLayoutManager:Lcom/android/camera/ui/ModeSelectView$ModeLayoutManager;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectView;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/android/camera/ui/ModeSelectView;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/ModeSelectView;->mItems:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    sget-object v0, Lcom/android/camera/ui/ModeSelectView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
