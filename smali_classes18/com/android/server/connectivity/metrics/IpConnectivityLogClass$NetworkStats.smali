.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkStats;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NetworkStats"
.end annotation


# static fields
.field public static final DURATION_MS:J = 0x10300000001L

.field public static final EVER_VALIDATED:J = 0x10800000003L

.field public static final IP_SUPPORT:J = 0x10e00000002L

.field public static final NO_CONNECTIVITY_REPORTS:J = 0x10500000005L

.field public static final PORTAL_FOUND:J = 0x10800000004L

.field public static final VALIDATION_ATTEMPTS:J = 0x10500000006L

.field public static final VALIDATION_EVENTS:J = 0x20b00000007L

.field public static final VALIDATION_STATES:J = 0x20b00000008L


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkStats;->this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
