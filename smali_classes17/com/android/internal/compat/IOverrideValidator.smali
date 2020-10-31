.class public interface abstract Lcom/android/internal/compat/IOverrideValidator;
.super Ljava/lang/Object;
.source "IOverrideValidator.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/IOverrideValidator$Stub;,
        Lcom/android/internal/compat/IOverrideValidator$Default;
    }
.end annotation


# virtual methods
.method public abstract getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
