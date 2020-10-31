.class public interface abstract Landroid/telephony/data/IQualifiedNetworksServiceCallback;
.super Ljava/lang/Object;
.source "IQualifiedNetworksServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/IQualifiedNetworksServiceCallback$Stub;,
        Landroid/telephony/data/IQualifiedNetworksServiceCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onQualifiedNetworkTypesChanged(I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
