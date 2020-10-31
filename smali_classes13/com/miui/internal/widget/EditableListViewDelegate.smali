.class public Lcom/miui/internal/widget/EditableListViewDelegate;
.super Ljava/lang/Object;
.source "EditableListViewDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;,
        Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;,
        Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;
    }
.end annotation


# static fields
.field private static final CLEAR_CHOICES:Lmiui/reflect/Method;

.field private static final GET_CHECKED_ITEM_POSITIONS:Lmiui/reflect/Method;

.field private static final IS_ITEM_CHECKED:Lmiui/reflect/Method;

.field private static final KEY_CHECKBOX:I = 0x7fffffff

.field private static final SET_ADAPTER:Lmiui/reflect/Method;

.field private static final SET_ITEM_CHECKED:Lmiui/reflect/Method;

.field private static final SET_MULTI_CHOICE_MODE_LISTENER:Lmiui/reflect/Method;


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;

.field private mAbsListViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/AbsListView;",
            ">;"
        }
    .end annotation
.end field

.field private mActionMode:Landroid/view/ActionMode;

.field private mCheckBoxList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedItemCount:I

.field private mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

.field private mItemCheckFilter:Lmiui/widget/EditableListView$ItemCheckFilter;

.field private mLastBottom:I

.field private mListAdapterWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

.field private mMultiChoiceModeListenerWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

.field private mPreventDispatchItemCheckedStateChange:Z

.field private mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

.field private mSupportHeaderView:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "setAdapter"

    const-string v2, "(Landroid/widget/ListAdapter;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->SET_ADAPTER:Lmiui/reflect/Method;

    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "clearChoices"

    const-string v2, "()V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->CLEAR_CHOICES:Lmiui/reflect/Method;

    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "setItemChecked"

    const-string v2, "(IZ)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->SET_ITEM_CHECKED:Lmiui/reflect/Method;

    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "isItemChecked"

    const-string v2, "(I)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->IS_ITEM_CHECKED:Lmiui/reflect/Method;

    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "getCheckedItemPositions"

    const-string v2, "()Landroid/util/SparseBooleanArray;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->GET_CHECKED_ITEM_POSITIONS:Lmiui/reflect/Method;

    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "setMultiChoiceModeListener"

    const-string v2, "(Landroid/widget/AbsListView$MultiChoiceModeListener;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->SET_MULTI_CHOICE_MODE_LISTENER:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckBoxList:Ljava/util/List;

    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$1;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$2;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/View;)Landroid/widget/CheckBox;
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->findCheckBoxByView(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/EditableListViewDelegate;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mLastBottom:I

    return v0
.end method

.method static synthetic access$202(Lcom/miui/internal/widget/EditableListViewDelegate;I)I
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mLastBottom:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/internal/widget/EditableListViewDelegate;I)I
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    return p1
.end method

.method static synthetic access$412(Lcom/miui/internal/widget/EditableListViewDelegate;I)I
    .registers 3

    iget v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/internal/widget/EditableListViewDelegate;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mPreventDispatchItemCheckedStateChange:Z

    return v0
.end method

