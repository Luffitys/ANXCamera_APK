.class public interface abstract Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;
.super Ljava/lang/Object;
.source "IContentDecorateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback$Stub;,
        Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract updateContent(Lmiui/contentcatcher/sdk/DecorateContentParam;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
