.class public interface abstract Lmiui/slide/ISlideChangeListener;
.super Ljava/lang/Object;
.source "ISlideChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/slide/ISlideChangeListener$Stub;,
        Lmiui/slide/ISlideChangeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onSlideChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
