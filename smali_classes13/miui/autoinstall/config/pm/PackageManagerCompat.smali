.class public Lmiui/autoinstall/config/pm/PackageManagerCompat;
.super Ljava/lang/Object;
.source "PackageManagerCompat.java"


# static fields
.field private static final FILE_INSTALL_RECORD:Ljava/lang/String; = "sp_file_auto-install-record"

.field public static final INSTALL_FAILED_VERSION_DOWNGRADE:I = -0x19

.field public static final INSTALL_SUCCESSFUL:I = 0x1

.field private static final KEY_INSTALL_RECORD:Ljava/lang/String; = "auto-install-record"

.field private static final KEY_LOCAL_RECORD_INSTALL_RESULT:Ljava/lang/String; = "installResult"

.field private static final KEY_LOCAL_RECORD_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final KEY_RESTORE_NOT_NOW:Ljava/lang/String; = "restore_not_now"

.field private static final KEY_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field private static final PATH_LOCAL_APP_INFO:Ljava/lang/String; = "/system/etc/auto-install.json"

.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.xiaomi.market.action.INSTALL"

.field private static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.market"

.field private static final TAG:Ljava/lang/String; = "PackageManagerCompat"


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mLocalAppConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/autoinstall/config/entity/LocalAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/market/pm/IMarketInstallerService;

.field private mServiceBound:Z

.field private mSpUtil:Lmiui/autoinstall/config/utils/SharedPreferencesUtil;

.field private marketInstallObserver:Ljava/miui/autoinstall/config/pm/MarketInstallObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/autoinstall/config/pm/PackageManagerCompat$1;

    invoke-direct {v0, p0}, Lmiui/autoinstall/config/pm/PackageManagerCompat$1;-><init>(Lmiui/autoinstall/config/pm/PackageManagerCompat;)V

    iput-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mContext:Landroid/content/Context;

    new-instance v0, Lmiui/autoinstall/config/utils/SharedPreferencesUtil;

    const-string v1, "sp_file_auto-install-record"

    invoke-direct {v0, p1, v1}, Lmiui/autoinstall/config/utils/SharedPreferencesUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mSpUtil:Lmiui/autoinstall/config/utils/SharedPreferencesUtil;

    return-void
.end method

.method static synthetic access$002(Lmiui/autoinstall/config/pm/PackageManagerCompat;Lcom/market/pm/IMarketInstallerService;)Lcom/market/pm/IMarketInstallerService;
    .registers 2

    iput-object p1, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mService:Lcom/market/pm/IMarketInstallerService;

    return-object p1
.end method

.method private addObject2Array(Lorg/json/JSONArray;Ljava/lang/String;Z)V
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "installResult"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_1b

    :catch_13
    move-exception v1

    const-string v2, "PackageManagerCompat"

    const-string v3, "addObject2Array: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    return-void
.end method

.method private getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4

    iget-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method private isFailedRecord(Ljava/lang/String;Lorg/json/JSONArray;)Z
    .registers 7

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_29

    :try_start_7
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v3, "installResult"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1d} :catch_22

    if-nez v3, :cond_21

    const/4 v3, 0x1

    return v3

    :cond_21
    goto :goto_26

    :catch_22
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_29
    const/4 v1, 0x0

    return v1
.end method

.method private loadInstallRecord(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 6

    iget-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mSpUtil:Lmiui/autoinstall/config/utils/SharedPreferencesUtil;

    const-string v1, "auto-install-record"

    invoke-virtual {v0, v1}, Lmiui/autoinstall/config/utils/SharedPreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadInstallRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageManagerCompat"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    :try_start_24
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_29} :catch_2a

    return-object v1

    :catch_2a
    move-exception v1

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e
    const/4 v1, 0x0

    return-object v1
.end method

