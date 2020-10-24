.class Lmiui/external/widget/Spinner$DialogPopup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/external/widget/Spinner$SpinnerPopup;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field mPopup:Lmiui/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Lmiui/external/widget/Spinner;


# direct methods
.method private constructor <init>(Lmiui/external/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/widget/Spinner$DialogPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/external/widget/Spinner;Lmiui/external/widget/Spinner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/external/widget/Spinner$DialogPopup;-><init>(Lmiui/external/widget/Spinner;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lmiui/external/widget/Spinner$DialogPopup;->mPopup:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/external/widget/Spinner$DialogPopup;->mPopup:Lmiui/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lmiui/external/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getHorizontalOffset()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHorizontalOriginalOffset()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVerticalOffset()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lmiui/external/widget/Spinner$DialogPopup;->mPopup:Lmiui/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lmiui/external/widget/Spinner$DialogPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p1, p0, Lmiui/external/widget/Spinner$DialogPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-static {p1}, Lmiui/external/widget/Spinner;->access$300(Lmiui/external/widget/Spinner;)V

    iget-object p1, p0, Lmiui/external/widget/Spinner$DialogPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/external/widget/Spinner$DialogPopup;->this$0:Lmiui/external/widget/Spinner;

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/external/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    invoke-virtual {p0}, Lmiui/external/widget/Spinner$DialogPopup;->dismiss()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const-string p0, "Spinner"

    const-string p1, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    const-string p0, "Spinner"

    const-string p1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .locals 0

    const-string p0, "Spinner"

    const-string p1, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    const-string p0, "Spinner"

    const-string p1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public show(II)V
    .locals 3

    iget-object v0, p0, Lmiui/external/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lmiui/external/widget/Spinner$DialogPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {v1}, Lmiui/external/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lmiui/external/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    :cond_1
    iget-object v1, p0, Lmiui/external/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lmiui/external/widget/Spinner$DialogPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lmiui/external/widget/Spinner$DialogPopup$1;

    invoke-direct {v1, p0}, Lmiui/external/widget/Spinner$DialogPopup$1;-><init>(Lmiui/external/widget/Spinner$DialogPopup;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lmiui/external/widget/Spinner$DialogPopup;->mPopup:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    iget-object p0, p0, Lmiui/external/widget/Spinner$DialogPopup;->mPopup:Lmiui/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public show(IIFF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmiui/external/widget/Spinner$DialogPopup;->show(II)V

    return-void
.end method
