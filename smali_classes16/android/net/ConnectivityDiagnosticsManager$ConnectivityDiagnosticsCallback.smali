.class public abstract Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;
.super Ljava/lang/Object;
.source "ConnectivityDiagnosticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityDiagnosticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConnectivityDiagnosticsCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .registers 2

    return-void
.end method

.method public onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .registers 2

    return-void
.end method

.method public onNetworkConnectivityReported(Landroid/net/Network;Z)V
    .registers 3

    return-void
.end method
