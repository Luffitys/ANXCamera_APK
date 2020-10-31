.class public final synthetic Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$WmmtbYWlzqL-V8wWUDKe3CWjvy0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/ConnectivityManager$PacketKeepalive$1;

.field public final synthetic f$1:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ConnectivityManager$PacketKeepalive$1;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$WmmtbYWlzqL-V8wWUDKe3CWjvy0;->f$0:Landroid/net/ConnectivityManager$PacketKeepalive$1;

    iput-object p2, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$WmmtbYWlzqL-V8wWUDKe3CWjvy0;->f$1:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$WmmtbYWlzqL-V8wWUDKe3CWjvy0;->f$0:Landroid/net/ConnectivityManager$PacketKeepalive$1;

    iget-object v1, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$WmmtbYWlzqL-V8wWUDKe3CWjvy0;->f$1:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager$PacketKeepalive$1;->lambda$onStopped$2$ConnectivityManager$PacketKeepalive$1(Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V

    return-void
.end method
