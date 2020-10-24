.class public Lcom/miui/internal/component/plugin/Outlet;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private name:Ljava/lang/String;

.field private optional:Z

.field private visibility:Lcom/miui/internal/component/plugin/AccessPermission;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Outlet;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getVisibility()Lcom/miui/internal/component/plugin/AccessPermission;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Outlet;->visibility:Lcom/miui/internal/component/plugin/AccessPermission;

    return-object p0
.end method

.method public isOptional()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/component/plugin/Outlet;->optional:Z

    return p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Outlet;->name:Ljava/lang/String;

    return-void
.end method

.method public setOptional(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/component/plugin/Outlet;->optional:Z

    return-void
.end method

.method public setVisibility(Lcom/miui/internal/component/plugin/AccessPermission;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Outlet;->visibility:Lcom/miui/internal/component/plugin/AccessPermission;

    return-void
.end method
