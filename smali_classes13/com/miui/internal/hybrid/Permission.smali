.class public Lcom/miui/internal/hybrid/Permission;
.super Ljava/lang/Object;
.source "Permission.java"


# instance fields
.field private applySubdomains:Z

.field private forbidden:Z

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/Permission;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isApplySubdomains()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/hybrid/Permission;->applySubdomains:Z

    return v0
.end method

.method public isForbidden()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/hybrid/Permission;->forbidden:Z

    return v0
.end method

.method public setApplySubdomains(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/hybrid/Permission;->applySubdomains:Z

    return-void
.end method

.method public setForbidden(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/hybrid/Permission;->forbidden:Z

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/hybrid/Permission;->uri:Ljava/lang/String;

    return-void
.end method
