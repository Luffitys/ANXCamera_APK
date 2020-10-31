.class public abstract Landroid/bluetooth/le/PeriodicAdvertisingCallback;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingCallback.java"


# static fields
.field public static final SYNC_NO_RESOURCES:I = 0x2

.field public static final SYNC_NO_RESPONSE:I = 0x1

.field public static final SYNC_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V
    .registers 2

    return-void
.end method

.method public onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V
    .registers 7

    return-void
.end method

.method public onSyncLost(I)V
    .registers 2

    return-void
.end method
