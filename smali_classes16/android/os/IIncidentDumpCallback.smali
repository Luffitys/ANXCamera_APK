.class public interface abstract Landroid/os/IIncidentDumpCallback;
.super Ljava/lang/Object;
.source "IIncidentDumpCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIncidentDumpCallback$Stub;,
        Landroid/os/IIncidentDumpCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onDumpSection(Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