.method static synthetic access$700(Lcom/miui/internal/widget/EditableListViewDelegate;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mSupportHeaderView:Z

    return v0
.end method

.method static synthetic access$800(Lcom/miui/internal/widget/EditableListViewDelegate;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemCheckable(I)Z

    move-result v0

    return v0
.end method

.method private findCheckBoxByView(Landroid/view/View;)Landroid/widget/CheckBox;
    .registers 5

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-nez v1, :cond_1a

    const v2, 0x1020001

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_1a

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1a
    return-object v1
.end method

.method private getCheckBoxesInListView()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckBoxList:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckBoxList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_22

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->findCheckBoxByView(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_22
    return-object v1
.end method

.method private getCheckableItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mItemCheckFilter:Lmiui/widget/EditableListView$ItemCheckFilter;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lmiui/widget/EditableListView$ItemCheckFilter;->getCheckableItemCount()I

    move-result v0

    goto :goto_19

    :cond_9
    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private isItemCheckable(I)Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mItemCheckFilter:Lmiui/widget/EditableListView$ItemCheckFilter;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Lmiui/widget/EditableListView$ItemCheckFilter;->isItemCheckable(I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private updateOnScreenCheckedViews()V
    .registers 9

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_27

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v4, v0, v2

    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-interface {v5, v3, v4, v6, v7}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_27
    return-void
.end method


# virtual methods
.method public clearChoices()V
    .registers 6

    sget-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->CLEAR_CHOICES:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    iput v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->updateOnScreenCheckedViews()V

    iput v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mListAdapterWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .registers 5

    sget-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->GET_CHECKED_ITEM_POSITIONS:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/AbsListView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public initialize(Landroid/widget/AbsListView;Ljava/lang/Class;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/AbsListView;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3b

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    iput-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v1, v0, Landroid/widget/ListView;

    iput-boolean v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mSupportHeaderView:Z

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    sget-object v1, Lcom/miui/internal/widget/EditableListViewDelegate;->SET_ADAPTER:Lmiui/reflect/Method;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    check-cast v6, Landroid/widget/ListAdapter;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3a
    return-void

    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "absListView is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAllItemsChecked()Z
    .registers 3

    iget v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getCheckableItemCount()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isInActionMode()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isItemChecked(I)Z
    .registers 9

    iget-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mSupportHeaderView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    sget-object v2, Lcom/miui/internal/widget/EditableListViewDelegate;->IS_ITEM_CHECKED:Lmiui/reflect/Method;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    add-int v6, p1, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isItemIdChecked(J)Z
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemIds()[J

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_16

    aget-wide v4, v1, v3

    cmp-long v6, p1, v4

    if-nez v6, :cond_13

    const/4 v0, 0x1

    goto :goto_16

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_16
    :goto_16
    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 8

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_31

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1d

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mListAdapterWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

    sget-object v3, Lcom/miui/internal/widget/EditableListViewDelegate;->SET_ADAPTER:Lmiui/reflect/Method;

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    new-array v1, v1, [Ljava/lang/Object;

    check-cast v2, Landroid/widget/ListAdapter;

    aput-object v2, v1, v0

    invoke-virtual {v3, v4, v5, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_31

    :cond_1d
    new-instance v2, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

    invoke-direct {v2, p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/widget/ListAdapter;)V

    iput-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mListAdapterWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

    sget-object v3, Lcom/miui/internal/widget/EditableListViewDelegate;->SET_ADAPTER:Lmiui/reflect/Method;

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {v3, v4, v5, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public setAllItemsChecked(Z)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mPreventDispatchItemCheckedStateChange:Z

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1a

    invoke-direct {p0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemCheckable(I)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p0, v1, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setItemChecked(IZ)V

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    const/4 v1, 0x0

    if-eqz p1, :cond_22

    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getCheckableItemCount()I

    move-result v2

    goto :goto_23

    :cond_22
    move v2, v1

    :goto_23
    iput v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    iput-boolean v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mPreventDispatchItemCheckedStateChange:Z

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v1, v2}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->updateOnScreenCheckedViews()V

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mMultiChoiceModeListenerWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    if-eqz v1, :cond_3a

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, v2, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    :cond_3a
    return-void
.end method

.method public setItemCheckFilter(Lmiui/widget/EditableListView$ItemCheckFilter;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mItemCheckFilter:Lmiui/widget/EditableListView$ItemCheckFilter;

    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 10

    iget-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mSupportHeaderView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    sget-object v2, Lcom/miui/internal/widget/EditableListViewDelegate;->SET_ITEM_CHECKED:Lmiui/reflect/Method;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int v6, p1, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mMultiChoiceModeListenerWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mMultiChoiceModeListenerWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mMultiChoiceModeListenerWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    sget-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->SET_MULTI_CHOICE_MODE_LISTENER:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mMultiChoiceModeListenerWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public setUpdateListener(Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    :cond_4
    return-void
.end method

.method public updateCheckStatus(Landroid/view/ActionMode;)V
    .registers 9

    if-eqz p1, :cond_4c

    iget v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_18

    sget v4, Lmiui/R$string;->select_item:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2d

    :cond_18
    sget v4, Lmiui/R$plurals;->items_selected:I

    invoke-virtual {v1, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    :goto_2d
    move-object v4, p1

    check-cast v4, Lmiui/view/EditActionMode;

    const v5, 0x102001a

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->isAllItemsChecked()Z

    move-result v6

    if-eqz v6, :cond_3c

    sget v6, Lmiui/R$string;->deselect_all:I

    goto :goto_3e

    :cond_3c
    sget v6, Lmiui/R$string;->select_all:I

    :goto_3e
    invoke-interface {v4, v5, v6}, Lmiui/view/EditActionMode;->setButton(II)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v4

    if-eqz v0, :cond_48

    goto :goto_49

    :cond_48
    move v2, v3

    :goto_49
    invoke-interface {v4, v3, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    :cond_4c
    return-void
.end method

.method public updateOnScreenCheckedView(Landroid/view/View;IJ)V
    .registers 9

    if-eqz p1, :cond_29

    sget-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->GET_CHECKED_ITEM_POSITIONS:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->findCheckBoxByView(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_29

    :cond_1f
    instance-of v2, p1, Landroid/widget/Checkable;

    if-eqz v2, :cond_29

    move-object v2, p1

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_29
    :goto_29
    return-void
.end method
