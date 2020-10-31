.class public final synthetic Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$oQ8vg4N13Yt69vO4YyGcJmSjA-U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;

.field public final synthetic f$1:Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$oQ8vg4N13Yt69vO4YyGcJmSjA-U;->f$0:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;

    iput-object p2, p0, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$oQ8vg4N13Yt69vO4YyGcJmSjA-U;->f$1:Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget-object v0, p0, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$oQ8vg4N13Yt69vO4YyGcJmSjA-U;->f$0:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;

    iget-object v1, p0, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$oQ8vg4N13Yt69vO4YyGcJmSjA-U;->f$1:Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->lambda$onDataStallSuspected$3$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V

    return-void
.end method
