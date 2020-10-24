.class public interface abstract Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract cloneValues()Landroidx/collection/SimpleArrayMap;
.end method

.method public abstract concurrentEditor()Lcom/android/camera/data/data/DataItemBase$ConcurrentEditor;
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getFloat(Ljava/lang/String;F)F
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isTransient()Z
.end method

.method public abstract provideKey()Ljava/lang/String;
.end method
