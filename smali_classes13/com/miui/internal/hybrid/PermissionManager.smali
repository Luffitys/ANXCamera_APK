.class public Lcom/miui/internal/hybrid/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# instance fields
.field private mConfig:Lcom/miui/internal/hybrid/Config;

.field private mValidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/Config;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/PermissionManager;->mValidMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/miui/internal/hybrid/PermissionManager;->mConfig:Lcom/miui/internal/hybrid/Config;

    return-void
.end method

.method private initPermission(Ljava/lang/String;)Z
    .registers 16

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "file"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v3, "*"

    goto :goto_19

    :cond_15
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    :goto_19
    iget-object v4, p0, Lcom/miui/internal/hybrid/PermissionManager;->mConfig:Lcom/miui/internal/hybrid/Config;

    invoke-virtual {v4}, Lcom/miui/internal/hybrid/Config;->getPermissions()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/hybrid/Permission;

    invoke-virtual {v6}, Lcom/miui/internal/hybrid/Permission;->getUri()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "*"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    const-string v8, "*"

    goto :goto_51

    :cond_49
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    :goto_51
    invoke-virtual {v6}, Lcom/miui/internal/hybrid/Permission;->isApplySubdomains()Z

    move-result v9

    if-eqz v9, :cond_7e

    const-string v9, "\\."

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v11, v9

    array-length v12, v10

    if-lt v11, v12, :cond_7d

    const/4 v0, 0x1

    const/4 v11, 0x1

    :goto_67
    array-length v12, v10

    if-gt v11, v12, :cond_7d

    array-length v12, v9

    sub-int/2addr v12, v11

    aget-object v12, v9, v12

    array-length v13, v10

    sub-int/2addr v13, v11

    aget-object v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7a

    const/4 v0, 0x0

    goto :goto_7d

    :cond_7a
    add-int/lit8 v11, v11, 0x1

    goto :goto_67

    :cond_7d
    :goto_7d
    goto :goto_82

    :cond_7e
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_82
    if-eqz v0, :cond_85

    goto :goto_86

    :cond_85
    goto :goto_27

    :cond_86
    :goto_86
    return v0
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/hybrid/PermissionManager;->mValidMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/miui/internal/hybrid/PermissionManager;->mValidMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/PermissionManager;->initPermission(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    iget-object v0, p0, Lcom/miui/internal/hybrid/PermissionManager;->mValidMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
