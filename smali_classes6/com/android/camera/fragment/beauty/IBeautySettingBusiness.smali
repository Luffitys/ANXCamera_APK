.class public interface abstract Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/fragment/beauty/IBeautyBusiness;


# virtual methods
.method public abstract clearBeauty()V
.end method

.method public abstract getDefaultProgressByCurrentItem()I
.end method

.method public abstract getDisplayNameRes()I
.end method

.method public abstract getProgressByCurrentItem()I
.end method

.method public abstract getSupportedTypeArray(Ljava/lang/String;)Ljava/util/List;
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
        .end annotation
    .end param
.end method

.method public abstract onStateChanged()V
.end method

.method public abstract resetBeauty()V
.end method

.method public abstract setCurrentType(Ljava/lang/String;)V
.end method

.method public abstract setDisplayNameRes(I)V
.end method

.method public abstract setProgressForCurrentItem(I)V
.end method

.method public abstract updateExtraTable()V
.end method
