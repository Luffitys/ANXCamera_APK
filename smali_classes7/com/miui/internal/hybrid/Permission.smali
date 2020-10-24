.class public Lcom/miui/internal/hybrid/Permission;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private applySubdomains:Z

.field private forbidden:Z

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Permission;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public isApplySubdomains()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/hybrid/Permission;->applySubdomains:Z

    return p0
.end method

.method public isForbidden()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/hybrid/Permission;->forbidden:Z

    return p0
.end method

.method public setApplySubdomains(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/hybrid/Permission;->applySubdomains:Z

    return-void
.end method

.method public setForbidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/hybrid/Permission;->forbidden:Z

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/hybrid/Permission;->uri:Ljava/lang/String;

    return-void
.end method
