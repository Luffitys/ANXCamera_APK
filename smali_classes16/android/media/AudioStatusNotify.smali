.class public Landroid/media/AudioStatusNotify;
.super Ljava/lang/Object;
.source "AudioStatusNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioStatusNotify$AppInfo;
    }
.end annotation


# static fields
.field public static final NOTIFY_ID:I = 0x2711

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/media/AudioStatusNotify;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioStatusNotify;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationInfo(Landroid/content/Context;IZ)Landroid/media/AudioStatusNotify$AppInfo;
    .registers 11

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-eq v5, p1, :cond_25

    goto :goto_14

    :cond_25
    :try_start_25
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    new-instance v6, Landroid/media/AudioStatusNotify$AppInfo;

    invoke-direct {v6}, Landroid/media/AudioStatusNotify$AppInfo;-><init>()V

    iput p1, v6, Landroid/media/AudioStatusNotify$AppInfo;->pid:I

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Landroid/media/AudioStatusNotify$AppInfo;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/media/AudioStatusNotify$AppInfo;->name:Ljava/lang/String;

    if-eqz p2, :cond_50

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Landroid/media/AudioStatusNotify$AppInfo;->icon:Landroid/graphics/Bitmap;
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_50} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_50} :catch_51

    :cond_50
    return-object v6

    :catch_51
    move-exception v5

    sget-object v6, Landroid/media/AudioStatusNotify;->TAG:Ljava/lang/String;

    const-string v7, "getApplicationInfo failed"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    :catch_5a
    move-exception v5

    sget-object v6, Landroid/media/AudioStatusNotify;->TAG:Ljava/lang/String;

    const-string v7, "getApplicationInfo NameNotFoundException failed"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_63
    goto :goto_14

    :cond_64
    const/4 v4, 0x0

    return-object v4
.end method

.method public static sendAudioStatusNotification(Landroid/content/Context;IZ)V
    .registers 12

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/media/AudioStatusNotify;->getApplicationInfo(Landroid/content/Context;IZ)Landroid/media/AudioStatusNotify$AppInfo;

    move-result-object v0

    if-nez v0, :cond_1e

    sget-object v1, Landroid/media/AudioStatusNotify;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not get app info for pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    nop

    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz p2, :cond_36

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040808

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    :cond_36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040809

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_41
    const-string v3, "channel_1"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104058a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-instance v6, Landroid/app/NotificationChannel;

    invoke-direct {v6, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v8, "reminder"

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, v0, Landroid/media/AudioStatusNotify$AppInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, v0, Landroid/media/AudioStatusNotify$AppInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_74

    iget-object v8, v0, Landroid/media/AudioStatusNotify$AppInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {v8}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v8

    goto :goto_75

    :cond_74
    const/4 v8, 0x0

    :goto_75
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, v0, Landroid/media/AudioStatusNotify$AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    iget v8, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v7, Landroid/app/Notification;->flags:I

    const/16 v8, 0x2711

    invoke-virtual {v1, v8, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
