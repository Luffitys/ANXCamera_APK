.class public Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    new-instance p1, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/miui/internal/R$string;->web_sso_login_message:I

    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1
.end method
