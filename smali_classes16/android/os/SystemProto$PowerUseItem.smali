.class public final Landroid/os/SystemProto$PowerUseItem;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PowerUseItem"
.end annotation


# static fields
.field public static final AMBIENT_DISPLAY:I = 0xd

.field public static final BLUETOOTH:I = 0x5

.field public static final CAMERA:I = 0xb

.field public static final CELL:I = 0x2

.field public static final COMPUTED_POWER_MAH:J = 0x10100000003L

.field public static final FLASHLIGHT:I = 0x6

.field public static final IDLE:I = 0x1

.field public static final MEMORY:I = 0xc

.field public static final NAME:J = 0x10e00000001L

.field public static final OVERCOUNTED:I = 0xa

.field public static final PHONE:I = 0x3

.field public static final PROPORTIONAL_SMEAR_MAH:J = 0x10100000006L

.field public static final SCREEN:I = 0x7

.field public static final SCREEN_POWER_MAH:J = 0x10100000005L

.field public static final SHOULD_HIDE:J = 0x10800000004L

.field public static final UID:J = 0x10500000002L

.field public static final UNACCOUNTED:I = 0x9

.field public static final UNKNOWN_SIPPER:I = 0x0

.field public static final USER:I = 0x8

.field public static final WIFI:I = 0x4


# instance fields
.field final synthetic this$0:Landroid/os/SystemProto;


# direct methods
.method public constructor <init>(Landroid/os/SystemProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemProto$PowerUseItem;->this$0:Landroid/os/SystemProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
