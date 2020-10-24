.class public Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;
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

.method static synthetic access$002(Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;->mNotNow:Z

    return p1
.end method

.method static synthetic access$100(Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;->donotRestore()V

    return-void
.end method

.method static synthetic access$202(Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;->mRightNow:Z

    return p1
.end method

.method static synthetic access$300(Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;->restore()V

    return-void
.end method

.method private configDialog()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/miui/internal/R$string;->system_app_restore_failed:I

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$string;->system_app_restore_failed_detail:I

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$string;->retry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity$3;

    invoke-direct {v2, p0}, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity$3;-><init>(Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$string;->do_not_restore_temporarily:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity$2;

    invoke-direct {v2, p0}, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity$2;-><init>(Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity$1;

    invoke-direct {v1, p0}, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity$1;-><init>(Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

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

    iget-object p0, p0, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;->mPmCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->recordRestoreNotNow(Z)V

    return-void
.end method

.method private restore()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmiui/autoinstall/config/service/AutoInstallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "miui.autoinstall.config.ACTION_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object p0, p0, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;->mPmCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->recordRestoreNotNow(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-direct {p1, p0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;->mPmCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-direct {p0}, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;->configDialog()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;->mNotNow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;->mRightNow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;->mNotNow:Z

    iput-boolean v0, p0, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;->mRightNow:Z

    invoke-direct {p0}, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;->donotRestore()V

    :cond_0
    return-void
.end method
