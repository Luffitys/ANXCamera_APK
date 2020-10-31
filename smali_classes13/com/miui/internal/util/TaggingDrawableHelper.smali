.class public Lcom/miui/internal/util/TaggingDrawableHelper;
.super Ljava/lang/Object;
.source "TaggingDrawableHelper.java"


# static fields
.field static CHILD_SEQUENCE_STATE:[I

.field private static final DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

.field private static final ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

.field private static final ViewGroupClass:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

.field private static final sRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->get()Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewGroupClass:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lmiui/R$attr;->children_sequence_state:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->CHILD_SEQUENCE_STATE:[I

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->sRect:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOrientationState(Landroid/view/ViewGroup;IZ)I
    .registers 7

    instance-of v0, p0, Lmiui/view/OnTaggingDrawableState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    move-object v0, p0

    check-cast v0, Lmiui/view/OnTaggingDrawableState;

    invoke-interface {v0, p0, p1, p2, v2}, Lmiui/view/OnTaggingDrawableState;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result v2

    invoke-interface {v0, p0, p1, p2, v1}, Lmiui/view/OnTaggingDrawableState;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result v0

    goto :goto_1a

    :cond_12
    invoke-static {p0, p1, p2, v2}, Lcom/miui/internal/util/TaggingDrawableHelper;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result v2

    invoke-static {p0, p1, p2, v1}, Lcom/miui/internal/util/TaggingDrawableHelper;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result v0

    :goto_1a
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v2, :cond_3c

    if-eqz v0, :cond_2a

    if-eqz p2, :cond_27

    sget v3, Lmiui/R$attr;->state_middle_h:I

    goto :goto_29

    :cond_27
    sget v3, Lmiui/R$attr;->state_middle_v:I

    :goto_29
    goto :goto_57

    :cond_2a
    if-eqz v1, :cond_34

    if-eqz p2, :cond_31

    sget v3, Lmiui/R$attr;->state_first_h:I

    goto :goto_33

    :cond_31
    sget v3, Lmiui/R$attr;->state_last_v:I

    :goto_33
    goto :goto_57

    :cond_34
    if-eqz p2, :cond_39

    sget v3, Lmiui/R$attr;->state_last_h:I

    goto :goto_3b

    :cond_39
    sget v3, Lmiui/R$attr;->state_last_v:I

    :goto_3b
    goto :goto_57

    :cond_3c
    if-eqz v0, :cond_50

    if-eqz v1, :cond_48

    if-eqz p2, :cond_45

    sget v3, Lmiui/R$attr;->state_last_h:I

    goto :goto_47

    :cond_45
    sget v3, Lmiui/R$attr;->state_first_v:I

    :goto_47
    goto :goto_57

    :cond_48
    if-eqz p2, :cond_4d

    sget v3, Lmiui/R$attr;->state_first_h:I

    goto :goto_4f

    :cond_4d
    sget v3, Lmiui/R$attr;->state_first_v:I

    :goto_4f
    goto :goto_57

    :cond_50
    if-eqz p2, :cond_55

    sget v3, Lmiui/R$attr;->state_single_h:I

    goto :goto_57

    :cond_55
    sget v3, Lmiui/R$attr;->state_single_v:I

    :goto_57
    return v3
.end method

.method public static initTagChildSequenceState(Landroid/view/ViewGroup;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/util/TaggingDrawableHelper;->CHILD_SEQUENCE_STATE:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v2, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewGroupClass:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-virtual {v2, p0, v1}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->setTagChildrenSequenceState(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public static initViewSequenceStates(Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 8

    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_View_class;->hasInitViewSequenceStates(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setHasInitViewSequenceStates(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiui/R$styleable;->DrawableStates:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget-object v1, Lmiui/R$styleable;->DrawableStates:[I

    array-length v1, v1

    sget v2, Lmiui/R$attr;->state_single_h:I

    sget v3, Lmiui/R$attr;->state_single_v:I

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v1, :cond_57

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_54

    sget v5, Lmiui/R$styleable;->DrawableStates_state_first_h:I

    if-eq v4, v5, :cond_50

    sget v5, Lmiui/R$styleable;->DrawableStates_state_middle_h:I

    if-eq v4, v5, :cond_50

    sget v5, Lmiui/R$styleable;->DrawableStates_state_last_h:I

    if-eq v4, v5, :cond_50

    sget v5, Lmiui/R$styleable;->DrawableStates_state_single_h:I

    if-ne v4, v5, :cond_3b

    goto :goto_50

    :cond_3b
    sget v5, Lmiui/R$styleable;->DrawableStates_state_first_v:I

    if-eq v4, v5, :cond_4b

    sget v5, Lmiui/R$styleable;->DrawableStates_state_middle_v:I

    if-eq v4, v5, :cond_4b

    sget v5, Lmiui/R$styleable;->DrawableStates_state_last_v:I

    if-eq v4, v5, :cond_4b

    sget v5, Lmiui/R$styleable;->DrawableStates_state_single_v:I

    if-ne v4, v5, :cond_54

    :cond_4b
    sget-object v5, Lmiui/R$styleable;->DrawableStates:[I

    aget v3, v5, v4

    goto :goto_54

    :cond_50
    :goto_50
    sget-object v5, Lmiui/R$styleable;->DrawableStates:[I

    aget v2, v5, v4

    :cond_54
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v4, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v4, p0, v2}, Lcom/miui/internal/variable/Android_View_View_class;->setHorizontalState(Landroid/view/View;I)V

    sget-object v4, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v4, p0, v3}, Lcom/miui/internal/variable/Android_View_View_class;->setVerticalState(Landroid/view/View;I)V

    return-void
.end method

.method private static isSameBackground(Landroid/view/View;Landroid/view/View;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_2a

    if-nez p1, :cond_6

    goto :goto_2a

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_12

    return v3

    :cond_12
    if-eqz v1, :cond_29

    if-nez v2, :cond_17

    goto :goto_29

    :cond_17
    sget-object v4, Lcom/miui/internal/util/TaggingDrawableHelper;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {v4, v1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getId(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    sget-object v5, Lcom/miui/internal/util/TaggingDrawableHelper;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {v5, v2}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getId(Landroid/graphics/drawable/Drawable;)I

    move-result v5

    if-eqz v4, :cond_28

    if-ne v4, v5, :cond_28

    move v0, v3

    :cond_28
    return v0

    :cond_29
    :goto_29
    return v0

    :cond_2a
    :goto_2a
    return v0
.end method

.method public static onDrawableStateChange(Landroid/view/View;)V
    .registers 8

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_83

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_83

    :cond_e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_82

    if-eqz v1, :cond_82

    instance-of v2, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v2, :cond_82

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_82

    sget-object v2, Lcom/miui/internal/util/TaggingDrawableHelper;->sRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-nez v2, :cond_3c

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v3

    sget-object v3, Lcom/miui/internal/util/TaggingDrawableHelper;->sRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3c
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_82

    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    if-ne v3, v4, :cond_62

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    if-ne v3, v4, :cond_62

    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    if-ne v3, v4, :cond_62

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    if-eq v3, v4, :cond_82

    :cond_62
    sget-object v3, Lcom/miui/internal/util/TaggingDrawableHelper;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {v3, v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_77

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_82

    :cond_77
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_82
    :goto_82
    return-void

    :cond_83
    :goto_83
    return-void
.end method

.method private static sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z
    .registers 15

    const/4 v0, 0x0

    instance-of v1, p0, Landroid/widget/AbsListView;

    const/4 v2, 0x1

    if-eqz v1, :cond_b2

    move-object v1, p0

    check-cast v1, Landroid/widget/AbsListView;

    instance-of v3, v1, Landroid/widget/GridView;

    if-eqz v3, :cond_15

    move-object v3, v1

    check-cast v3, Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getNumColumns()I

    move-result v3

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    if-eqz p2, :cond_4d

    rem-int v5, p1, v3

    if-eq v3, v2, :cond_4b

    if-eqz p3, :cond_39

    add-int/lit8 v2, v5, 0x1

    if-ge v2, v3, :cond_4b

    add-int/lit8 v2, p1, 0x1

    if-ge v2, v4, :cond_4b

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/miui/internal/util/TaggingDrawableHelper;->isSameBackground(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    goto :goto_4b

    :cond_39
    add-int/lit8 v2, v5, -0x1

    if-ltz v2, :cond_4b

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/miui/internal/util/TaggingDrawableHelper;->isSameBackground(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    :cond_4b
    :goto_4b
    goto/16 :goto_b1

    :cond_4d
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCount()I

    move-result v7

    const/4 v8, 0x0

    if-eqz p3, :cond_87

    add-int v9, p1, v3

    if-ge v9, v4, :cond_6f

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v8, p1, v3

    invoke-virtual {v1, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/miui/internal/util/TaggingDrawableHelper;->isSameBackground(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    goto :goto_b1

    :cond_6f
    add-int v9, p1, v3

    add-int/2addr v9, v5

    if-ge v9, v7, :cond_b1

    add-int v9, p1, v5

    invoke-interface {v6, v9}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v9

    add-int v10, p1, v3

    add-int/2addr v10, v5

    invoke-interface {v6, v10}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v10

    if-ne v9, v10, :cond_84

    goto :goto_85

    :cond_84
    move v2, v8

    :goto_85
    move v0, v2

    goto :goto_b1

    :cond_87
    sub-int v9, p1, v3

    if-ltz v9, :cond_9a

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sub-int v8, p1, v3

    invoke-virtual {v1, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/miui/internal/util/TaggingDrawableHelper;->isSameBackground(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    goto :goto_b1

    :cond_9a
    sub-int v9, p1, v3

    add-int/2addr v9, v5

    if-ltz v9, :cond_b1

    add-int v9, p1, v5

    invoke-interface {v6, v9}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v9

    sub-int v10, p1, v3

    add-int/2addr v10, v5

    invoke-interface {v6, v10}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v10

    if-ne v9, v10, :cond_af

    goto :goto_b0

    :cond_af
    move v2, v8

    :goto_b0
    move v0, v2

    :cond_b1
    :goto_b1
    goto :goto_d3

    :cond_b2
    const/4 v1, 0x0

    instance-of v3, p0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_c7

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v4

    if-eqz p2, :cond_c2

    if-eqz v4, :cond_c6

    :cond_c2
    if-nez p2, :cond_c7

    if-ne v4, v2, :cond_c7

    :cond_c6
    const/4 v1, 0x1

    :cond_c7
    if-nez v1, :cond_cf

    instance-of v2, p0, Landroid/widget/LinearLayout;

    if-nez v2, :cond_d3

    if-eqz p2, :cond_d3

    :cond_cf
    invoke-static {p0, p1, p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->sameWithNeighbourInLinear(Landroid/view/ViewGroup;IZ)Z

    move-result v0

    :cond_d3
    :goto_d3
    return v0
.end method

.method private static sameWithNeighbourInLinear(Landroid/view/ViewGroup;IZ)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    if-eqz p2, :cond_d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :cond_d
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    add-int v5, p1, v2

    :goto_14
    if-eq v5, v1, :cond_26

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_24

    move-object v4, v6

    goto :goto_26

    :cond_24
    add-int/2addr v5, v2

    goto :goto_14

    :cond_26
    :goto_26
    if-eqz v4, :cond_36

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_36

    invoke-static {v4, v3}, Lcom/miui/internal/util/TaggingDrawableHelper;->isSameBackground(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_36

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    return v0
.end method

.method public static tagChildSequenceState(Landroid/view/ViewGroup;)V
    .registers 7

    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewGroupClass:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->getTagChildrenSequenceState(Landroid/view/ViewGroup;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_2a

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_27

    const/4 v4, 0x1

    invoke-static {p0, v2, v4}, Lcom/miui/internal/util/TaggingDrawableHelper;->getOrientationState(Landroid/view/ViewGroup;IZ)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {p0, v2, v5}, Lcom/miui/internal/util/TaggingDrawableHelper;->getOrientationState(Landroid/view/ViewGroup;IZ)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagView(Landroid/view/View;II)V

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_2a
    return-void
.end method

.method private static tagView(Landroid/view/View;II)V
    .registers 10

    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_View_class;->getHorizontalState(Landroid/view/View;)I

    move-result v0

    sget-object v1, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v1, p0}, Lcom/miui/internal/variable/Android_View_View_class;->getVerticalState(Landroid/view/View;)I

    move-result v1

    if-ne v0, p1, :cond_10

    if-eq v1, p2, :cond_4a

    :cond_10
    sget-object v2, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v2, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setHorizontalState(Landroid/view/View;I)V

    sget-object v2, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v2, p0, p2}, Lcom/miui/internal/variable/Android_View_View_class;->setVerticalState(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    if-ne v2, v6, :cond_45

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    if-ne v3, v6, :cond_45

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    if-ne v4, v6, :cond_45

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    if-eq v5, v6, :cond_4a

    :cond_45
    sget-object v6, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v6, p0}, Lcom/miui/internal/variable/Android_View_View_class;->relayout(Landroid/view/View;)V

    :cond_4a
    return-void
.end method
