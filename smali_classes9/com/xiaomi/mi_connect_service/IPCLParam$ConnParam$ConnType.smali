.class public final enum Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

.field public static final enum UNRECOGNIZED:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

.field public static final enum WIFI_P2P_GC:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

.field public static final WIFI_P2P_GC_VALUE:I = 0x1

.field public static final enum WIFI_P2P_GO:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

.field public static final WIFI_P2P_GO_VALUE:I = 0x0

.field public static final enum WIFI_SOFTAP:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

.field public static final WIFI_SOFTAP_VALUE:I = 0x2

.field public static final enum WIFI_STATION:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

.field public static final WIFI_STATION_VALUE:I = 0x3

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    const-string v1, "WIFI_P2P_GO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->WIFI_P2P_GO:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    new-instance v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    const-string v1, "WIFI_P2P_GC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->WIFI_P2P_GC:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    new-instance v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    const-string v1, "WIFI_SOFTAP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->WIFI_SOFTAP:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    new-instance v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    const-string v1, "WIFI_STATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->WIFI_STATION:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    new-instance v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    const-string v1, "UNRECOGNIZED"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->UNRECOGNIZED:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    sget-object v7, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->WIFI_P2P_GO:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    aput-object v7, v1, v2

    sget-object v2, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->WIFI_P2P_GC:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->WIFI_SOFTAP:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->WIFI_STATION:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->$VALUES:[Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    new-instance v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType$1;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType$1;-><init>()V

    sput-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->WIFI_STATION:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->WIFI_SOFTAP:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->WIFI_P2P_GC:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->WIFI_P2P_GO:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType$ConnTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->forNumber(I)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;
    .locals 1

    const-class v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->$VALUES:[Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    invoke-virtual {v0}, [Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->UNRECOGNIZED:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    if-eq p0, v0, :cond_0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->value:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
