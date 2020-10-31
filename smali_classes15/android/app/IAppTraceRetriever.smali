.class public interface abstract Landroid/app/IAppTraceRetriever;
.super Ljava/lang/Object;
.source "IAppTraceRetriever.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAppTraceRetriever$Stub;,
        Landroid/app/IAppTraceRetriever$Default;
    }
.end annotation


# virtual methods
.method public abstract getTraceFileDescriptor(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
