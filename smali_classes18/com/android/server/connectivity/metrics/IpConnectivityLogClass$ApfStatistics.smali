.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ApfStatistics"
.end annotation


# static fields
.field public static final DROPPED_RAS:J = 0x10500000005L

.field public static final DURATION_MS:J = 0x10300000001L

.field public static final HARDWARE_COUNTERS:J = 0x20b0000000eL

.field public static final MATCHING_RAS:J = 0x10500000003L

.field public static final MAX_PROGRAM_SIZE:J = 0x10500000009L

.field public static final PARSE_ERRORS:J = 0x10500000007L

.field public static final PROGRAM_UPDATES:J = 0x10500000008L

.field public static final PROGRAM_UPDATES_ALL:J = 0x1050000000aL

.field public static final PROGRAM_UPDATES_ALLOWING_MULTICAST:J = 0x1050000000bL

.field public static final RECEIVED_RAS:J = 0x10500000002L

.field public static final TOTAL_PACKET_DROPPED:J = 0x1050000000dL

.field public static final TOTAL_PACKET_PROCESSED:J = 0x1050000000cL

.field public static final ZERO_LIFETIME_RAS:J = 0x10500000006L


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
