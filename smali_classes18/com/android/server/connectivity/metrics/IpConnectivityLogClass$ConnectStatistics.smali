.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConnectStatistics"
.end annotation


# static fields
.field public static final CONNECT_BLOCKING_COUNT:J = 0x10500000005L

.field public static final CONNECT_COUNT:J = 0x10500000001L

.field public static final ERRNOS_COUNTERS:J = 0x20b00000004L

.field public static final IPV6_ADDR_COUNT:J = 0x10500000002L

.field public static final LATENCIES_MS:J = 0x20500000003L

.field public static final NON_BLOCKING_LATENCIES_MS:J = 0x20500000006L


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
