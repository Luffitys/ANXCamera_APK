.class public abstract Landroid/os/UpdateEngineCallback;
.super Ljava/lang/Object;
.source "UpdateEngineCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onPayloadApplicationComplete(I)V
.end method

.method public abstract onStatusUpdate(IF)V
.end method
