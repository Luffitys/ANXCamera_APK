.class public Lcom/miui/whetstone/process/WtServiceControlEntry;
.super Ljava/lang/Object;
.source "WtServiceControlEntry.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static mSCE:Lcom/miui/whetstone/process/WtServiceControlEntry;

.field private static mServiceControlWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mSCE:Lcom/miui/whetstone/process/WtServiceControlEntry;

    sput-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    const-string v1, "com.android.cts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addAppToServiceControlWhitelist(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addAppToServiceControlWhitelist(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_7

    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_7
    return-void
.end method

.method public static getInstance()Lcom/miui/whetstone/process/WtServiceControlEntry;
    .registers 1

    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mSCE:Lcom/miui/whetstone/process/WtServiceControlEntry;

    if-nez v0, :cond_b

    new-instance v0, Lcom/miui/whetstone/process/WtServiceControlEntry;

    invoke-direct {v0}, Lcom/miui/whetstone/process/WtServiceControlEntry;-><init>()V

    sput-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mSCE:Lcom/miui/whetstone/process/WtServiceControlEntry;

    :cond_b
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mSCE:Lcom/miui/whetstone/process/WtServiceControlEntry;

    return-object v0
.end method

.method public static isAppInServiceControlWhitelist(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isServiceControlEnabled()Z
    .registers 3

    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getWhetstoneSystemSetting()Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const-string v2, "servicecontrol_enabled"

    invoke-virtual {v0, v2, v1}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->getCommonConfigInBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    :cond_e
    return v1
.end method

.method public static removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ServiceControlEntry"

    const-string v1, "could not remove an nonexist package from whitelist"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private setServiceControlWhitelist()V
    .registers 6

    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    const-string v1, "com.android.cts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getWhetstoneSystemSetting()Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    move-result-object v0

    if-eqz v0, :cond_33

    const-string v1, "servicecontrol_whitelist"

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->getCommonConfigInJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_33

    const/4 v2, 0x0

    :goto_1b
    :try_start_1b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2e

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_2a} :catch_2f

    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2e
    goto :goto_33

    :catch_2f
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_33
    :goto_33
    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Lcom/miui/whetstone/process/WtServiceControlEntry;->setServiceControlWhitelist()V

    return-void
.end method
