.class public Lmiui/maml/elements/ListScreenElement;
.super Lmiui/maml/elements/ElementGroup;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ListScreenElement$ListData;,
        Lmiui/maml/elements/ListScreenElement$Column;,
        Lmiui/maml/elements/ListScreenElement$ColumnInfo;,
        Lmiui/maml/elements/ListScreenElement$DataIndexMap;,
        Lmiui/maml/elements/ListScreenElement$ListItemElement;
    }
.end annotation


# static fields
.field private static ACC:D = 0.0

.field private static DATA_TYPE_BITMAP:Ljava/lang/String; = null

.field private static DATA_TYPE_DOUBLE:Ljava/lang/String; = null

.field private static DATA_TYPE_FLOAT:Ljava/lang/String; = null

.field private static DATA_TYPE_INTEGER:Ljava/lang/String; = null

.field private static DATA_TYPE_INTEGER1:Ljava/lang/String; = null

.field private static DATA_TYPE_LONG:Ljava/lang/String; = null

.field private static DATA_TYPE_STRING:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "ListScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "List"


# instance fields
.field protected mAttrDataBinders:Lmiui/maml/elements/AttrDataBinders;

.field private mBottomIndex:I

.field private mCachedItemCount:I

.field private mClearOnFinish:Z

.field private mColumnsInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/ListScreenElement$ColumnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private mCurrentTime:J

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/ListScreenElement$DataIndexMap;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexedVariables:[Lmiui/maml/data/IndexedVariable;

.field private mInnerGroup:Lmiui/maml/elements/ElementGroup;

.field private mIsChildScroll:Z

.field private mIsScroll:Z

.field private mIsUpDirection:Z

.field private mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

.field private mItemCount:I

.field private mLastTime:J

.field protected mListData:Lmiui/maml/elements/ListScreenElement$ListData;

.field private final mLock:Ljava/lang/Object;

.field private mMaxHeight:Lmiui/maml/data/Expression;

.field private mMoving:Z

.field private mOffsetX:D

.field private mOffsetY:D

.field private mPressed:Z

.field private mReuseIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

.field private mSelectedId:I

.field private mSelectedIdVar:Lmiui/maml/data/IndexedVariable;

.field private mSpeed:D

.field private mStartAnimTime:J

.field private mStartAnimY:F

.field private mTopIndex:I

.field private mTouchStartX:D

.field private mTouchStartY:D

.field private mVisibleItemCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "string"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_STRING:Ljava/lang/String;

    const-string v0, "bitmap"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_BITMAP:Ljava/lang/String;

    const-string v0, "int"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER:Ljava/lang/String;

    const-string v0, "integer"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER1:Ljava/lang/String;

    const-string v0, "double"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_DOUBLE:Ljava/lang/String;

    const-string v0, "long"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_LONG:Ljava/lang/String;

    const-string v0, "float"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_FLOAT:Ljava/lang/String;

    const-wide/high16 v0, -0x3f77000000000000L    # -800.0

    sput-wide v0, Lmiui/maml/elements/ListScreenElement;->ACC:D

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    const-string v1, "ListScreenElement"

    if-eqz v0, :cond_f1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ListScreenElement;->setClip(Z)V

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const-string v3, "maxHeight"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mMaxHeight:Lmiui/maml/data/Expression;

    const-string v2, "clearOnFinish"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/elements/ListScreenElement;->mClearOnFinish:Z

    const-string v2, "data"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e4

    invoke-static {v2}, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->createColumnsInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_d7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lmiui/maml/data/IndexedVariable;

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexedVariables:[Lmiui/maml/data/IndexedVariable;

    const-string v3, "AttrDataBinders"

    invoke-static {p1, v3}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_ca

    new-instance v1, Lmiui/maml/elements/AttrDataBinders;

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContextVariables:Lmiui/maml/data/ContextVariables;

    invoke-direct {v1, v3, v4}, Lmiui/maml/elements/AttrDataBinders;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/ContextVariables;)V

    iput-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mAttrDataBinders:Lmiui/maml/elements/AttrDataBinders;

    const-string v1, "Data"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_8c

    new-instance v3, Lmiui/maml/elements/ListScreenElement$ListData;

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v3, v1, v4, p0}, Lmiui/maml/elements/ListScreenElement$ListData;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/elements/ListScreenElement;)V

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mListData:Lmiui/maml/elements/ListScreenElement$ListData;

    :cond_8c
    const-string v3, "scrollbar"

    invoke-virtual {p0, v3}, Lmiui/maml/elements/ListScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v3

    instance-of v4, v3, Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v4, :cond_a7

    move-object v4, v3

    check-cast v4, Lmiui/maml/elements/AnimatedScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    sget-object v5, Lmiui/maml/elements/ScreenElement$AlignV;->TOP:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v5, v4, Lmiui/maml/elements/AnimatedScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {p0, v3}, Lmiui/maml/elements/ListScreenElement;->removeElement(Lmiui/maml/elements/ScreenElement;)V

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, v4}, Lmiui/maml/elements/ListScreenElement;->addElement(Lmiui/maml/elements/ScreenElement;)V

    :cond_a7
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".selectedId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v6}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v4, v5, v6, v0}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedIdVar:Lmiui/maml/data/IndexedVariable;

    return-void

    :cond_ca
    const-string v0, "no attr data binder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List: no attr data binder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d7
    const-string v0, "invalid item data"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List: invalid item data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e4
    const-string v0, "no data"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List: no data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f1
    const-string v0, "no item"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List: no item"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_BITMAP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_DOUBLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_LONG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_FLOAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/maml/elements/ListScreenElement;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ListScreenElement;->addColumn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private addColumn(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    if-eqz p1, :cond_78

    if-nez p2, :cond_6

    goto/16 :goto_78

    :cond_6
    const/4 v0, -0x1

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_25

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v3, v3, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    move v0, v2

    goto :goto_25

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_25
    :goto_25
    if-gez v0, :cond_28

    return-void

    :cond_28
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2b
    array-length v3, p2

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_33
    if-ge v5, v4, :cond_58

    const/4 v6, 0x0

    if-ge v5, v3, :cond_3b

    aget-object v7, p2, v5

    move-object v6, v7

    :cond_3b
    iget-object v7, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    invoke-virtual {v7, v0, v6}, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->setData(ILjava/lang/Object;)V

    iget-object v8, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget v8, v8, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    if-ltz v8, :cond_55

    invoke-direct {p0, v5}, Lmiui/maml/elements/ListScreenElement;->getItem(I)Lmiui/maml/elements/ListScreenElement$ListItemElement;

    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :cond_58
    move v5, v4

    :goto_59
    if-ge v5, v3, :cond_6d

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, p2, v5

    aput-object v7, v6, v0

    invoke-virtual {p0, v6}, Lmiui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    :cond_6d
    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->clearEmptyRowLocked()V

    monitor-exit v2
    :try_end_71
    .catchall {:try_start_2b .. :try_end_71} :catchall_75

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->requestUpdate()V

    return-void

    :catchall_75
    move-exception v3

    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v3

    :cond_78
    :goto_78
    return-void
