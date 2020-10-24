.class public final Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mCancelable:Z

.field private mCreated:Z

.field private mMessage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCancelable:Z

    iput p1, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mType:I

    return-void
.end method


# virtual methods
.method public create()Lmiui/widget/SimpleDialogFragment;
    .locals 4

    iget-boolean v0, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCreated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCreated:Z

    new-instance v0, Lmiui/widget/SimpleDialogFragment;

    invoke-direct {v0}, Lmiui/widget/SimpleDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mTitle:Ljava/lang/String;

    const-string v3, "title"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mMessage:Ljava/lang/String;

    const-string v3, "msg_res_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCancelable:Z

    const-string v3, "cancelable"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget p0, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mType:I

    const-string v2, "type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "dialog has been created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCancelable(Z)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCancelable:Z

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
    .locals 0

    iput-object p1, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
    .locals 0

    iput-object p1, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
