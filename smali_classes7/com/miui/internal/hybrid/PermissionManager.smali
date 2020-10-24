.class public Lcom/miui/internal/hybrid/PermissionManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mConfig:Lcom/miui/internal/hybrid/Config;

.field private mValidMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/Config;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/PermissionManager;->mValidMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/miui/internal/hybrid/PermissionManager;->mConfig:Lcom/miui/internal/hybrid/Config;

    return-void
.end method

.method private initPermission(Ljava/lang/String;)Z
    .locals 8

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "*"

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/miui/internal/hybrid/PermissionManager;->mConfig:Lcom/miui/internal/hybrid/Config;

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/Config;->getPermissions()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v2, v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/hybrid/Permission;

    invoke-virtual {v3}, Lcom/miui/internal/hybrid/Permission;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, v1

    goto :goto_1

    :cond_2
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3}, Lcom/miui/internal/hybrid/Permission;->isApplySubdomains()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "\\."

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    array-length v6, v4

    const/4 v7, 0x1

    if-lt v5, v6, :cond_6

    move v2, v7

    :goto_2
    array-length v5, v4

    if-gt v2, v5, :cond_4

    array-length v5, v3

    sub-int/2addr v5, v2

    aget-object v5, v3, v5

    array-length v6, v4

    sub-int/2addr v6, v2

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v7

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_6
    :goto_3
    if-eqz v2, :cond_1

    :cond_7
    return v2
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/PermissionManager;->mValidMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/hybrid/PermissionManager;->mValidMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/PermissionManager;->initPermission(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/hybrid/PermissionManager;->mValidMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
