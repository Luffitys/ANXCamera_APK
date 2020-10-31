.class public final synthetic Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$NfMgP6Nh6Ep6LcaiJ10o_zBccII;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/ConnectivityManager$PacketKeepalive$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ConnectivityManager$PacketKeepalive$1;ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$NfMgP6Nh6Ep6LcaiJ10o_zBccII;->f$0:Landroid/net/ConnectivityManager$PacketKeepalive$1;

    iput p2, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$NfMgP6Nh6Ep6LcaiJ10o_zBccII;->f$1:I

    iput-object p3, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$NfMgP6Nh6Ep6LcaiJ10o_zBccII;->f$2:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$NfMgP6Nh6Ep6LcaiJ10o_zBccII;->f$0:Landroid/net/ConnectivityManager$PacketKeepalive$1;

    iget v1, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$NfMgP6Nh6Ep6LcaiJ10o_zBccII;->f$1:I

    iget-object v2, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$NfMgP6Nh6Ep6LcaiJ10o_zBccII;->f$2:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager$PacketKeepalive$1;->lambda$onStarted$0$ConnectivityManager$PacketKeepalive$1(ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;)V

    return-void
.end method
