.class public interface abstract Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;
.super Ljava/lang/Object;
.source "VEListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VEEditorCompileListener"
.end annotation


# virtual methods
.method public abstract onCompileDone()V
.end method

.method public abstract onCompileError(IIFLjava/lang/String;)V
.end method

.method public abstract onCompileProgress(F)V
.end method
