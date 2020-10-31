.class public final synthetic Landroid/net/-$$Lambda$ConnectivityManager$5$OMSqRWp-UPz6QSkiXvLAuEDgkhc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$ConnectivityManager$5$OMSqRWp-UPz6QSkiXvLAuEDgkhc;->f$0:Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;

    iput p2, p0, Landroid/net/-$$Lambda$ConnectivityManager$5$OMSqRWp-UPz6QSkiXvLAuEDgkhc;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/net/-$$Lambda$ConnectivityManager$5$OMSqRWp-UPz6QSkiXvLAuEDgkhc;->f$0:Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;

    iget v1, p0, Landroid/net/-$$Lambda$ConnectivityManager$5$OMSqRWp-UPz6QSkiXvLAuEDgkhc;->f$1:I

    invoke-static {v0, v1}, Landroid/net/ConnectivityManager$5;->lambda$onReceiveResult$0(Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;I)V

    return-void
.end method
