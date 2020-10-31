.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ApfProgramEvent"
.end annotation


# static fields
.field public static final CURRENT_RAS:J = 0x10500000003L

.field public static final DROP_MULTICAST:J = 0x10800000005L

.field public static final EFFECTIVE_LIFETIME:J = 0x10300000007L

.field public static final FILTERED_RAS:J = 0x10500000002L

.field public static final HAS_IPV4_ADDR:J = 0x10800000006L

.field public static final LIFETIME:J = 0x10300000001L

.field public static final PROGRAM_LENGTH:J = 0x10500000004L


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
