.class public final Landroid/os/UidProto$BluetoothMisc;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BluetoothMisc"
.end annotation


# static fields
.field public static final APPORTIONED_BLE_SCAN:J = 0x10b00000001L

.field public static final BACKGROUND_BLE_SCAN:J = 0x10b00000002L

.field public static final BACKGROUND_BLE_SCAN_RESULT_COUNT:J = 0x10500000006L

.field public static final BACKGROUND_UNOPTIMIZED_BLE_SCAN:J = 0x10b00000004L

.field public static final BLE_SCAN_RESULT_COUNT:J = 0x10500000005L

.field public static final UNOPTIMIZED_BLE_SCAN:J = 0x10b00000003L


# instance fields
.field final synthetic this$0:Landroid/os/UidProto;


# direct methods
.method public constructor <init>(Landroid/os/UidProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/UidProto$BluetoothMisc;->this$0:Landroid/os/UidProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
