.class public final synthetic Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$nt5Pgsn85fhX6h9EJ0eAK_PXAjU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/net/ConnectivityManager$PacketKeepalive$1;

.field public final synthetic f$1:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/ConnectivityManager$PacketKeepalive$1;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$nt5Pgsn85fhX6h9EJ0eAK_PXAjU;->f$0:Landroid/net/ConnectivityManager$PacketKeepalive$1;

    iput-object p2, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$nt5Pgsn85fhX6h9EJ0eAK_PXAjU;->f$1:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    iput p3, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$nt5Pgsn85fhX6h9EJ0eAK_PXAjU;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$nt5Pgsn85fhX6h9EJ0eAK_PXAjU;->f$0:Landroid/net/ConnectivityManager$PacketKeepalive$1;

    iget-object v1, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$nt5Pgsn85fhX6h9EJ0eAK_PXAjU;->f$1:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    iget v2, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$nt5Pgsn85fhX6h9EJ0eAK_PXAjU;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager$PacketKeepalive$1;->lambda$onError$5$ConnectivityManager$PacketKeepalive$1(Landroid/net/ConnectivityManager$PacketKeepaliveCallback;I)V

    return-void
.end method
