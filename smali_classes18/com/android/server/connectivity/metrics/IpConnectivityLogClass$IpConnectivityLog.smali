.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IpConnectivityLog"
.end annotation


# static fields
.field public static final DROPPED_EVENTS:J = 0x10500000002L

.field public static final EVENTS:J = 0x20b00000001L

.field public static final VERSION:J = 0x10500000003L


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
