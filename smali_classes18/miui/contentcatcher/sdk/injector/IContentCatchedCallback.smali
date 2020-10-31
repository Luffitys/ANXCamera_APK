.class public interface abstract Lmiui/contentcatcher/sdk/injector/IContentCatchedCallback;
.super Ljava/lang/Object;
.source "IContentCatchedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/injector/IContentCatchedCallback$Stub;,
        Lmiui/contentcatcher/sdk/injector/IContentCatchedCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onContentCatched(Lmiui/contentcatcher/sdk/Content;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
