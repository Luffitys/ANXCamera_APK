.class public Lmiui/cta/CTADialogFragment;
.super Landroid/app/DialogFragment;
.source "CTADialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cta/CTADialogFragment$OnDialogClickListener;
    }
.end annotation


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "key_message"

.field private static final OPTIONAL:Ljava/lang/String; = "key_optional"

.field static final TAG:Ljava/lang/String; = "CTADialog"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private isOptional()Z
    .registers 3

    invoke-virtual {p0}, Lmiui/cta/CTADialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_optional"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    invoke-static {}, Lmiui/cta/CTAManager;->getInstance()Lmiui/cta/CTAManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/cta/CTAManager;->onReject()V

    invoke-virtual {p0}, Lmiui/cta/CTADialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lmiui/cta/CTADialogFragment;->isOptional()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_16
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8

    invoke-virtual {p0}, Lmiui/cta/CTADialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    new-instance v2, Lmiui/cta/CTADialogBuilder;

    invoke-direct {v2, v0}, Lmiui/cta/CTADialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lmiui/cta/CTADialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "key_message"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/cta/CTADialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    new-instance v4, Lmiui/cta/CTADialogFragment$OnDialogClickListener;

    invoke-direct {v4, p0, v1}, Lmiui/cta/CTADialogFragment$OnDialogClickListener;-><init>(Lmiui/cta/CTADialogFragment;Lmiui/cta/CTADialogFragment$1;)V

    invoke-virtual {v2, v4}, Lmiui/cta/CTADialogBuilder;->setPositiveButton(Landroid/content/DialogInterface$OnClickListener;)Lmiui/cta/CTADialogBuilder;

    invoke-direct {p0}, Lmiui/cta/CTADialogFragment;->isOptional()Z

    move-result v5

    if-eqz v5, :cond_2e

    const/high16 v5, 0x1040000

    invoke-virtual {v2, v5, v1}, Lmiui/cta/CTADialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_31

    :cond_2e
    invoke-virtual {v2, v4}, Lmiui/cta/CTADialogBuilder;->setNegativeButton(Landroid/content/DialogInterface$OnClickListener;)Lmiui/cta/CTADialogBuilder;

    :goto_31
    invoke-virtual {v2}, Lmiui/cta/CTADialogBuilder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-static {}, Lmiui/cta/CTAManager;->getInstance()Lmiui/cta/CTAManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/cta/CTAManager;->isAccepted()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lmiui/cta/CTADialogFragment;->dismiss()V

    :cond_10
    return-void
.end method

.method public showDialog(Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 7

    invoke-virtual {p0}, Lmiui/cta/CTADialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    invoke-virtual {p0, v0}, Lmiui/cta/CTADialogFragment;->setArguments(Landroid/os/Bundle;)V

    :cond_f
    const-string v1, "key_message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_optional"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CTADialog"

    invoke-virtual {p0, v1, v2}, Lmiui/cta/CTADialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
