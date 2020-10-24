.class public Lcom/miui/internal/component/plugin/Dependency;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private minLevel:I

.field private name:Ljava/lang/String;

.field private optional:Z

.field private resourcesRequired:Z

.field private targetLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMinLevel()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/component/plugin/Dependency;->minLevel:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Dependency;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetLevel()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/component/plugin/Dependency;->targetLevel:I

    return p0
.end method

.method public isOptional()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/component/plugin/Dependency;->optional:Z

    return p0
.end method

.method public isResourcesRequired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/component/plugin/Dependency;->resourcesRequired:Z

    return p0
.end method

.method public setMinLevel(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/component/plugin/Dependency;->minLevel:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Dependency;->name:Ljava/lang/String;

    return-void
.end method

.method public setOptional(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/component/plugin/Dependency;->optional:Z

    return-void
.end method

.method public setResourcesRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/component/plugin/Dependency;->resourcesRequired:Z

    return-void
.end method

.method public setTargetLevel(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/component/plugin/Dependency;->targetLevel:I

    return-void
.end method
