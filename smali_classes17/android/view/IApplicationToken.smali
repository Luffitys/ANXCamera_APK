.class public interface abstract Landroid/view/IApplicationToken;
.super Ljava/lang/Object;
.source "IApplicationToken.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IApplicationToken$Stub;,
        Landroid/view/IApplicationToken$Default;
    }
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