.end method

.method private bindDataLocked(Lmiui/maml/elements/ListScreenElement$ListItemElement;II)V
    .registers 12

    if-ltz p3, :cond_60

    iget v0, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    if-lt p3, v0, :cond_7

    goto :goto_60

    :cond_7
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget-object v0, v0, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    invoke-virtual {p1, p3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iput p2, v1, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mNeedRebind:Z

    int-to-float v1, p3

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    double-to-float v3, v1

    float-to-double v3, v3

    invoke-virtual {p1, v3, v4}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setY(D)V

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContextVariables:Lmiui/maml/data/ContextVariables;

    const/4 v5, 0x0

    :goto_44
    if-ge v5, v3, :cond_58

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v6, v6, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    aget-object v7, v0, v5

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/ContextVariables;->setVar(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    :cond_58
    iget-object v5, p0, Lmiui/maml/elements/ListScreenElement;->mAttrDataBinders:Lmiui/maml/elements/AttrDataBinders;

    if-eqz v5, :cond_5f

    invoke-virtual {v5, p1}, Lmiui/maml/elements/AttrDataBinders;->bind(Lmiui/maml/elements/ElementGroup;)V

    :cond_5f
    return-void

    :cond_60
    :goto_60
    const-string v0, "ListScreenElement"

    const-string v1, "invalid item data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkVisibility()V
    .registers 7

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v4

    if-ltz v4, :cond_2f

    iget v5, p0, Lmiui/maml/elements/ListScreenElement;->mTopIndex:I

    if-lt v4, v5, :cond_2f

    iget v5, p0, Lmiui/maml/elements/ListScreenElement;->mBottomIndex:I

    if-gt v4, v5, :cond_2f

    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->isVisible()Z

    move-result v5

    if-nez v5, :cond_39

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->show(Z)V

    goto :goto_39

    :cond_2f
    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_39

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->show(Z)V

    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private clearEmptyRowLocked()V
    .registers 9

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_8
    if-ltz v1, :cond_2b

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget-object v3, v2, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    const/4 v4, 0x1

    array-length v5, v3

    const/4 v6, 0x0

    :goto_17
    if-ge v6, v5, :cond_22

    aget-object v7, v3, v6

    if-eqz v7, :cond_1f

    const/4 v4, 0x0

    goto :goto_22

    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_22
    :goto_22
    if-nez v4, :cond_25

    goto :goto_2b

    :cond_25
    invoke-direct {p0, v1}, Lmiui/maml/elements/ListScreenElement;->removeItemLocked(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_2b
    :goto_2b
    return-void
.end method

.method private getItem(I)Lmiui/maml/elements/ListScreenElement$ListItemElement;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-ltz p1, :cond_70

    :try_start_6
    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    if-lt p1, v2, :cond_b

    goto :goto_70

    :cond_b
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget v2, v2, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    if-ltz v2, :cond_30

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v3}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v3}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    move-object v0, v3

    :cond_30
    if-ltz v2, :cond_3a

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v3

    if-eq v3, p1, :cond_57

    :cond_3a
    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->getUseableElementIndex()I

    move-result v3

    move v2, v3

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v3}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    move-object v0, v3

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v3

    if-gez v3, :cond_57

    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->reset()V

    :cond_57
    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v3

    if-ne v3, p1, :cond_6b

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget-boolean v3, v3, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mNeedRebind:Z

    if-eqz v3, :cond_6e

    :cond_6b
    invoke-direct {p0, v0, v2, p1}, Lmiui/maml/elements/ListScreenElement;->bindDataLocked(Lmiui/maml/elements/ListScreenElement$ListItemElement;II)V

    :cond_6e
    monitor-exit v1

    return-object v0

    :cond_70
    :goto_70
    const/4 v2, 0x0

    monitor-exit v1

    return-object v2

    :catchall_73
    move-exception v2

    monitor-exit v1
    :try_end_75
    .catchall {:try_start_6 .. :try_end_75} :catchall_73

    throw v2
