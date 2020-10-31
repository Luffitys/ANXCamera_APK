.class Landroid/net/ConnectivityManager$5;
.super Landroid/os/ResultReceiver;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager;->getLatestTetheringEntitlementResult(IZLjava/util/concurrent/Executor;Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ConnectivityManager;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$listener:Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;)V
    .registers 5

    iput-object p1, p0, Landroid/net/ConnectivityManager$5;->this$0:Landroid/net/ConnectivityManager;

    iput-object p3, p0, Landroid/net/ConnectivityManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/net/ConnectivityManager$5;->val$listener:Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic lambda$onReceiveResult$0(Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;I)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;->onTetheringEntitlementResult(I)V

    return-void
.end method

.method static synthetic lambda$onReceiveResult$1(Ljava/util/concurrent/Executor;Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/net/-$$Lambda$ConnectivityManager$5$OMSqRWp-UPz6QSkiXvLAuEDgkhc;

    invoke-direct {v0, p1, p2}, Landroid/net/-$$Lambda$ConnectivityManager$5$OMSqRWp-UPz6QSkiXvLAuEDgkhc;-><init>(Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Landroid/net/ConnectivityManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/ConnectivityManager$5;->val$listener:Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;

    new-instance v2, Landroid/net/-$$Lambda$ConnectivityManager$5$KgnVAIsLrj_uzlbjjmtk8vq4TCc;

    invoke-direct {v2, v0, v1, p1}, Landroid/net/-$$Lambda$ConnectivityManager$5$KgnVAIsLrj_uzlbjjmtk8vq4TCc;-><init>(Ljava/util/concurrent/Executor;Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
