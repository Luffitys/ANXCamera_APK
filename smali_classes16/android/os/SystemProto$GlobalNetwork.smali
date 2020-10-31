.class public final Landroid/os/SystemProto$GlobalNetwork;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GlobalNetwork"
.end annotation


# static fields
.field public static final BT_BYTES_RX:J = 0x10300000009L

.field public static final BT_BYTES_TX:J = 0x1030000000aL

.field public static final MOBILE_BYTES_RX:J = 0x10300000001L

.field public static final MOBILE_BYTES_TX:J = 0x10300000002L

.field public static final MOBILE_PACKETS_RX:J = 0x10300000005L

.field public static final MOBILE_PACKETS_TX:J = 0x10300000006L

.field public static final WIFI_BYTES_RX:J = 0x10300000003L

.field public static final WIFI_BYTES_TX:J = 0x10300000004L

.field public static final WIFI_PACKETS_RX:J = 0x10300000007L

.field public static final WIFI_PACKETS_TX:J = 0x10300000008L


# instance fields
.field final synthetic this$0:Landroid/os/SystemProto;


# direct methods
.method public constructor <init>(Landroid/os/SystemProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemProto$GlobalNetwork;->this$0:Landroid/os/SystemProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