.end method

.method private getUseableElementIndex()I
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_16

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_39

    :cond_16
    iget-boolean v2, p0, Lmiui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    if-eqz v2, :cond_27

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_39

    :cond_27
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_39
    iget-boolean v3, p0, Lmiui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    if-eqz v3, :cond_47

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_47
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_50
    return v2
.end method

.method private moveTo(D)V
    .registers 8

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v0

    iget v1, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    int-to-float v1, v1

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    cmpg-double v0, p1, v0

    const-wide/16 v1, 0x0

    if-gez v0, :cond_28

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v0

    iget v3, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    int-to-float v3, v3

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v4}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    float-to-double p1, v0

    iput-wide v1, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    :cond_28
    const-wide/16 v3, 0x0

    cmpl-double v0, p1, v3

    if-lez v0, :cond_32

    const-wide/16 p1, 0x0

    iput-wide v1, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    :cond_32
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    double-to-float v1, p1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/ElementGroup;->setY(D)V

    neg-double v0, p1

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v2

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/ListScreenElement;->mTopIndex:I

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v0

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lmiui/maml/elements/ListScreenElement;->mTopIndex:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/ListScreenElement;->mBottomIndex:I

    iget v0, p0, Lmiui/maml/elements/ListScreenElement;->mTopIndex:I

    :goto_79
    iget v1, p0, Lmiui/maml/elements/ListScreenElement;->mBottomIndex:I

    if-gt v0, v1, :cond_83

    invoke-direct {p0, v0}, Lmiui/maml/elements/ListScreenElement;->getItem(I)Lmiui/maml/elements/ListScreenElement$ListItemElement;

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    :cond_83
    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->checkVisibility()V

    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->updateScorllBar()V

    return-void
