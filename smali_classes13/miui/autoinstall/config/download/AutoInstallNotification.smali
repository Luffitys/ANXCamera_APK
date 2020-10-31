.class public Lmiui/autoinstall/config/download/AutoInstallNotification;
.super Ljava/lang/Object;
.source "AutoInstallNotification.java"


# static fields
.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "auto_install_notification"

.field private static final NOTIFICATION_ID:I = 0x208

.field private static final PROGRESS_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "auto_install_progress_notification"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mProgressBuilder:Landroid/app/Notification$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/download/AutoInstallNotification;->initSystemNotification(Landroid/content/Context;)V

    return-void
.end method

.method private createBuilder()Landroid/app/Notification$Builder;
    .registers 4

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mContext:Landroid/content/Context;

    const-string v2, "auto_install_notification"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/miui/internal/R$drawable;->ic_main:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    return-object v0
.end method

.method private createNotificationChannel(Landroid/app/NotificationManager;)V
    .registers 6

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "auto_install_notification"

    const-string v2, "auto_install"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private createProgressBuilder()Landroid/app/Notification$Builder;
    .registers 4

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mContext:Landroid/content/Context;

    const-string v2, "auto_install_progress_notification"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/miui/internal/R$drawable;->ic_main:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    return-object v0
.end method

.method private createProgressNotificationChannel(Landroid/app/NotificationManager;)V
    .registers 6

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "auto_install_progress_notification"

    const-string v2, "auto_install_progress"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private getContentIntent()Landroid/app/PendingIntent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mContext:Landroid/content/Context;

    const-class v2, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private initSystemNotification(Landroid/content/Context;)V
    .registers 3

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/download/AutoInstallNotification;->createNotificationChannel(Landroid/app/NotificationManager;)V

    iget-object v0, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/download/AutoInstallNotification;->createProgressNotificationChannel(Landroid/app/NotificationManager;)V

    return-void
.end method


# virtual methods
.method public clearAll()V
    .registers 2

    iget-object v0, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public showNotRestoreNotification()V
    .registers 5

    invoke-direct {p0}, Lmiui/autoinstall/config/download/AutoInstallNotification;->createBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mContext:Landroid/content/Context;

    sget v2, Lcom/miui/internal/R$string;->system_restore:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mContext:Landroid/content/Context;

    sget v2, Lcom/miui/internal/R$string;->click_to_restore:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-direct {p0}, Lmiui/autoinstall/config/download/AutoInstallNotification;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const/16 v3, 0x208

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showStartNotification(I)V
    .registers 9

    invoke-direct {p0}, Lmiui/autoinstall/config/download/AutoInstallNotification;->createBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/internal/R$string;->system_app_is_restore:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/internal/R$string;->recovery_progress:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const/16 v3, 0x208

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showSuccessNotification()V
    .registers 5

    invoke-direct {p0}, Lmiui/autoinstall/config/download/AutoInstallNotification;->createBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mContext:Landroid/content/Context;

    sget v2, Lcom/miui/internal/R$string;->system_app_restore_completed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mContext:Landroid/content/Context;

    sget v2, Lcom/miui/internal/R$string;->system_app_restore_completed_detail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x208

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v1, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public updateProgress(II)V
    .registers 10

    iget-object v0, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mProgressBuilder:Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    if-nez v0, :cond_e

    invoke-direct {p0}, Lmiui/autoinstall/config/download/AutoInstallNotification;->createProgressBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mProgressBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    :cond_e
    iget-object v0, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mProgressBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/internal/R$string;->system_app_is_restore:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mProgressBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/internal/R$string;->recovery_progress:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x208

    iget-object v2, p0, Lmiui/autoinstall/config/download/AutoInstallNotification;->mProgressBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
