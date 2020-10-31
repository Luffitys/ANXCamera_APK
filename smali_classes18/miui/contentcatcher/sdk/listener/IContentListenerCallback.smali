.class public interface abstract Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;
.super Ljava/lang/Object;
.source "IContentListenerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;,
        Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onContentReceived(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
