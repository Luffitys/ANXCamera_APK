.class public Lcom/miui/internal/util/TaggingDrawableHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field static CHILD_SEQUENCE_STATE:[I

.field private static final DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

.field private static final ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

.field private static final ViewGroupClass:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

.field private static final sRect:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOrientationState(Landroid/view/ViewGroup;IZ)I
    .locals 3

    instance-of v0, p0, Lmiui/view/OnTaggingDrawableState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lmiui/view/OnTaggingDrawableState;

    invoke-interface {v0, p0, p1, p2, v2}, Lmiui/view/OnTaggingDrawableState;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result v2

    invoke-interface {v0, p0, p1, p2, v1}, Lmiui/view/OnTaggingDrawableState;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, v2}, Lcom/miui/internal/util/TaggingDrawableHelper;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result v2

    invoke-static {p0, p1, p2, v1}, Lcom/miui/internal/util/TaggingDrawableHelper;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result p1

    :goto_0
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz v2, :cond_5

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    sget p0, Lmiui/R$attr;->state_middle_h:I

    goto :goto_3

    :cond_1
    sget p0, Lmiui/R$attr;->state_middle_v:I

    goto :goto_3

    :cond_2
    if-eqz p0, :cond_4

    if-eqz p2, :cond_3

    :goto_1
    sget p0, Lmiui/R$attr;->state_first_h:I

    goto :goto_3

    :cond_3
    sget p0, Lmiui/R$attr;->state_last_v:I

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_3

    :goto_2
    sget p0, Lmiui/R$attr;->state_last_h:I

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_8

    if-eqz p0, :cond_7

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    sget p0, Lmiui/R$attr;->state_first_v:I

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_6

    goto :goto_1

    :cond_8
    if-eqz p2, :cond_9

    sget p0, Lmiui/R$attr;->state_single_h:I

    goto :goto_3

    :cond_9
    sget p0, Lmiui/R$attr;->state_single_v:I

    :goto_3
    return p0
.end method

