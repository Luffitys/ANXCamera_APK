.class public final synthetic Landroid/net/-$$Lambda$SocketKeepalive$1$m-VPtyb2YaC8aWd5gXQYgFGhVbM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/net/SocketKeepalive$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/net/SocketKeepalive$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/net/SocketKeepalive$1;ILandroid/net/SocketKeepalive$Callback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$m-VPtyb2YaC8aWd5gXQYgFGhVbM;->f$0:Landroid/net/SocketKeepalive$1;

    iput p2, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$m-VPtyb2YaC8aWd5gXQYgFGhVbM;->f$1:I

    iput-object p3, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$m-VPtyb2YaC8aWd5gXQYgFGhVbM;->f$2:Landroid/net/SocketKeepalive$Callback;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$m-VPtyb2YaC8aWd5gXQYgFGhVbM;->f$0:Landroid/net/SocketKeepalive$1;

    iget v1, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$m-VPtyb2YaC8aWd5gXQYgFGhVbM;->f$1:I

    iget-object v2, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$m-VPtyb2YaC8aWd5gXQYgFGhVbM;->f$2:Landroid/net/SocketKeepalive$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/net/SocketKeepalive$1;->lambda$onStarted$1$SocketKeepalive$1(ILandroid/net/SocketKeepalive$Callback;)V

    return-void
.end method
