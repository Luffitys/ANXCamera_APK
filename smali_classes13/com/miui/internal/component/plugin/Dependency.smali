.class public Lcom/miui/internal/component/plugin/Dependency;
.super Ljava/lang/Object;
.source "Dependency.java"


# instance fields
.field private minLevel:I

.field private name:Ljava/lang/String;

.field private optional:Z

.field private resourcesRequired:Z

.field private targetLevel:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMinLevel()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/component/plugin/Dependency;->minLevel:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Dependency;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetLevel()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/component/plugin/Dependency;->targetLevel:I

    return v0
.end method

.method public isOptional()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/component/plugin/Dependency;->optional:Z

    return v0
.end method

.method public isResourcesRequired()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/component/plugin/Dependency;->resourcesRequired:Z

    return v0
.end method

.method public setMinLevel(I)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/component/plugin/Dependency;->minLevel:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Dependency;->name:Ljava/lang/String;

    return-void
.end method

.method public setOptional(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/component/plugin/Dependency;->optional:Z

    return-void
.end method

.method public setResourcesRequired(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/component/plugin/Dependency;->resourcesRequired:Z

    return-void
.end method

.method public setTargetLevel(I)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/component/plugin/Dependency;->targetLevel:I

    return-void
.end method
