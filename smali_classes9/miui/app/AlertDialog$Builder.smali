.class public Lmiui/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lmiui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    const/4 p1, 0x4

    if-lt p2, p1, :cond_0

    const/4 p1, 0x7

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mEditMode:Z

    iput p2, p0, Lmiui/app/AlertDialog$Builder;->mTheme:I

    return-void
.end method


# virtual methods
.method public addActionItem(III)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lmiui/app/AlertDialog$Builder;->addActionItem(Ljava/lang/CharSequence;II)Lmiui/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addActionItem(Ljava/lang/CharSequence;II)Lmiui/app/AlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mActionItems:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mActionItems:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v0, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mActionItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;

    invoke-direct {v1, p1, p2, p3}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public create()Lmiui/app/AlertDialog;
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog;

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lmiui/app/AlertDialog$Builder;->mTheme:I

    invoke-direct {v0, v1, v2}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    invoke-static {v0}, Lmiui/app/AlertDialog;->access$000(Lmiui/app/AlertDialog;)Lcom/miui/internal/variable/AlertControllerWrapper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object p0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object p0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCancelable(Z)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-boolean p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsChecked:Z

    iput-object p2, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckBoxMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public setHapticFeedbackEnabled(Z)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-boolean p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mHapticFeedbackEnabled:Z

    return-object p0
.end method

.method public setIcon(I)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconAttribute(I)Lmiui/app/AlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result p1

    iput p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Lmiui/app/AlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMultiChoiceAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iput-object p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iput-object p4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnActionItemClickListener(Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iput-object p4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lmiui/app/AlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(I)Lmiui/app/AlertDialog$Builder;
    .locals 3

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    return-object p0
.end method

.method public show()Lmiui/app/AlertDialog;
    .locals 0

    invoke-virtual {p0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method
