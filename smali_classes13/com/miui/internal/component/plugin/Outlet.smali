.class public Lcom/miui/internal/component/plugin/Outlet;
.super Ljava/lang/Object;
.source "Outlet.java"


# instance fields
.field private name:Ljava/lang/String;

.field private optional:Z

.field private visibility:Lcom/miui/internal/component/plugin/AccessPermission;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Outlet;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()Lcom/miui/internal/component/plugin/AccessPermission;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Outlet;->visibility:Lcom/miui/internal/component/plugin/AccessPermission;

    return-object v0
.end method

.method public isOptional()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/component/plugin/Outlet;->optional:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Outlet;->name:Ljava/lang/String;

    return-void
.end method

.method public setOptional(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/component/plugin/Outlet;->optional:Z

    return-void
.end method

.method public setVisibility(Lcom/miui/internal/component/plugin/AccessPermission;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Outlet;->visibility:Lcom/miui/internal/component/plugin/AccessPermission;

    return-void
.end method
