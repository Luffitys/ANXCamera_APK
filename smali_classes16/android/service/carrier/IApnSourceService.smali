.class public interface abstract Landroid/service/carrier/IApnSourceService;
.super Ljava/lang/Object;
.source "IApnSourceService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/IApnSourceService$Stub;,
        Landroid/service/carrier/IApnSourceService$Default;
    }
.end annotation


# virtual methods
.method public abstract getApns(I)[Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
