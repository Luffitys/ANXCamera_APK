.class public Lmiui/util/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# static fields
.field private static final EXTRA_SUBSTITUTE_APP_NAME:Ljava/lang/String; = "android.substName"

.field private static final TAG:Ljava/lang/String; = "NotificationHelper"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setSubstituteAppName(Landroid/app/Notification$Builder;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.substName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public static setTargetPkg(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification;
    .registers 4

    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v0, :cond_9

    invoke-static {p1, p2}, Lmiui/util/NotificationHelper;->setTargetPkgForMiui(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-static {p0, p1, p2}, Lmiui/util/NotificationHelper;->setTargetPkgForAndroid(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private static setTargetPkgForAndroid(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification;
    .registers 8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1b

    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_1b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_2c

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lmiui/util/NotificationHelper;->setSubstituteAppName(Landroid/app/Notification$Builder;Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_2c} :catch_2d

    :cond_2c
    goto :goto_35

    :catch_2d
    move-exception v1

    const-string v2, "NotificationHelper"

    const-string v3, "setTargetPkg failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method private static setTargetPkgForMiui(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification;
    .registers 6

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-class v1, Landroid/app/Notification;

    const-class v2, Landroid/app/MiuiNotification;

    const-string v3, "extraNotification"

    invoke-static {v1, v3, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/MiuiNotification;

    invoke-virtual {v1, p1}, Landroid/app/MiuiNotification;->setTargetPkg(Ljava/lang/CharSequence;)V

    return-object v0
.end method
