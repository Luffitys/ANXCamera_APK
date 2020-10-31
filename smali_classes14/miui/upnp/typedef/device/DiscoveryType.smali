.class public final enum Lmiui/upnp/typedef/device/DiscoveryType;
.super Ljava/lang/Enum;
.source "DiscoveryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/upnp/typedef/device/DiscoveryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum AIRTUNES:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum AP:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum BLE:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum BLUETOOTH:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum LAN:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum LOCAL:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum UNDEFINED:Lmiui/upnp/typedef/device/DiscoveryType;


# instance fields
.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    const-string v3, "undefined"

    invoke-direct {v0, v1, v2, v3}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->UNDEFINED:Lmiui/upnp/typedef/device/DiscoveryType;

    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const-string v1, "LOCAL"

    const/4 v3, 0x1

    const-string v4, "local"

    invoke-direct {v0, v1, v3, v4}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->LOCAL:Lmiui/upnp/typedef/device/DiscoveryType;

    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const-string v1, "LAN"

    const/4 v4, 0x2

    const-string v5, "lan"

    invoke-direct {v0, v1, v4, v5}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->LAN:Lmiui/upnp/typedef/device/DiscoveryType;

    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const-string v1, "BLUETOOTH"

    const/4 v5, 0x3

    const-string v6, "bluetooth"

    invoke-direct {v0, v1, v5, v6}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->BLUETOOTH:Lmiui/upnp/typedef/device/DiscoveryType;

    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const-string v1, "BLE"

    const/4 v6, 0x4

    const-string v7, "ble"

    invoke-direct {v0, v1, v6, v7}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->BLE:Lmiui/upnp/typedef/device/DiscoveryType;

    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const-string v1, "AP"

    const/4 v7, 0x5

    const-string v8, "ap"

    invoke-direct {v0, v1, v7, v8}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->AP:Lmiui/upnp/typedef/device/DiscoveryType;

    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const-string v1, "AIRTUNES"

    const/4 v8, 0x6

    const-string v9, "airtunes"

    invoke-direct {v0, v1, v8, v9}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->AIRTUNES:Lmiui/upnp/typedef/device/DiscoveryType;

    const/4 v1, 0x7

    new-array v1, v1, [Lmiui/upnp/typedef/device/DiscoveryType;

    sget-object v9, Lmiui/upnp/typedef/device/DiscoveryType;->UNDEFINED:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v9, v1, v2

    sget-object v2, Lmiui/upnp/typedef/device/DiscoveryType;->LOCAL:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/upnp/typedef/device/DiscoveryType;->LAN:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v2, v1, v4

    sget-object v2, Lmiui/upnp/typedef/device/DiscoveryType;->BLUETOOTH:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v2, v1, v5

    sget-object v2, Lmiui/upnp/typedef/device/DiscoveryType;->BLE:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v2, v1, v6

    sget-object v2, Lmiui/upnp/typedef/device/DiscoveryType;->AP:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lmiui/upnp/typedef/device/DiscoveryType;->$VALUES:[Lmiui/upnp/typedef/device/DiscoveryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lmiui/upnp/typedef/device/DiscoveryType;->string:Ljava/lang/String;

    return-void
.end method

.method public static retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/device/DiscoveryType;
    .registers 6

    invoke-static {}, Lmiui/upnp/typedef/device/DiscoveryType;->values()[Lmiui/upnp/typedef/device/DiscoveryType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lmiui/upnp/typedef/device/DiscoveryType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    sget-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->UNDEFINED:Lmiui/upnp/typedef/device/DiscoveryType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/upnp/typedef/device/DiscoveryType;
    .registers 2

    const-class v0, Lmiui/upnp/typedef/device/DiscoveryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/device/DiscoveryType;

    return-object v0
.end method

.method public static values()[Lmiui/upnp/typedef/device/DiscoveryType;
    .registers 1

    sget-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->$VALUES:[Lmiui/upnp/typedef/device/DiscoveryType;

    invoke-virtual {v0}, [Lmiui/upnp/typedef/device/DiscoveryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/upnp/typedef/device/DiscoveryType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/device/DiscoveryType;->string:Ljava/lang/String;

    return-object v0
.end method
