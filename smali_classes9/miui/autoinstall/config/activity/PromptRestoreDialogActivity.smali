.class public Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;
.super Landroid/app/Activity;
.source ""


# instance fields
.field private mNotNow:Z

.field private mPmCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

.field private mRightNow:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mNotNow:Z

    return p1
.end method

.method static synthetic access$100(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->donotRestore()V

    return-void
.end method

.method static synthetic access$202(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mRightNow:Z

    return p1
.end method

.method static synthetic access$300(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->restore(Z)V

    return-void
.end method

.method private configDialog(ZJ)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p1, :cond_0

    sget v1, Lcom/miui/internal/R$string;->system_restore:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/miui/internal/R$string;->mobile_data_remind:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/internal/R$string;->after_reset_need_restore_system_app:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$string;->mobile_data_consume:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->getConsume(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-nez p1, :cond_2

    sget v2, Lcom/miui/internal/R$string;->restore_right_now:I

    goto :goto_2

    :cond_2
    sget v2, Lcom/miui/internal/R$string;->download_right_now:I

    :goto_2
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$3;

    invoke-direct {v0, p0, p1}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$3;-><init>(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;Z)V

    invoke-virtual {p2, p3, v0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/internal/R$string;->do_not_restore_temporarily:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$2;

    invoke-direct {p3, p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$2;-><init>(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;)V

    invoke-virtual {p1, p2, p3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$1;

    invoke-direct {p2, p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$1;-><init>(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;)V

    invoke-virtual {p1, p2}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private donotRestore()V
    .locals 1

    new-instance v0, Lmiui/autoinstall/config/download/AutoInstallNotification;

    invoke-direct {v0, p0}, Lmiui/autoinstall/config/download/AutoInstallNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiui/autoinstall/config/download/AutoInstallNotification;->showNotRestoreNotification()V

    iget-object p0, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mPmCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->recordRestoreNotNow(Z)V

    return-void
.end method

.method private getConsume(J)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/text/DecimalFormat;

    const-string v0, "0.0"

    invoke-direct {p0, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p1, p1

    const/high16 p2, 0x44800000    # 1024.0f

    div-float/2addr p1, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private restore(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmiui/autoinstall/config/service/AutoInstallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p1, :cond_0

    const-string p1, "miui.autoinstall.config.ACTION_START"

    goto :goto_0

    :cond_0
    const-string p1, "miui.autoinstall.config.action.DOWNLOADBYPASS"

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object p0, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mPmCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->recordRestoreNotNow(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-direct {p1, p0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mPmCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_is_mobile_data_remind"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_mobile_data_consume"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->configDialog(ZJ)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mNotNow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mRightNow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mNotNow:Z

    iput-boolean v0, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mRightNow:Z

    invoke-direct {p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->donotRestore()V

    :cond_0
    return-void
.end method
