.class public Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;
.super Landroid/app/Activity;
.source "PromptRestoreDialogActivity.java"


# instance fields
.field private mNotNow:Z

.field private mPmCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

.field private mRightNow:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mNotNow:Z

    return p1
.end method

.method static synthetic access$100(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;)V
    .registers 1

    invoke-direct {p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->donotRestore()V

    return-void
.end method

.method static synthetic access$202(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mRightNow:Z

    return p1
.end method

.method static synthetic access$300(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->restore(Z)V

    return-void
.end method

.method private configDialog(ZJ)V
    .registers 10

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$string;->system_restore:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_d
    invoke-virtual {p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$string;->mobile_data_remind:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_17
    nop

    const/4 v1, 0x0

    if-nez p1, :cond_26

    invoke-virtual {p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$string;->after_reset_need_restore_system_app:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    :cond_26
    invoke-virtual {p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$string;->mobile_data_consume:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->getConsume(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_39
    nop

    if-nez p1, :cond_47

    invoke-virtual {p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/internal/R$string;->restore_right_now:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_51

    :cond_47
    invoke-virtual {p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/internal/R$string;->download_right_now:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_51
    nop

    new-instance v4, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$3;

    invoke-direct {v4, p0, p1}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$3;-><init>(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;Z)V

    invoke-virtual {v1, v3, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/internal/R$string;->do_not_restore_temporarily:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$2;

    invoke-direct {v5, p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$2;-><init>(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;)V

    invoke-virtual {v1, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$1;

    invoke-direct {v4, p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$1;-><init>(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;)V

    invoke-virtual {v1, v4}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private donotRestore()V
    .registers 4

    new-instance v0, Lmiui/autoinstall/config/download/AutoInstallNotification;

    invoke-direct {v0, p0}, Lmiui/autoinstall/config/download/AutoInstallNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiui/autoinstall/config/download/AutoInstallNotification;->showNotRestoreNotification()V

    iget-object v1, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mPmCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->recordRestoreNotNow(Z)V

    return-void
.end method

.method private getConsume(J)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float v1, p1

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private restore(Z)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmiui/autoinstall/config/service/AutoInstallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p1, :cond_c

    const-string v1, "miui.autoinstall.config.ACTION_START"

    goto :goto_e

    :cond_c
    const-string v1, "miui.autoinstall.config.action.DOWNLOADBYPASS"

    :goto_e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mPmCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->recordRestoreNotNow(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-direct {v0, p0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mPmCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_is_mobile_data_remind"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_mobile_data_consume"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->configDialog(ZJ)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mNotNow:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mRightNow:Z

    if-nez v0, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mNotNow:Z

    iput-boolean v0, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mRightNow:Z

    invoke-direct {p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->donotRestore()V

    :cond_13
    return-void
.end method
