.class public final synthetic Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$-i7Xc4PglBiVdW9VXLaiY3i_ufk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;

.field public final synthetic f$1:Landroid/net/Network;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/Network;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$-i7Xc4PglBiVdW9VXLaiY3i_ufk;->f$0:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;

    iput-object p2, p0, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$-i7Xc4PglBiVdW9VXLaiY3i_ufk;->f$1:Landroid/net/Network;

    iput-boolean p3, p0, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$-i7Xc4PglBiVdW9VXLaiY3i_ufk;->f$2:Z

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$-i7Xc4PglBiVdW9VXLaiY3i_ufk;->f$0:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;

    iget-object v1, p0, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$-i7Xc4PglBiVdW9VXLaiY3i_ufk;->f$1:Landroid/net/Network;

    iget-boolean v2, p0, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$-i7Xc4PglBiVdW9VXLaiY3i_ufk;->f$2:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->lambda$onNetworkConnectivityReported$5$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder(Landroid/net/Network;Z)V

    return-void
.end method
