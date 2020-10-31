.class public interface abstract Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;
.super Ljava/lang/Object;
.source "EgretRuntimeLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EgretRuntimeDownloadListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onProgress(Ljava/lang/String;II)V
.end method

.method public abstract onProgressTotal(II)V
.end method

.method public abstract onSuccess(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method
