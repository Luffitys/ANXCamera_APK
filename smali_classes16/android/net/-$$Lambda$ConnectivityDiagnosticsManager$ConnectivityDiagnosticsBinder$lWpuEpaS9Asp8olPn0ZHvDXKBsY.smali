.class public final synthetic Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$lWpuEpaS9Asp8olPn0ZHvDXKBsY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;

.field public final synthetic f$1:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$lWpuEpaS9Asp8olPn0ZHvDXKBsY;->f$0:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;

    iput-object p2, p0, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$lWpuEpaS9Asp8olPn0ZHvDXKBsY;->f$1:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$lWpuEpaS9Asp8olPn0ZHvDXKBsY;->f$0:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;

    iget-object v1, p0, Landroid/net/-$$Lambda$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$lWpuEpaS9Asp8olPn0ZHvDXKBsY;->f$1:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->lambda$onConnectivityReportAvailable$0$ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V

    return-void
.end method
