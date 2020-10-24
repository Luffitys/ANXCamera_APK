.class public Lmiui/autoinstall/config/pm/PackageManagerCompat;
.super Ljava/lang/Object;
.source ""


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

.field private mService:LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;

.field private mServiceBound:Z

.field private mSpUtil:Lmiui/autoinstall/config/utils/SharedPreferencesUtil;

.field private marketInstallObserver:Ljava/miui/autoinstall/config/pm/MarketInstallObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

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

.method static synthetic access$002(Lmiui/autoinstall/config/pm/PackageManagerCompat;LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;)LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;
    .locals 0

    iput-object p1, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mService:LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;

    return-object p1
.end method

.method private addObject2Array(Lorg/json/JSONArray;Ljava/lang/String;Z)V
    .locals 1

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "packageName"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "installResult"

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PackageManagerCompat"

    const-string p2, "addObject2Array: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 0

    iget-object p0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method private isFailedRecord(Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 4

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    :try_start_0
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "installResult"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private loadInstallRecord(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 2

    iget-object p0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mSpUtil:Lmiui/autoinstall/config/utils/SharedPreferencesUtil;

    const-string p1, "auto-install-record"

    invoke-virtual {p0, p1}, Lmiui/autoinstall/config/utils/SharedPreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadInstallRecord: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PackageManagerCompat"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private saveInstallRecord(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveInstallRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManagerCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mSpUtil:Lmiui/autoinstall/config/utils/SharedPreferencesUtil;

    const-string v0, "auto-install-record"

    invoke-virtual {p0, v0, p1}, Lmiui/autoinstall/config/utils/SharedPreferencesUtil;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindServices(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.market.action.INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mServiceBound:Z

    return-void
.end method

.method public getCompletedRestore(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->loadInstallRecord(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "installResult"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lmiui/autoinstall/config/entity/RestoreRecord;

    invoke-direct {v3}, Lmiui/autoinstall/config/entity/RestoreRecord;-><init>()V

    const-string v4, "packageName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lmiui/autoinstall/config/entity/RestoreRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v3, Lmiui/autoinstall/config/entity/RestoreRecord;->installSuccess:Z

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "PackageManagerCompat"

    const-string v4, "isRestoreCompleted: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public hasFailedRecord(Landroid/content/Context;Ljava/util/List;)Z
    .locals 2

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->loadInstallRecord(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "PackageManagerCompat"

    const-string p1, "hasFailedRecord: has not install record"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/autoinstall/config/entity/LocalAppInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->isFailedRecord(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public installPackage(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManagerCompat"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mService:LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    :try_start_0
    invoke-direct {p0, p2, v0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    invoke-static {p2}, Lmiui/autoinstall/config/utils/SignUtil;->loadPkgSignature(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "extra_caller_package_name"

    const-string v4, "com.miui.core"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "extra_apk_signature"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mService:LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;

    iget-object p0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->marketInstallObserver:Ljava/miui/autoinstall/config/pm/MarketInstallObserver;

    invoke-interface {p2, p1, p0, v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;->OooO00o(Landroid/net/Uri;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public isPackageInstalledRecord(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 3

    if-nez p3, :cond_0

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->loadInstallRecord(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p3

    :cond_0
    const/4 p0, 0x0

    if-nez p3, :cond_1

    return p0

    :cond_1
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p1

    move v0, p0

    :goto_0
    if-ge v0, p1, :cond_3

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "installResult"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p0
.end method

.method public isRecordAllInstalled(Landroid/content/Context;Ljava/util/List;)Z
    .locals 5

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->loadInstallRecord(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p0, "PackageManagerCompat"

    const-string p1, "isRecordAllInstalled: has not install record"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/autoinstall/config/entity/LocalAppInfo;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->isPackageInstalledRecord(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v3, v3, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->packageExists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public isRestoreNotNow()Z
    .locals 2

    iget-object p0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mSpUtil:Lmiui/autoinstall/config/utils/SharedPreferencesUtil;

    const-string v0, "restore_not_now"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/autoinstall/config/utils/SharedPreferencesUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public loadSystemAppInfoLocal()Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mLocalAppConfig:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "/system/etc/auto-install.json"

    invoke-static {v0}, Lmiui/autoinstall/config/utils/FileUtil;->getFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mLocalAppConfig:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lmiui/autoinstall/config/entity/LocalAppInfo;

    invoke-direct {v4}, Lmiui/autoinstall/config/entity/LocalAppInfo;-><init>()V

    const-string v5, "packageName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    const-string v5, "versionCode"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lmiui/autoinstall/config/entity/LocalAppInfo;->versionCode:I

    iget-object v3, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mLocalAppConfig:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mLocalAppConfig:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "PackageManagerCompat"

    const-string v2, "jsonToAppInfoList: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iget-object p0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mLocalAppConfig:Ljava/util/List;

    return-object p0
.end method

.method public packageExists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    const/16 p0, 0x80

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public recordRestoreNotNow(Z)V
    .locals 1

    iget-object p0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mSpUtil:Lmiui/autoinstall/config/utils/SharedPreferencesUtil;

    const-string v0, "restore_not_now"

    invoke-virtual {p0, v0, p1}, Lmiui/autoinstall/config/utils/SharedPreferencesUtil;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public registerInstallListener(Ljava/miui/autoinstall/config/pm/OooO0O0;)V
    .locals 1

    new-instance v0, Ljava/miui/autoinstall/config/pm/MarketInstallObserver;

    invoke-direct {v0, p1}, Ljava/miui/autoinstall/config/pm/MarketInstallObserver;-><init>(Ljava/miui/autoinstall/config/pm/OooO0O0;)V

    iput-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->marketInstallObserver:Ljava/miui/autoinstall/config/pm/MarketInstallObserver;

    return-void
.end method

.method public unbindService(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mServiceBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat;->mServiceBound:Z

    :cond_0
    return-void
.end method

.method public updateInstallRecord(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->loadInstallRecord(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "packageName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "installResult"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "PackageManagerCompat"

    const-string v5, "updateInstallRecord: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->saveInstallRecord(Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    :goto_3
    invoke-direct {p0, p1, p2, p3}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->addObject2Array(Lorg/json/JSONArray;Ljava/lang/String;Z)V

    goto :goto_2
.end method
