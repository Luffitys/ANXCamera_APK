.class public final Landroid/os/SystemProto$WifiState;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WifiState"
.end annotation


# static fields
.field public static final NAME:J = 0x10e00000001L

.field public static final OFF:I = 0x0

.field public static final OFF_SCANNING:I = 0x1

.field public static final ON_CONNECTED_P2P:I = 0x5

.field public static final ON_CONNECTED_STA:I = 0x4

.field public static final ON_CONNECTED_STA_P2P:I = 0x6

.field public static final ON_DISCONNECTED:I = 0x3

.field public static final ON_NO_NETWORKS:I = 0x2

.field public static final SOFT_AP:I = 0x7

.field public static final TOTAL:J = 0x10b00000002L


# instance fields
.field final synthetic this$0:Landroid/os/SystemProto;


# direct methods
.method public constructor <init>(Landroid/os/SystemProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemProto$WifiState;->this$0:Landroid/os/SystemProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
