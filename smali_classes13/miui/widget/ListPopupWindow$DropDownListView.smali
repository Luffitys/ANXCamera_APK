.class Lmiui/widget/ListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mHijackFocus:Z

.field private mListSelectionHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean p2, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    return-void
.end method

.method static synthetic access$502(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method static synthetic access$600(Lmiui/widget/ListPopupWindow$DropDownListView;IZ)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v0

    return v0
.end method

.method private lookForSelectablePosition(IZ)I
    .registers 7

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_4d

    :cond_e
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_46

    if-eqz p2, :cond_2e

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_23
    if-ge p1, v2, :cond_3f

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3f

    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    :cond_2e
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_34
    if-ltz p1, :cond_3f

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3f

    add-int/lit8 p1, p1, -0x1

    goto :goto_34

    :cond_3f
    if-ltz p1, :cond_45

    if-lt p1, v2, :cond_44

    goto :goto_45

    :cond_44
    return p1

    :cond_45
    :goto_45
    return v1

    :cond_46
    if-ltz p1, :cond_4c

    if-lt p1, v2, :cond_4b

    goto :goto_4c

    :cond_4b
    return p1

    :cond_4c
    :goto_4c
    return v1

    :cond_4d
    :goto_4d
    return v1
.end method


# virtual methods
.method public hasFocus()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

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

.method public hasWindowFocus()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

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

.method public isFocused()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

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

.method public isInTouchMode()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_e

    :cond_8
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method final measureHeightOfChildrenCompact(IIIII)I
    .registers 27

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getListPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getListPaddingBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getDividerHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    if-nez v6, :cond_1d

    add-int v7, v2, v3

    return v7

    :cond_1d
    add-int v7, v2, v3

    if-lez v4, :cond_25

    if-eqz v5, :cond_25

    move v9, v4

    goto :goto_26

    :cond_25
    const/4 v9, 0x0

    :goto_26
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v13

    const/4 v14, 0x0

    :goto_2e
    if-ge v14, v13, :cond_86

    invoke-interface {v6, v14}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    if-eq v15, v12, :cond_38

    const/4 v11, 0x0

    move v12, v15

    :cond_38
    move-object/from16 v8, p0

    invoke-interface {v6, v14, v11, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    move/from16 v17, v2

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_51

    move/from16 v18, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_5a

    :cond_51
    move/from16 v18, v3

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    move/from16 v3, v16

    :goto_5a
    move/from16 v16, v2

    move/from16 v2, p1

    invoke-virtual {v11, v2, v3}, Landroid/view/View;->measure(II)V

    if-lez v14, :cond_64

    add-int/2addr v7, v9

    :cond_64
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    add-int v7, v7, v20

    if-lt v7, v0, :cond_7a

    if-ltz v1, :cond_77

    if-le v14, v1, :cond_77

    if-lez v10, :cond_77

    if-eq v7, v0, :cond_77

    move/from16 v19, v10

    goto :goto_79

    :cond_77
    move/from16 v19, v0

    :goto_79
    return v19

    :cond_7a
    if-ltz v1, :cond_7f

    if-lt v14, v1, :cond_7f

    move v10, v7

    :cond_7f
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v17

    move/from16 v3, v18

    goto :goto_2e

    :cond_86
    return v7
.end method
