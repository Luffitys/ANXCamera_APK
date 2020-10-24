.class public interface abstract Lcom/android/camera/data/cloud/DataCloud$CloudFeature;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract editor()Landroid/content/SharedPreferences$Editor;
.end method

.method public abstract filterFeature(Lcom/android/camera/data/data/config/SupportedConfigs;)Lcom/android/camera/data/data/config/SupportedConfigs;
.end method

.method public abstract getAllDisabledFeatures()Ljava/util/Collection;
.end method

.method public abstract provideKey()Ljava/lang/String;
.end method

.method public abstract setReady(Z)V
.end method
