.class public abstract Lcom/android/camera/data/observeable/VMBase;
.super Ljava/lang/Object;
.source "VMBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract achieveEndOfCycle()Z
.end method

.method protected final judge()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/observeable/VMBase;->achieveEndOfCycle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/data/observeable/VMBase;->rollbackData()V

    :cond_0
    return-void
.end method

.method protected onCleared()V
    .locals 0

    return-void
.end method

.method protected abstract rollbackData()V
.end method
