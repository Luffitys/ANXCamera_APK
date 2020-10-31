.class public Landroid/net/SocketKeepalive$Callback;
.super Ljava/lang/Object;
.source "SocketKeepalive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/SocketKeepalive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived()V
    .registers 1

    return-void
.end method

.method public onError(I)V
    .registers 2

    return-void
.end method

.method public onStarted()V
    .registers 1

    return-void
.end method

.method public onStopped()V
    .registers 1

    return-void
.end method
