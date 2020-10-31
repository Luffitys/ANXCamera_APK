.class public interface abstract Lcom/miui/translationservice/ITranslationRemoteCallback;
.super Ljava/lang/Object;
.source "ITranslationRemoteCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/translationservice/ITranslationRemoteCallback$Stub;,
        Lcom/miui/translationservice/ITranslationRemoteCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onTranslationFinished(Lcom/miui/translationservice/provider/TranslationResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
