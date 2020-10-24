.class public Lcom/miui/internal/hybrid/Config;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private content:Ljava/lang/String;

.field private features:Ljava/util/Map;

.field private permissions:Ljava/util/Map;

.field private preferences:Ljava/util/Map;

.field private security:Lcom/miui/internal/hybrid/Security;

.field private vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/Config;->features:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/Config;->preferences:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/Config;->permissions:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addFeature(Lcom/miui/internal/hybrid/Feature;)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/hybrid/Config;->features:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Feature;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPermission(Lcom/miui/internal/hybrid/Permission;)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/hybrid/Config;->permissions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Permission;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearFeatures()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Config;->features:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearPermissions()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Config;->permissions:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearPreferences()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Config;->preferences:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Config;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Lcom/miui/internal/hybrid/Feature;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Config;->features:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/hybrid/Feature;

    return-object p0
.end method

.method public getFeatures()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Config;->features:Ljava/util/Map;

    return-object p0
.end method

.method public getPermission(Ljava/lang/String;)Lcom/miui/internal/hybrid/Permission;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Config;->permissions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/hybrid/Permission;

    return-object p0
.end method

.method public getPermissions()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Config;->permissions:Ljava/util/Map;

    return-object p0
.end method

.method public getPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Config;->preferences:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPreferences()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Config;->preferences:Ljava/util/Map;

    return-object p0
.end method

.method public getSecurity()Lcom/miui/internal/hybrid/Security;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Config;->security:Lcom/miui/internal/hybrid/Security;

    return-object p0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Config;->vendor:Ljava/lang/String;

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/hybrid/Config;->content:Ljava/lang/String;

    return-void
.end method

.method public setFeatures(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/hybrid/Config;->features:Ljava/util/Map;

    return-void
.end method

.method public setPermissions(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/hybrid/Config;->permissions:Ljava/util/Map;

    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Config;->preferences:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPreferences(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/hybrid/Config;->preferences:Ljava/util/Map;

    return-void
.end method

.method public setSecurity(Lcom/miui/internal/hybrid/Security;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/hybrid/Config;->security:Lcom/miui/internal/hybrid/Security;

    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/hybrid/Config;->vendor:Ljava/lang/String;

    return-void
.end method