.method public static initTagChildSequenceState(Landroid/view/ViewGroup;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/util/TaggingDrawableHelper;->CHILD_SEQUENCE_STATE:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p1, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewGroupClass:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-virtual {p1, p0, v0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->setTagChildrenSequenceState(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public static initViewSequenceStates(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 6

    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_View_class;->hasInitViewSequenceStates(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setHasInitViewSequenceStates(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiui/R$styleable;->DrawableStates:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget-object v0, Lmiui/R$styleable;->DrawableStates:[I

    array-length v0, v0

    sget v1, Lmiui/R$attr;->state_single_h:I

    sget v2, Lmiui/R$attr;->state_single_v:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_5

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    sget v5, Lmiui/R$styleable;->DrawableStates_state_first_h:I

    if-eq v4, v5, :cond_3

    sget v5, Lmiui/R$styleable;->DrawableStates_state_middle_h:I

    if-eq v4, v5, :cond_3

    sget v5, Lmiui/R$styleable;->DrawableStates_state_last_h:I

    if-eq v4, v5, :cond_3

    sget v5, Lmiui/R$styleable;->DrawableStates_state_single_h:I

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    sget v5, Lmiui/R$styleable;->DrawableStates_state_first_v:I

    if-eq v4, v5, :cond_2

    sget v5, Lmiui/R$styleable;->DrawableStates_state_middle_v:I

    if-eq v4, v5, :cond_2

    sget v5, Lmiui/R$styleable;->DrawableStates_state_last_v:I

    if-eq v4, v5, :cond_2

    sget v5, Lmiui/R$styleable;->DrawableStates_state_single_v:I

    if-ne v4, v5, :cond_4

    :cond_2
    sget-object v2, Lmiui/R$styleable;->DrawableStates:[I

    aget v2, v2, v4

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v1, Lmiui/R$styleable;->DrawableStates:[I

    aget v1, v1, v4

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p1, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {p1, p0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setHorizontalState(Landroid/view/View;I)V

    sget-object p1, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {p1, p0, v2}, Lcom/miui/internal/variable/Android_View_View_class;->setVerticalState(Landroid/view/View;I)V

    return-void
.end method

.method private static isSameBackground(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    if-eqz p0, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/miui/internal/util/TaggingDrawableHelper;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {v2, p0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getId(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    sget-object v2, Lcom/miui/internal/util/TaggingDrawableHelper;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {v2, p1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getId(Landroid/graphics/drawable/Drawable;)I

    move-result p1

    if-eqz p0, :cond_3

    if-ne p0, p1, :cond_3

    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method public static onDrawableStateChange(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    instance-of v2, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v2, :cond_4

    check-cast v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/miui/internal/util/TaggingDrawableHelper;->sRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sget-object v2, Lcom/miui/internal/util/TaggingDrawableHelper;->sRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_2
    sget-object v2, Lcom/miui/internal/util/TaggingDrawableHelper;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {v2, v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    :goto_0
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    iget v0, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private static sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z
    .locals 6

    instance-of v0, p0, Landroid/widget/AbsListView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    check-cast p0, Landroid/widget/AbsListView;

    instance-of v0, p0, Landroid/widget/GridView;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-eqz p2, :cond_2

    rem-int p2, p1, v0

    if-eq v0, v2, :cond_b

    if-eqz p3, :cond_1

    add-int/2addr p2, v2

    if-ge p2, v0, :cond_b

    add-int/lit8 p2, p1, 0x1

    if-ge p2, v3, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/internal/util/TaggingDrawableHelper;->isSameBackground(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    goto/16 :goto_4

    :cond_1
    sub-int/2addr p2, v2

    if-ltz p2, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/miui/internal/util/TaggingDrawableHelper;->isSameBackground(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    if-eqz p3, :cond_4

    add-int/2addr v0, p1

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    goto :goto_2

    :cond_3
    add-int/2addr v0, p2

    if-ge v0, v5, :cond_b

    add-int/2addr p1, p2

    invoke-interface {v4, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result p0

    invoke-interface {v4, v0}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result p1

    if-ne p0, p1, :cond_b

    :goto_1
    move v1, v2

    goto :goto_4

    :cond_4
    sub-int p3, p1, v0

    if-ltz p3, :cond_5

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    :goto_2
    invoke-static {p1, p0}, Lcom/miui/internal/util/TaggingDrawableHelper;->isSameBackground(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    move v1, p0

    goto :goto_4

    :cond_5
    add-int/2addr p3, p2

    if-ltz p3, :cond_b

    add-int/2addr p1, p2

    invoke-interface {v4, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result p0

    invoke-interface {v4, p3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result p1

    if-ne p0, p1, :cond_b

    goto :goto_1

    :cond_6
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v3

    if-eqz p2, :cond_7

    if-eqz v3, :cond_9

    :cond_7
    if-nez p2, :cond_8

    if-ne v3, v2, :cond_8

    goto :goto_3

    :cond_8
    move v2, v1

    :cond_9
    :goto_3
    if-nez v2, :cond_a

    if-nez v0, :cond_b

    if-eqz p2, :cond_b

    :cond_a
    invoke-static {p0, p1, p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->sameWithNeighbourInLinear(Landroid/view/ViewGroup;IZ)Z

    move-result v1

    :cond_b
    :goto_4
    return v1
.end method

.method private static sameWithNeighbourInLinear(Landroid/view/ViewGroup;IZ)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const/4 v3, 0x0

    :cond_2
    add-int/2addr p1, v2

    if-eq p1, v1, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    move-object v3, v4

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_4

    invoke-static {v3, p2}, Lcom/miui/internal/util/TaggingDrawableHelper;->isSameBackground(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static tagChildSequenceState(Landroid/view/ViewGroup;)V
    .locals 6

    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewGroupClass:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->getTagChildrenSequenceState(Landroid/view/ViewGroup;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    invoke-static {p0, v2, v4}, Lcom/miui/internal/util/TaggingDrawableHelper;->getOrientationState(Landroid/view/ViewGroup;IZ)I

    move-result v4

    invoke-static {p0, v2, v1}, Lcom/miui/internal/util/TaggingDrawableHelper;->getOrientationState(Landroid/view/ViewGroup;IZ)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagView(Landroid/view/View;II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static tagView(Landroid/view/View;II)V
    .locals 3

    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_View_class;->getHorizontalState(Landroid/view/View;)I

    move-result v0

    sget-object v1, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v1, p0}, Lcom/miui/internal/variable/Android_View_View_class;->getVerticalState(Landroid/view/View;)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-eq v1, p2, :cond_2

    :cond_0
    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setHorizontalState(Landroid/view/View;I)V

    sget-object p1, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {p1, p0, p2}, Lcom/miui/internal/variable/Android_View_View_class;->setVerticalState(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    if-eq v1, p1, :cond_2

    :cond_1
    sget-object p1, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {p1, p0}, Lcom/miui/internal/variable/Android_View_View_class;->relayout(Landroid/view/View;)V

    :cond_2
    return-void
.end method
