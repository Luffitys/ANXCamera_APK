.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DNSLookupBatch"
.end annotation


# static fields
.field public static final EVENT_TYPES:J = 0x20500000002L

.field public static final GETADDRINFO_ERRORS:J = 0x20b00000009L

.field public static final GETADDRINFO_ERROR_COUNT:J = 0x10300000007L

.field public static final GETADDRINFO_QUERY_COUNT:J = 0x10300000005L

.field public static final GETHOSTBYNAME_ERRORS:J = 0x20b0000000aL

.field public static final GETHOSTBYNAME_ERROR_COUNT:J = 0x10300000008L

.field public static final GETHOSTBYNAME_QUERY_COUNT:J = 0x10300000006L

.field public static final LATENCIES_MS:J = 0x20500000004L

.field public static final NETWORK_ID:J = 0x10b00000001L

.field public static final RETURN_CODES:J = 0x20500000003L


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
