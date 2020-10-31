.class public Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;
.super Lcom/android/internal/app/AlertController$AlertParams;
.source "AlertControllerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/AlertControllerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;
    }
.end annotation


# instance fields
.field public mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field public mCheckBoxMessage:Ljava/lang/CharSequence;

.field public mEditMode:Z

.field public mHapticFeedbackEnabled:Z

.field public mIsChecked:Z

.field public mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnShowListener:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private createListAdapter(ILcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/ListAdapter;
    .registers 11

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCursor:Landroid/database/Cursor;

    const v1, 0x1020014

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_17

    :cond_e
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v2, p1, v1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    :goto_17
    nop

    goto :goto_30

    :cond_19
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v6, v3, [I

    aput v1, v6, v7

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    :goto_30
    return-object v0
.end method

.method private createListView(Lcom/android/internal/app/AlertController;)V
    .registers 6

    move-object v0, p1

    check-cast v0, Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getImpl()Lcom/miui/internal/app/AlertControllerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Lcom/miui/internal/app/AlertControllerImpl;->getListLayout()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    if-nez v1, :cond_17

    return-void

    :cond_17
    iget-boolean v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsMultiChoice:Z

    if-eqz v2, :cond_24

    invoke-virtual {v0}, Lcom/miui/internal/app/AlertControllerImpl;->getMultiChoiceItemLayout()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->createMultiChoiceListAdapter(Landroid/widget/ListView;ILcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/ListAdapter;

    move-result-object v2

    goto :goto_35

    :cond_24
    iget-boolean v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsSingleChoice:Z

    if-eqz v2, :cond_2d

    invoke-virtual {v0}, Lcom/miui/internal/app/AlertControllerImpl;->getSingleChoiceItemLayout()I

    move-result v2

    goto :goto_31

    :cond_2d
    invoke-virtual {v0}, Lcom/miui/internal/app/AlertControllerImpl;->getListItemLayout()I

    move-result v2

    :goto_31
    invoke-direct {p0, v2, v0}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->createListAdapter(ILcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/ListAdapter;

    move-result-object v2

    :goto_35
    invoke-virtual {v0, v2}, Lcom/miui/internal/app/AlertControllerImpl;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItem:I

    invoke-virtual {v0, v3}, Lcom/miui/internal/app/AlertControllerImpl;->setCheckedItem(I)V

    iget-object v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItems:[Z

    invoke-virtual {v0, v3}, Lcom/miui/internal/app/AlertControllerImpl;->setCheckedItems([Z)V

    iget-object v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_4f

    new-instance v3, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;

    invoke-direct {v3, p0, v0}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;-><init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Lcom/miui/internal/app/AlertControllerImpl;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_5b

    :cond_4f
    iget-object v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v3, :cond_5b

    new-instance v3, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;-><init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Landroid/widget/ListView;Lcom/miui/internal/app/AlertControllerImpl;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_5b
    :goto_5b
    iget-object v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v3, :cond_64

    iget-object v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_64
    iget-boolean v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsSingleChoice:Z

    if-eqz v3, :cond_6d

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_75

    :cond_6d
    iget-boolean v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsMultiChoice:Z

    if-eqz v3, :cond_75

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_75
    :goto_75
    invoke-virtual {v0, v1}, Lcom/miui/internal/app/AlertControllerImpl;->setListView(Landroid/widget/ListView;)V

    return-void
.end method

.method private createMultiChoiceListAdapter(Landroid/widget/ListView;ILcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/ListAdapter;
    .registers 12

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mEditMode:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_1f

    :cond_f
    new-instance v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;

    iget-object v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    const v5, 0x1020014

    iget-object v6, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, v0

    move-object v2, p0

    move v4, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;-><init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Landroid/content/Context;II[Ljava/lang/Object;Landroid/widget/ListView;)V

    :goto_1f
    nop

    goto :goto_2f

    :cond_21
    new-instance v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;

    iget-object v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;-><init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;I)V

    :goto_2f
    return-object v0
.end method


# virtual methods
.method public apply(Lcom/android/internal/app/AlertController;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_13

    :cond_a
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1c
    iget v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIconId:I

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    :cond_25
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    :cond_2e
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_40

    move-object v0, p1

    check-cast v0, Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getImpl()Lcom/miui/internal/app/AlertControllerImpl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsChecked:Z

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/app/AlertControllerImpl;->setCheckBox(ZLjava/lang/CharSequence;)V

    :cond_40
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_4d
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_59

    const/4 v0, -0x2

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_59
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_65

    const/4 v0, -0x3

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_65
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_74

    :cond_71
    invoke-direct {p0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V

    :cond_74
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    :cond_7d
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mActionItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_8f

    move-object v0, p1

    check-cast v0, Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getImpl()Lcom/miui/internal/app/AlertControllerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mActionItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/app/AlertControllerImpl;->setActionItems(Ljava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_8f
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/variable/AlertControllerWrapper;

    iget-boolean v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mHapticFeedbackEnabled:Z

    iput-boolean v1, v0, Lcom/miui/internal/variable/AlertControllerWrapper;->mHapticFeedbackEnabled:Z

    return-void
.end method