.end method

.method private removeItemLocked(I)V
    .registers 9

    if-ltz p1, :cond_96

    iget v0, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    if-lt p1, v0, :cond_8

    goto/16 :goto_96

    :cond_8
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ListScreenElement;->descale(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ListScreenElement;->setActualHeight(D)V

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v0, :cond_71

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v3}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v4

    if-ne v4, p1, :cond_59

    move v1, v2

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    const-wide v5, -0x10000000000001L

    invoke-virtual {v3, v5, v6}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setY(D)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->show(Z)V

    goto :goto_6e

    :cond_59
    if-le v4, p1, :cond_6e

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v3, v5}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    add-int/lit8 v5, v4, -0x1

    int-to-float v5, v5

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v6}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-virtual {v3, v5, v6}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setY(D)V

    :cond_6e
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_71
    if-lez v0, :cond_92

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v3}, Lmiui/maml/elements/ElementGroup;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-direct {p0, v3, v4}, Lmiui/maml/elements/ListScreenElement;->moveTo(D)V

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_92
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->requestUpdate()V

    return-void

    :cond_96
    :goto_96
    return-void
.end method

.method private resetInner()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->show(Z)V

    :cond_8
    iput-boolean v1, p0, Lmiui/maml/elements/ListScreenElement;->mMoving:Z

    iput-boolean v1, p0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    iput-boolean v1, p0, Lmiui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/maml/elements/ListScreenElement;->mSpeed:D

    return-void
.end method

.method private setVariables()V
    .registers 9

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_7a

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v3, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    sget-object v4, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    if-eq v3, v4, :cond_77

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexedVariables:[Lmiui/maml/data/IndexedVariable;

    aget-object v4, v3, v1

    if-nez v4, :cond_4a

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v6}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v7, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v7}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->isNumber()Z

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    aput-object v4, v3, v1

    :cond_4a
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4d
    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mIndexedVariables:[Lmiui/maml/data/IndexedVariable;

    aget-object v4, v4, v1

    iget v5, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    if-ltz v5, :cond_6e

    iget v5, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6e

    iget-object v5, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    iget v6, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget-object v5, v5, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    aget-object v5, v5, v1

    goto :goto_6f

    :cond_6e
    const/4 v5, 0x0

    :goto_6f
    invoke-virtual {v4, v5}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_77

    :catchall_74
    move-exception v4

    monitor-exit v3
    :try_end_76
    .catchall {:try_start_4d .. :try_end_76} :catchall_74

    throw v4

    :cond_77
    :goto_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7a
    return-void
.end method

.method private startAnimation()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getY()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimY:F

    return-void
.end method

.method private updateScorllBar()V
    .registers 14

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    if-eqz v0, :cond_54

    iget v0, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    int-to-float v0, v0

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v2

    float-to-double v2, v2

    div-double v4, v2, v0

    const/4 v6, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v4, v7

    if-ltz v9, :cond_24

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :cond_24
    iget-object v9, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v9}, Lmiui/maml/elements/ElementGroup;->getY()F

    move-result v9

    float-to-double v9, v9

    sub-double v11, v2, v0

    div-double/2addr v9, v11

    cmpl-double v11, v9, v7

    if-lez v11, :cond_34

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    :cond_34
    iget-object v11, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    sub-double/2addr v7, v4

    mul-double/2addr v7, v2

    mul-double/2addr v7, v9

    double-to-float v7, v7

    float-to-double v7, v7

    invoke-virtual {v11, v7, v8}, Lmiui/maml/elements/AnimatedScreenElement;->setY(D)V

    iget-object v7, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    mul-double v11, v2, v4

    double-to-float v8, v11

    float-to-double v11, v8

    invoke-virtual {v7, v11, v12}, Lmiui/maml/elements/AnimatedScreenElement;->setHeight(D)V

    iget-object v7, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v7}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v7

    if-eq v7, v6, :cond_54

    iget-object v7, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v7, v6}, Lmiui/maml/elements/AnimatedScreenElement;->show(Z)V

    :cond_54
    return-void
.end method


