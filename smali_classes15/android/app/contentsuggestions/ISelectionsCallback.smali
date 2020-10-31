.class public interface abstract Landroid/app/contentsuggestions/ISelectionsCallback;
.super Ljava/lang/Object;
.source "ISelectionsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contentsuggestions/ISelectionsCallback$Stub;,
        Landroid/app/contentsuggestions/ISelectionsCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onContentSelectionsAvailable(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/contentsuggestions/ContentSelection;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
