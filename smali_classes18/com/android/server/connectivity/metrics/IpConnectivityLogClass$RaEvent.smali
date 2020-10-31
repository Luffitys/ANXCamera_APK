.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RaEvent"
.end annotation


# static fields
.field public static final DNSSL_LIFETIME:J = 0x10300000006L

.field public static final PREFIX_PREFERRED_LIFETIME:J = 0x10300000003L

.field public static final PREFIX_VALID_LIFETIME:J = 0x10300000002L

.field public static final RDNSS_LIFETIME:J = 0x10300000005L

.field public static final ROUTER_LIFETIME:J = 0x10300000001L

.field public static final ROUTE_INFO_LIFETIME:J = 0x10300000004L


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
