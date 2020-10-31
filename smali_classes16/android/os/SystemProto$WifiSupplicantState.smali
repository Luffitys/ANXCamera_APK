.class public final Landroid/os/SystemProto$WifiSupplicantState;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WifiSupplicantState"
.end annotation


# static fields
.field public static final ASSOCIATED:I = 0x7

.field public static final ASSOCIATING:I = 0x6

.field public static final AUTHENTICATING:I = 0x5

.field public static final COMPLETED:I = 0xa

.field public static final DISCONNECTED:I = 0x1

.field public static final DORMANT:I = 0xb

.field public static final FOUR_WAY_HANDSHAKE:I = 0x8

.field public static final GROUP_HANDSHAKE:I = 0x9

.field public static final INACTIVE:I = 0x3

.field public static final INTERFACE_DISABLED:I = 0x2

.field public static final INVALID:I = 0x0

.field public static final NAME:J = 0x10e00000001L

.field public static final SCANNING:I = 0x4

.field public static final TOTAL:J = 0x10b00000002L

.field public static final UNINITIALIZED:I = 0xc


# instance fields
.field final synthetic this$0:Landroid/os/SystemProto;


# direct methods
.method public constructor <init>(Landroid/os/SystemProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemProto$WifiSupplicantState;->this$0:Landroid/os/SystemProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
