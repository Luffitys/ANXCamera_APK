.class public Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;
.super Landroid/net/IConnectivityDiagnosticsCallback$Stub;
.source "ConnectivityDiagnosticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityDiagnosticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectivityDiagnosticsBinder"
.end annotation


# instance fields
.field private final mCb:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->mCb:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    iput-object p2, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onConnectivityReportAvailable$0$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .registers 3

    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->mCb:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;->onConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V

    return-void
.end method

.method public synthetic lambda$onConnectivityReportAvailable$1$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$lWpuEpaS9Asp8olPn0ZHvDXKBsY;

    invoke-direct {v1, p0, p1}, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$lWpuEpaS9Asp8olPn0ZHvDXKBsY;-><init>(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onDataStallSuspected$2$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .registers 3

    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->mCb:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;->onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V

    return-void
.end method

.method public synthetic lambda$onDataStallSuspected$3$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$Z0TUq7QTgpwW5qFuK7Z3dk74jB0;

    invoke-direct {v1, p0, p1}, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$Z0TUq7QTgpwW5qFuK7Z3dk74jB0;-><init>(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onNetworkConnectivityReported$4$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder(Landroid/net/Network;Z)V
    .registers 4

    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->mCb:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    invoke-virtual {v0, p1, p2}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;->onNetworkConnectivityReported(Landroid/net/Network;Z)V

    return-void
.end method

.method public synthetic lambda$onNetworkConnectivityReported$5$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder(Landroid/net/Network;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$5egkMKdBjwQ1BLrH78YD5OHumY0;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$5egkMKdBjwQ1BLrH78YD5OHumY0;-><init>(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/Network;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .registers 3

    new-instance v0, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$FGvmuK56MYkuwwlBPZ9M93t2UqY;

    invoke-direct {v0, p0, p1}, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$FGvmuK56MYkuwwlBPZ9M93t2UqY;-><init>(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .registers 3

    new-instance v0, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$oQ8vg4N13Yt69vO4YyGcJmSjA-U;

    invoke-direct {v0, p0, p1}, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$oQ8vg4N13Yt69vO4YyGcJmSjA-U;-><init>(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onNetworkConnectivityReported(Landroid/net/Network;Z)V
    .registers 4

    new-instance v0, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$-i7Xc4PglBiVdW9VXLaiY3i_ufk;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$-i7Xc4PglBiVdW9VXLaiY3i_ufk;-><init>(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/Network;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
