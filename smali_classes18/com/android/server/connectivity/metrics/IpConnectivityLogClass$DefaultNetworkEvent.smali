.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DefaultNetworkEvent"
.end annotation


# static fields
.field public static final DEFAULT_NETWORK_DURATION_MS:J = 0x10300000005L

.field public static final DISCONNECT:I = 0x3

.field public static final DUAL:I = 0x3

.field public static final FINAL_SCORE:J = 0x10300000008L

.field public static final INITIAL_SCORE:J = 0x10300000007L

.field public static final INVALIDATION:I = 0x2

.field public static final IPV4:I = 0x1

.field public static final IPV6:I = 0x2

.field public static final IP_SUPPORT:J = 0x10e00000009L

.field public static final NETWORK_ID:J = 0x10b00000001L

.field public static final NONE:I = 0x0

.field public static final NO_DEFAULT_NETWORK_DURATION_MS:J = 0x10300000006L

.field public static final OUTSCORED:I = 0x1

.field public static final PREVIOUS_DEFAULT_NETWORK_LINK_LAYER:J = 0x10e0000000aL

.field public static final PREVIOUS_NETWORK_ID:J = 0x10b00000002L

.field public static final PREVIOUS_NETWORK_IP_SUPPORT:J = 0x10e00000003L

.field public static final TRANSPORT_TYPES:J = 0x20500000004L

.field public static final UNKNOWN:I = 0x0

.field public static final VALIDATION_DURATION_MS:J = 0x1030000000bL


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->this$0:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