.method private saveInstallRecord(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveInstallRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManagerCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mSpUtil:Lmiui/autoinstall/config/utils/SharedPreferencesUtil;

    const-string v1, "auto-install-record"

    invoke-virtual {v0, v1, p1}, Lmiui/autoinstall/config/utils/SharedPreferencesUtil;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindServices(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.market.action.INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mServiceBound:Z

    return-void
.end method

.method public getCompletedRestore(Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lmiui/autoinstall/config/entity/RestoreRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->loadInstallRecord(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_11

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_45

    :try_start_18
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_39

    const-string v5, "installResult"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    new-instance v5, Lmiui/autoinstall/config/entity/RestoreRecord;

    invoke-direct {v5}, Lmiui/autoinstall/config/entity/RestoreRecord;-><init>()V

    const-string v6, "packageName"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmiui/autoinstall/config/entity/RestoreRecord;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lmiui/autoinstall/config/entity/RestoreRecord;->installSuccess:Z

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_39} :catch_3a

    :cond_39
    goto :goto_42

    :catch_3a
    move-exception v4

    const-string v5, "PackageManagerCompat"

    const-string v6, "isRestoreCompleted: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_45
    return-object v0
.end method

.method public hasFailedRecord(Landroid/content/Context;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lmiui/autoinstall/config/entity/LocalAppInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->loadInstallRecord(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string v2, "PackageManagerCompat"

    const-string v3, "hasFailedRecord: has not install record"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/autoinstall/config/entity/LocalAppInfo;

    if-eqz v3, :cond_2b

    iget-object v4, v3, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->isFailedRecord(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v1, 0x1

    return v1

    :cond_2b
    goto :goto_13

    :cond_2c
    return v1
.end method

.method public installPackage(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManagerCompat"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mService:Lcom/market/pm/IMarketInstallerService;

    if-eqz v0, :cond_41

    const/16 v0, 0x40

    :try_start_1c
    invoke-direct {p0, p2, v0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lmiui/autoinstall/config/utils/SignUtil;->loadPkgSignature(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "extra_caller_package_name"

    const-string v5, "com.miui.core"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "extra_apk_signature"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mService:Lcom/market/pm/IMarketInstallerService;

    iget-object v5, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->marketInstallObserver:Ljava/miui/autoinstall/config/pm/MarketInstallObserver;

    invoke-interface {v4, p1, v5, v3}, Lcom/market/pm/IMarketInstallerService;->installPackage(Landroid/net/Uri;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception v0

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_41
    :goto_41
    return-void
.end method

.method public isPackageInstalledRecord(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p3, :cond_6

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->loadInstallRecord(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p3

    :cond_6
    const/4 v0, 0x0

    if-nez p3, :cond_a

    return v0

    :cond_a
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_2e

    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "packageName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const-string v4, "installResult"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v0, 0x1

    return v0

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2e
    return v0
.end method

.method public isRecordAllInstalled(Landroid/content/Context;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lmiui/autoinstall/config/entity/LocalAppInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->loadInstallRecord(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const-string v2, "PackageManagerCompat"

    const-string v3, "isRecordAllInstalled: has not install record"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/autoinstall/config/entity/LocalAppInfo;

    if-eqz v4, :cond_37

    iget-object v5, v4, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v5, v0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->isPackageInstalledRecord(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v5

    if-nez v5, :cond_37

    iget-object v5, v4, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->packageExists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_37

    const/4 v1, 0x0

    return v1

    :cond_37
    goto :goto_17

    :cond_38
    return v1
.end method

.method public isRestoreNotNow()Z
    .registers 4

    iget-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mSpUtil:Lmiui/autoinstall/config/utils/SharedPreferencesUtil;

    const-string v1, "restore_not_now"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/autoinstall/config/utils/SharedPreferencesUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public loadSystemAppInfoLocal()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/autoinstall/config/entity/LocalAppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mLocalAppConfig:Ljava/util/List;

    if-nez v0, :cond_50

    const-string v0, "/system/etc/auto-install.json"

    invoke-static {v0}, Lmiui/autoinstall/config/utils/FileUtil;->getFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    :try_start_10
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mLocalAppConfig:Ljava/util/List;

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_45

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lmiui/autoinstall/config/entity/LocalAppInfo;

    invoke-direct {v5}, Lmiui/autoinstall/config/entity/LocalAppInfo;-><init>()V

    const-string v6, "packageName"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    const-string v6, "versionCode"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lmiui/autoinstall/config/entity/LocalAppInfo;->versionCode:I

    iget-object v6, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mLocalAppConfig:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_45
    iget-object v3, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mLocalAppConfig:Ljava/util/List;
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_47} :catch_48

    return-object v3

    :catch_48
    move-exception v1

    const-string v2, "PackageManagerCompat"

    const-string v3, "jsonToAppInfoList: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_50
    iget-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mLocalAppConfig:Ljava/util/List;

    return-object v0
.end method

.method public packageExists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 5

    const/16 v0, 0x80

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_7} :catch_b

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    :catch_b
    move-exception v0

    return v1
.end method

.method public recordRestoreNotNow(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mSpUtil:Lmiui/autoinstall/config/utils/SharedPreferencesUtil;

    const-string v1, "restore_not_now"

    invoke-virtual {v0, v1, p1}, Lmiui/autoinstall/config/utils/SharedPreferencesUtil;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public registerInstallListener(Ljava/miui/autoinstall/config/pm/MarketInstallerListener;)V
    .registers 3

    new-instance v0, Ljava/miui/autoinstall/config/pm/MarketInstallObserver;

    invoke-direct {v0, p1}, Ljava/miui/autoinstall/config/pm/MarketInstallObserver;-><init>(Ljava/miui/autoinstall/config/pm/MarketInstallerListener;)V

    iput-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->marketInstallObserver:Ljava/miui/autoinstall/config/pm/MarketInstallObserver;

    return-void
.end method

.method public unbindService(Landroid/content/Context;)V
    .registers 3

    iget-boolean v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mServiceBound:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mServiceBound:Z

    :cond_c
    return-void
.end method

.method public updateInstallRecord(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 11

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->loadInstallRecord(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_38

    :try_start_15
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "packageName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const-string v5, "installResult"

    invoke-virtual {v4, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_2a} :catch_2d

    const/4 v2, 0x1

    goto :goto_38

    :cond_2c
    goto :goto_35

    :catch_2d
    move-exception v4

    const-string v5, "PackageManagerCompat"

    const-string v6, "updateInstallRecord: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_38
    :goto_38
    if-nez v2, :cond_3d

    invoke-direct {p0, v0, p2, p3}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->addObject2Array(Lorg/json/JSONArray;Ljava/lang/String;Z)V

    :cond_3d
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->saveInstallRecord(Ljava/lang/String;)V

    return-void

    :cond_45
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    move-object v0, v1

    invoke-direct {p0, v0, p2, p3}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->addObject2Array(Lorg/json/JSONArray;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->saveInstallRecord(Ljava/lang/String;)V

    return-void
.end method
