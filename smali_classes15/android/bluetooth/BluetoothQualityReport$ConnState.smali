.class final enum Landroid/bluetooth/BluetoothQualityReport$ConnState;
.super Ljava/lang/Enum;
.source "BluetoothQualityReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConnState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/bluetooth/BluetoothQualityReport$ConnState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_ANT_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_DISCONNECT_PENDING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_HOLD:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_LE_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_LOCAL_LOOPBACK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_PAGE_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_PAGING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_PARK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_PARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_RECONNECTING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_SEMI_CONN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_SNIFF_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_SNIFF_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_SNIFF_MASTER_TRANSITION:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_TRIGGER_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_UNPARK_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_UNPARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field private static sAllStates:[Landroid/bluetooth/BluetoothQualityReport$ConnState;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_ACTIVE"

    const/4 v3, 0x1

    const/16 v4, 0x81

    invoke-direct {v0, v1, v3, v4}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_HOLD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_HOLD:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_SNIFF_IDLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_SNIFF_ACTIVE"

    const/4 v6, 0x4

    const/16 v7, 0x84

    invoke-direct {v0, v1, v6, v7}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_SNIFF_MASTER_TRANSITION"

    const/4 v7, 0x5

    const/16 v8, 0x85

    invoke-direct {v0, v1, v7, v8}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_MASTER_TRANSITION:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_PARK"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PARK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_PARK_PEND"

    const/4 v9, 0x7

    const/16 v10, 0x47

    invoke-direct {v0, v1, v9, v10}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_UNPARK_PEND"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_UNPARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_UNPARK_ACTIVE"

    const/16 v11, 0x9

    const/16 v12, 0x89

    invoke-direct {v0, v1, v11, v12}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_UNPARK_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_DISCONNECT_PENDING"

    const/16 v12, 0xa

    const/16 v13, 0x4a

    invoke-direct {v0, v1, v12, v13}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_DISCONNECT_PENDING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_PAGING"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PAGING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_PAGE_SCAN"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PAGE_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_LOCAL_LOOPBACK"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_LOCAL_LOOPBACK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_LE_ACTIVE"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_LE_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_ANT_ACTIVE"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v15}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_ANT_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_TRIGGER_SCAN"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v15}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_TRIGGER_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_RECONNECTING"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v15}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_RECONNECTING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_SEMI_CONN"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v15}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SEMI_CONN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v1, 0x13

    new-array v1, v1, [Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v16, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v16, v1, v2

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v2, v1, v3

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_HOLD:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v2, v1, v4

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v2, v1, v5

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v2, v1, v6

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_MASTER_TRANSITION:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v2, v1, v7

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PARK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v2, v1, v8

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v2, v1, v9

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_UNPARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v2, v1, v10

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_UNPARK_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v2, v1, v11

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_DISCONNECT_PENDING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v2, v1, v12

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PAGING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v2, v1, v13

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PAGE_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v2, v1, v14

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_LOCAL_LOOPBACK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_LE_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_ANT_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_TRIGGER_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_RECONNECTING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport$ConnState;->values()[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->sAllStates:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->mValue:I

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .registers 6

    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->sAllStates:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    iget v4, v3, Landroid/bluetooth/BluetoothQualityReport$ConnState;->mValue:I

    if-ne v4, p0, :cond_11

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothQualityReport$ConnState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    const-string v0, "INVALID"

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothQualityReport$ConnState;
    .registers 2

    const-class v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    return-object v0
.end method

.method public static values()[Landroid/bluetooth/BluetoothQualityReport$ConnState;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    invoke-virtual {v0}, [Landroid/bluetooth/BluetoothQualityReport$ConnState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothQualityReport$ConnState;

    return-object v0
.end method
