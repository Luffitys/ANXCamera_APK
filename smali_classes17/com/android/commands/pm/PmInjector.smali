.class public final Lcom/android/commands/pm/PmInjector;
.super Ljava/lang/Object;
.source "PmInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/pm/PmInjector$InstallObserver;
    }
.end annotation


# static fields
.field private static final PM:Ljava/lang/String; = "Pm"

.field public static final STATUS_INVALID_APK:I = 0x3

.field public static final STATUS_REJECT:I = -0x1

.field public static final STATUS_SUCESS:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultUserId()I
    .registers 4

    :try_start_0
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1}, Landroid/os/IUserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-static {v2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2a} :catch_2d

    return v1

    :cond_2b
    goto :goto_14

    :cond_2c
    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    const/4 v0, -0x1

    return v0
.end method

.method public static installVerify(Ljava/lang/String;)I
    .registers 11

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.miui.securitycenter"

    const-string v4, "com.miui.permcenter.install.AdbInstallActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Lcom/android/commands/pm/PmInjector$InstallObserver;

    invoke-direct {v3}, Lcom/android/commands/pm/PmInjector$InstallObserver;-><init>()V

    const-string/jumbo v4, "observer"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const/high16 v4, 0x18000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v4, -0x1

    const/4 v5, 0x2

    :try_start_2e
    invoke-static {v2}, Lcom/android/commands/pm/IActivityManagerCompat;->startActivity(Landroid/content/Intent;)I

    move-result v6

    if-eqz v6, :cond_58

    const-string v7, "Pm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "start PackageInstallerActivity failed ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/commands/pm/PmInjector;->isSecurityCenterExist()Z

    move-result v7
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_54} :catch_ad

    if-nez v7, :cond_57

    return v5

    :cond_57
    return v4

    :cond_58
    nop

    monitor-enter v3

    :goto_5a
    :try_start_5a
    iget-boolean v6, v3, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z
    :try_end_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_aa

    if-nez v6, :cond_6a

    const-wide/32 v6, 0xea60

    :try_start_61
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_67} :catch_68
    .catchall {:try_start_61 .. :try_end_67} :catchall_aa

    goto :goto_69

    :catch_68
    move-exception v6

    :goto_69
    goto :goto_5a

    :cond_6a
    :try_start_6a
    iget v6, v3, Lcom/android/commands/pm/PmInjector$InstallObserver;->result:I

    if-ne v6, v4, :cond_70

    monitor-exit v3

    return v5

    :cond_70
    iget-object v6, v3, Lcom/android/commands/pm/PmInjector$InstallObserver;->msg:Ljava/lang/String;

    if-nez v6, :cond_77

    const-string v7, "Failure [INSTALL_CANCELED_BY_USER]"

    move-object v6, v7

    :cond_77
    const-string v7, "Pm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "install msg : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "Invalid apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a0

    invoke-static {}, Lcom/android/commands/pm/PmInjector;->isSecurityCenterExist()Z

    move-result v4

    if-nez v4, :cond_9d

    monitor-exit v3

    return v5

    :cond_9d
    const/4 v4, 0x3

    monitor-exit v3

    return v4

    :cond_a0
    invoke-static {}, Lcom/android/commands/pm/PmInjector;->isSecurityCenterExist()Z

    move-result v7

    if-nez v7, :cond_a8

    monitor-exit v3

    return v5

    :cond_a8
    monitor-exit v3

    return v4

    :catchall_aa
    move-exception v4

    monitor-exit v3
    :try_end_ac
    .catchall {:try_start_6a .. :try_end_ac} :catchall_aa

    throw v4

    :catch_ad
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v7, "Pm"

    const-string/jumbo v8, "start PackageInstallerActivity RemoteException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/commands/pm/PmInjector;->isSecurityCenterExist()Z

    move-result v7

    if-nez v7, :cond_c0

    return v5

    :cond_c0
    return v4
.end method

.method public static isSecurityCenterExist()Z
    .registers 5

    const-string v0, "Pm"

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_a

    return v2

    :cond_a
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v3, "com.miui.securitycenter"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v1, v3, v2, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v3, "checkSecurityCenterInstalled:getPackageInfo:true"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_21

    if-eqz v1, :cond_20

    return v2

    :cond_20
    goto :goto_3a

    :catch_21
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageInfo error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    const-string v1, "checkSecurityCenterInstalled:Exception:false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static statusToString(I)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    const/4 v1, -0x1

    if-eq p0, v1, :cond_12

    const/4 v1, 0x2

    if-eq p0, v1, :cond_f

    const/4 v1, 0x3

    if-eq p0, v1, :cond_c

    goto :goto_15

    :cond_c
    const-string v0, "Invalid apk"

    goto :goto_15

    :cond_f
    const-string v0, "Sucess"

    goto :goto_15

    :cond_12
    const-string v0, "Install canceled by user"

    nop

    :goto_15
    return-object v0
.end method