# virtual methods
.method public varargs addItem([Ljava/lang/Object;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    array-length v0, p1

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_14

    const-string v0, "ListScreenElement"

    const-string v1, "invalid item data count"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    array-length v0, p1

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_44

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->validate(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid item data type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ListScreenElement"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_44
    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_47
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    new-instance v3, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-direct {v3, v4}, Lmiui/maml/elements/ListScreenElement$DataIndexMap;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ListScreenElement;->descale(D)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ListScreenElement;->setActualHeight(D)V

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->getHeight()F

    move-result v2

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mMaxHeight:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v3}, Lmiui/maml/elements/ListScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/ListScreenElement;->scale(D)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lmiui/maml/elements/ListScreenElement;->mVisibleItemCount:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lmiui/maml/elements/ListScreenElement;->mCachedItemCount:I

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lmiui/maml/elements/ListScreenElement;->mCachedItemCount:I

    if-ge v2, v3, :cond_d5

    new-instance v3, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    iget-object v4, v4, Lmiui/maml/elements/ListScreenElement$ListItemElement;->mNode:Lorg/w3c/dom/Element;

    iget-object v5, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    iget-object v5, v5, Lmiui/maml/elements/ListScreenElement$ListItemElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v3, v4, v5}, Lmiui/maml/elements/ListScreenElement$ListItemElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v4, v3}, Lmiui/maml/elements/ElementGroup;->addElement(Lmiui/maml/elements/ScreenElement;)V

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    iget v5, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iput v2, v4, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    iput v4, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->init()V

    const/4 v4, -0x1

    iput v4, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    invoke-direct {p0, v3, v2, v4}, Lmiui/maml/elements/ListScreenElement;->bindDataLocked(Lmiui/maml/elements/ListScreenElement$ListItemElement;II)V

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    iget v5, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d5
    monitor-exit v1
    :try_end_d6
    .catchall {:try_start_47 .. :try_end_d6} :catchall_da

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->requestUpdate()V

    return-void

    :catchall_da
    move-exception v2

    :try_start_db
    monitor-exit v1
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_da

    throw v2
.end method

.method protected doTick(J)V
    .registers 15

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;->doTick(J)V

    iget-wide v0, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4f

    iget-boolean v4, p0, Lmiui/maml/elements/ListScreenElement;->mPressed:Z

    if-nez v4, :cond_4f

    sub-long v4, p1, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_49

    iget-wide v0, p0, Lmiui/maml/elements/ListScreenElement;->mSpeed:D

    sget-wide v2, Lmiui/maml/elements/ListScreenElement;->ACC:D

    long-to-double v6, v4

    mul-double/2addr v6, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    add-double/2addr v6, v0

    const-wide/16 v10, 0x0

    cmpg-double v6, v6, v10

    if-gez v6, :cond_29

    goto :goto_49

    :cond_29
    long-to-double v6, v4

    mul-double/2addr v0, v6

    div-double/2addr v0, v8

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v6

    long-to-double v6, v4

    mul-double/2addr v2, v6

    long-to-double v6, v4

    mul-double/2addr v2, v6

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimY:F

    float-to-double v2, v2

    iget-boolean v6, p0, Lmiui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    if-eqz v6, :cond_44

    neg-double v0, v0

    :cond_44
    add-double/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lmiui/maml/elements/ListScreenElement;->moveTo(D)V

    goto :goto_4c

    :cond_49
    :goto_49
    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->resetInner()V

    :goto_4c
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->requestUpdate()V

    :cond_4f
    return-void
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    if-ltz v1, :cond_2f

    iget v1, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    if-ge v1, v2, :cond_2f

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget v1, v1, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    if-ltz v1, :cond_2f

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v2, p1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v3

    if-eqz v3, :cond_2f

    monitor-exit v0

    return-object v3

    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_35

    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    return-object v0

    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public finish()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->finish()V

    iget-boolean v0, p0, Lmiui/maml/elements/ListScreenElement;->mClearOnFinish:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->removeAllItems()V

    :cond_a
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mListData:Lmiui/maml/elements/ListScreenElement$ListData;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement$ListData;->finish()V

    :cond_11
    return-void
.end method

