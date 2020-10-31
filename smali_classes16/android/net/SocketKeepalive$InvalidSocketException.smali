.class public Landroid/net/SocketKeepalive$InvalidSocketException;
.super Landroid/net/SocketKeepalive$ErrorCodeException;
.source "SocketKeepalive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/SocketKeepalive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidSocketException"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/SocketKeepalive$ErrorCodeException;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/SocketKeepalive$ErrorCodeException;-><init>(ILjava/lang/Throwable;)V

    return-void
.end method
