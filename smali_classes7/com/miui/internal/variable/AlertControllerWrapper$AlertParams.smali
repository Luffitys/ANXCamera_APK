.class public Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;
.super Lcom/android/internal/app/AlertController$AlertParams;
.source ""


# instance fields
.field public mActionItems:Ljava/util/ArrayList;

.field public mCheckBoxMessage:Ljava/lang/CharSequence;

.field public mEditMode:Z

.field public mHapticFeedbackEnabled:Z

.field public mIsChecked:Z

.field public mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnShowListener:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private createListAdapter(ILcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/ListAdapter;
    .locals 6

    iget-object p2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v0, 0x1020014

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {p2, v1, p1, v0, p0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    new-array p0, v2, [I

    aput v0, p0, v5

    move-object v0, p2

    move v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    :goto_0
    return-object p2
.end method

.method private createListView(Lcom/android/internal/app/AlertController;)V
    .locals 3

    check-cast p1, Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->getImpl()Lcom/miui/internal/app/AlertControllerImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Lcom/miui/internal/app/AlertControllerImpl;->getListLayout()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/internal/app/AlertControllerImpl;->getMultiChoiceItemLayout()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->createMultiChoiceListAdapter(Landroid/widget/ListView;ILcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/ListAdapter;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/internal/app/AlertControllerImpl;->getSingleChoiceItemLayout()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/miui/internal/app/AlertControllerImpl;->getListItemLayout()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->createListAdapter(ILcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/ListAdapter;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/internal/app/AlertControllerImpl;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    invoke-virtual {p1, v1}, Lcom/miui/internal/app/AlertControllerImpl;->setCheckedItem(I)V

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    invoke-virtual {p1, v1}, Lcom/miui/internal/app/AlertControllerImpl;->setCheckedItems([Z)V

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;-><init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Lcom/miui/internal/app/AlertControllerImpl;)V

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;-><init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Landroid/widget/ListView;Lcom/miui/internal/app/AlertControllerImpl;)V

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_6

    const/4 p0, 0x1

    :goto_4
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_5

    :cond_6
    iget-boolean p0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz p0, :cond_7

    const/4 p0, 0x2

    goto :goto_4

    :cond_7
    :goto_5
    invoke-virtual {p1, v0}, Lcom/miui/internal/app/AlertControllerImpl;->setListView(Landroid/widget/ListView;)V

    return-void
.end method

.method private createMultiChoiceListAdapter(Landroid/widget/ListView;ILcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/ListAdapter;
    .locals 7

    iget-object p3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mEditMode:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const v4, 0x1020014

    iget-object v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v0, p3

    move-object v1, p0

    move v3, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;-><init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Landroid/content/Context;II[Ljava/lang/Object;Landroid/widget/ListView;)V

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;-><init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;I)V

    :goto_0
    return-object p3
.end method


# virtual methods
.method public apply(Lcom/android/internal/app/AlertController;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getImpl()Lcom/miui/internal/app/AlertControllerImpl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsChecked:Z

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/app/AlertControllerImpl;->setCheckBox(ZLjava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_6
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_a

    :cond_9
    invoke-direct {p0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V

    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mActionItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getImpl()Lcom/miui/internal/app/AlertControllerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mActionItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/app/AlertControllerImpl;->setActionItems(Ljava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_c
    check-cast p1, Lcom/miui/internal/variable/AlertControllerWrapper;

    iget-boolean p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mHapticFeedbackEnabled:Z

    iput-boolean p0, p1, Lcom/miui/internal/variable/AlertControllerWrapper;->mHapticFeedbackEnabled:Z

    return-void
.end method
