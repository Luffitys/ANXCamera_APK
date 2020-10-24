.class public Lmiui/module/Dependency$Level;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private maxLevel:I

.field private minLevel:I

.field private targetLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxLevel()I
    .locals 0

    iget p0, p0, Lmiui/module/Dependency$Level;->maxLevel:I

    return p0
.end method

.method public getMinLevel()I
    .locals 0

    iget p0, p0, Lmiui/module/Dependency$Level;->minLevel:I

    return p0
.end method

.method public getTargetLevel()I
    .locals 0

    iget p0, p0, Lmiui/module/Dependency$Level;->targetLevel:I

    return p0
.end method

.method public setMaxLevel(I)V
    .locals 0

    iput p1, p0, Lmiui/module/Dependency$Level;->maxLevel:I

    return-void
.end method

.method public setMinLevel(I)V
    .locals 0

    iput p1, p0, Lmiui/module/Dependency$Level;->minLevel:I

    return-void
.end method

.method public setTargetLevel(I)V
    .locals 0

    iput p1, p0, Lmiui/module/Dependency$Level;->targetLevel:I

    return-void
.end method
