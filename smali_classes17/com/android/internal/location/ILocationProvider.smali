.class public interface abstract Lcom/android/internal/location/ILocationProvider;
.super Ljava/lang/Object;
.source "ILocationProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/ILocationProvider$Stub;,
        Lcom/android/internal/location/ILocationProvider$Default;
    }
.end annotation


# virtual methods
.method public abstract sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setLocationProviderManager(Lcom/android/internal/location/ILocationProviderManager;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