.method public getColumnsInfo()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/ListScreenElement$ColumnInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeight()F
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mMaxHeight:Lmiui/maml/data/Expression;

    if-nez v0, :cond_9

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->getHeight()F

    move-result v0

    goto :goto_21

    :cond_9
    iget v0, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    int-to-float v0, v0

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mMaxHeight:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v1}, Lmiui/maml/elements/ListScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/ListScreenElement;->scale(D)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_21
    return v0
.end method

.method public init()V
    .registers 5

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->resetInner()V

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/ElementGroup;->setY(D)V

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ListScreenElement;->descale(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ListScreenElement;->setActualHeight(D)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedIdVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->setVariables()V

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mListData:Lmiui/maml/elements/ListScreenElement$ListData;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement$ListData;->init()V

    :cond_2c
    return-void
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .registers 6

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    if-nez v1, :cond_24

    new-instance v1, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, p1, v2}, Lmiui/maml/elements/ListScreenElement$ListItemElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    new-instance v1, Lmiui/maml/elements/ElementGroup;

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, v2, v3}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    return-object v1

    :cond_24
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    return-object v1
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->isVisible()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x1

    if-eqz v5, :cond_112

    if-eq v5, v10, :cond_e8

    const/4 v11, 0x2

    const/4 v12, 0x3

    if-eq v5, v11, :cond_49

    if-eq v5, v12, :cond_2c

    move v11, v3

    move v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_15c

    :cond_2c
    iput-boolean v2, v0, Lmiui/maml/elements/ListScreenElement;->mPressed:Z

    iget-boolean v5, v0, Lmiui/maml/elements/ListScreenElement;->mMoving:Z

    if-eqz v5, :cond_43

    const-string v5, "cancel"

    invoke-virtual {v0, v5}, Lmiui/maml/elements/ListScreenElement;->performAction(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->resetInner()V

    iput-wide v8, v0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    const/4 v4, 0x1

    move v11, v3

    move v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_15c

    :cond_43
    move v11, v3

    move v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_15c

    :cond_49
    iget-boolean v5, v0, Lmiui/maml/elements/ListScreenElement;->mMoving:Z

    if-eqz v5, :cond_e2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v0, Lmiui/maml/elements/ListScreenElement;->mCurrentTime:J

    float-to-double v8, v3

    iget-wide v13, v0, Lmiui/maml/elements/ListScreenElement;->mTouchStartY:D

    sub-double/2addr v8, v13

    iput-wide v8, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    float-to-double v13, v1

    move v11, v3

    iget-wide v2, v0, Lmiui/maml/elements/ListScreenElement;->mTouchStartX:D

    sub-double/2addr v13, v2

    iput-wide v13, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetX:D

    iget-boolean v2, v0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    if-nez v2, :cond_91

    iget-boolean v2, v0, Lmiui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    if-nez v2, :cond_91

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v8, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetX:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide/high16 v13, 0x4014000000000000L    # 5.0

    cmpl-double v15, v2, v13

    if-lez v15, :cond_83

    iget-boolean v15, v0, Lmiui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    if-nez v15, :cond_83

    cmpl-double v15, v2, v8

    if-ltz v15, :cond_83

    iput-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    goto :goto_91

    :cond_83
    cmpl-double v13, v8, v13

    if-lez v13, :cond_91

    iget-boolean v13, v0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    if-nez v13, :cond_91

    cmpg-double v13, v2, v8

    if-gez v13, :cond_91

    iput-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    :cond_91
    :goto_91
    iget-wide v2, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    cmpg-double v2, v2, v6

    if-ltz v2, :cond_9e

    iget-boolean v2, v0, Lmiui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    if-eqz v2, :cond_9c

    goto :goto_9e

    :cond_9c
    const/4 v2, 0x0

    goto :goto_9f

    :cond_9e
    :goto_9e
    move v2, v10

    :goto_9f
    iput-boolean v2, v0, Lmiui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    iget-boolean v2, v0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    if-eqz v2, :cond_dc

    move-object/from16 v2, p1

    invoke-virtual {v2, v12}, Landroid/view/MotionEvent;->setAction(I)V

    const-string v3, "move"

    invoke-virtual {v0, v3}, Lmiui/maml/elements/ListScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v11}, Lmiui/maml/elements/ListScreenElement;->onActionMove(FF)V

    iget-wide v6, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget-wide v8, v0, Lmiui/maml/elements/ListScreenElement;->mCurrentTime:J

    iget-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mLastTime:J

    sub-long/2addr v8, v12

    long-to-double v8, v8

    div-double/2addr v6, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    iput-wide v6, v0, Lmiui/maml/elements/ListScreenElement;->mSpeed:D

    iget-object v3, v0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v3}, Lmiui/maml/elements/ElementGroup;->getY()F

    move-result v3

    float-to-double v6, v3

    iget-wide v8, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    add-double/2addr v6, v8

    invoke-direct {v0, v6, v7}, Lmiui/maml/elements/ListScreenElement;->moveTo(D)V

    float-to-double v8, v11

    iput-wide v8, v0, Lmiui/maml/elements/ListScreenElement;->mTouchStartY:D

    iget-wide v8, v0, Lmiui/maml/elements/ListScreenElement;->mCurrentTime:J

    iput-wide v8, v0, Lmiui/maml/elements/ListScreenElement;->mLastTime:J

    goto :goto_de

    :cond_dc
    move-object/from16 v2, p1

    :goto_de
    const/4 v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_15c

    :cond_e2
    move-object/from16 v2, p1

    move v11, v3

    const/4 v3, 0x0

    goto/16 :goto_15c

    :cond_e8
    move-object/from16 v2, p1

    move v11, v3

    const/4 v3, 0x0

    iput-boolean v3, v0, Lmiui/maml/elements/ListScreenElement;->mPressed:Z

    iget-boolean v5, v0, Lmiui/maml/elements/ListScreenElement;->mMoving:Z

    if-eqz v5, :cond_15c

    const-string v5, "ListScreenElement"

    const-string v6, "unlock touch up"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "up"

    invoke-virtual {v0, v5}, Lmiui/maml/elements/ListScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->onActionUp()V

    iget-wide v5, v0, Lmiui/maml/elements/ListScreenElement;->mSpeed:D

    const-wide/high16 v7, 0x4079000000000000L    # 400.0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_10d

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->resetInner()V

    goto :goto_110

    :cond_10d
    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->startAnimation()V

    :goto_110
    const/4 v4, 0x1

    goto :goto_15c

    :cond_112
    move v11, v3

    move v3, v2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v11}, Lmiui/maml/elements/ListScreenElement;->touched(FF)Z

    move-result v5

    if-eqz v5, :cond_15c

    iput-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mMoving:Z

    iput-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mPressed:Z

    const-string v5, "down"

    invoke-virtual {v0, v5}, Lmiui/maml/elements/ListScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v11}, Lmiui/maml/elements/ListScreenElement;->onActionDown(FF)V

    iput-wide v8, v0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    iput-wide v6, v0, Lmiui/maml/elements/ListScreenElement;->mSpeed:D

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v0, Lmiui/maml/elements/ListScreenElement;->mLastTime:J

    iget-object v5, v0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v5}, Lmiui/maml/elements/ElementGroup;->getAbsoluteTop()F

    move-result v5

    sub-float v5, v11, v5

    iget-object v6, v0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v6}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, v0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    iget-object v6, v0, Lmiui/maml/elements/ListScreenElement;->mSelectedIdVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v7, v5

    invoke-virtual {v6, v7, v8}, Lmiui/maml/data/IndexedVariable;->set(D)V

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->setVariables()V

    float-to-double v5, v1

    iput-wide v5, v0, Lmiui/maml/elements/ListScreenElement;->mTouchStartX:D

    float-to-double v5, v11

    iput-wide v5, v0, Lmiui/maml/elements/ListScreenElement;->mTouchStartY:D

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->updateScorllBar()V

    const/4 v4, 0x1

    :cond_15c
    :goto_15c
    invoke-super/range {p0 .. p1}, Lmiui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_168

    if-eqz v4, :cond_169

    iget-boolean v5, v0, Lmiui/maml/elements/ListScreenElement;->mInterceptTouch:Z

    if-eqz v5, :cond_169

    :cond_168
    move v3, v10

    :cond_169
    return v3
.end method

.method public removeAllItems()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->removeAllElements()V

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/maml/elements/ElementGroup;->setY(D)V

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, -0x1

    iput v1, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    const/4 v1, 0x0

    iput v1, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/ListScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/ListScreenElement;->setActualHeight(D)V

    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method
