.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IpConnectivityEvent"
.end annotation


# static fields
.field public static final APF_PROGRAM_EVENT:J = 0x10b00000009L

.field public static final APF_STATISTICS:J = 0x10b0000000aL

.field public static final CONNECT_STATISTICS:J = 0x10b0000000eL

.field public static final DEFAULT_NETWORK_EVENT:J = 0x10b00000002L

.field public static final DHCP_EVENT:J = 0x10b00000006L

.field public static final DNS_LATENCIES:J = 0x10b0000000dL

.field public static final DNS_LOOKUP_BATCH:J = 0x10b00000005L

.field public static final IF_NAME:J = 0x10900000011L

.field public static final IP_PROVISIONING_EVENT:J = 0x10b00000007L

.field public static final IP_REACHABILITY_EVENT:J = 0x10b00000003L

.field public static final LINK_LAYER:J = 0x10e0000000fL

.field public static final NETWORK_EVENT:J = 0x10b00000004L

.field public static final NETWORK_ID:J = 0x10500000010L

.field public static final NETWORK_STATS:J = 0x10b00000013L

.field public static final RA_EVENT:J = 0x10b0000000bL

.field public static final TIME_MS:J = 0x10300000001L

.field public static final TRANSPORTS:J = 0x10300000012L

.field public static final VALIDATION_PROBE_EVENT:J = 0x10b00000008L

.field public static final WAKEUP_STATS:J = 0x10b00000014L


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
