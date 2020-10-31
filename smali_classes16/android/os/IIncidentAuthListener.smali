.class public interface abstract Landroid/os/IIncidentAuthListener;
.super Ljava/lang/Object;
.source "IIncidentAuthListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIncidentAuthListener$Stub;,
        Landroid/os/IIncidentAuthListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onReportApproved()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReportDenied()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
