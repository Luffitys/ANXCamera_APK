.class final enum Landroid/bluetooth/BluetoothSocket$SocketState;
.super Ljava/lang/Enum;
.source "BluetoothSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SocketState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/bluetooth/BluetoothSocket$SocketState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/bluetooth/BluetoothSocket$SocketState;

.field public static final enum CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

.field public static final enum CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

.field public static final enum INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

.field public static final enum LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Landroid/bluetooth/BluetoothSocket$SocketState;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothSocket$SocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    new-instance v0, Landroid/bluetooth/BluetoothSocket$SocketState;

    const-string v1, "CONNECTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/bluetooth/BluetoothSocket$SocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    new-instance v0, Landroid/bluetooth/BluetoothSocket$SocketState;

    const-string v1, "LISTENING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/bluetooth/BluetoothSocket$SocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    new-instance v0, Landroid/bluetooth/BluetoothSocket$SocketState;

    const-string v1, "CLOSED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/bluetooth/BluetoothSocket$SocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v6, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    aput-object v6, v1, v2

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    aput-object v2, v1, v3

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->$VALUES:[Landroid/bluetooth/BluetoothSocket$SocketState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothSocket$SocketState;
    .registers 2

    const-class v0, Landroid/bluetooth/BluetoothSocket$SocketState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket$SocketState;

    return-object v0
.end method

.method public static values()[Landroid/bluetooth/BluetoothSocket$SocketState;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->$VALUES:[Landroid/bluetooth/BluetoothSocket$SocketState;

    invoke-virtual {v0}, [Landroid/bluetooth/BluetoothSocket$SocketState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothSocket$SocketState;

    return-object v0
.end method
