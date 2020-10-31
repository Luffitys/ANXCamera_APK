.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ValidationProbeEvent"
.end annotation


# static fields
.field public static final LATENCY_MS:J = 0x10500000002L

.field public static final NETWORK_ID:J = 0x10b00000001L

.field public static final PROBE_RESULT:J = 0x10500000004L

.field public static final PROBE_TYPE:J = 0x10500000003L


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
