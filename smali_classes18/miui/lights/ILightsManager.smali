.class public interface abstract Lmiui/lights/ILightsManager;
.super Ljava/lang/Object;
.source "ILightsManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/lights/ILightsManager$Stub;,
        Lmiui/lights/ILightsManager$Default;
    }
.end annotation


# virtual methods
.method public abstract setColorfulLight(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
