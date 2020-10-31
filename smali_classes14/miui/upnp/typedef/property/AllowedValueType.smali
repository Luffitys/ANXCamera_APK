.class public final enum Lmiui/upnp/typedef/property/AllowedValueType;
.super Ljava/lang/Enum;
.source "AllowedValueType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/upnp/typedef/property/AllowedValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/upnp/typedef/property/AllowedValueType;

.field public static final enum ANY:Lmiui/upnp/typedef/property/AllowedValueType;

.field public static final enum LIST:Lmiui/upnp/typedef/property/AllowedValueType;

.field public static final enum RANGE:Lmiui/upnp/typedef/property/AllowedValueType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lmiui/upnp/typedef/property/AllowedValueType;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/property/AllowedValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    new-instance v0, Lmiui/upnp/typedef/property/AllowedValueType;

    const-string v1, "LIST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/upnp/typedef/property/AllowedValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->LIST:Lmiui/upnp/typedef/property/AllowedValueType;

    new-instance v0, Lmiui/upnp/typedef/property/AllowedValueType;

    const-string v1, "RANGE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/upnp/typedef/property/AllowedValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->RANGE:Lmiui/upnp/typedef/property/AllowedValueType;

    const/4 v1, 0x3

    new-array v1, v1, [Lmiui/upnp/typedef/property/AllowedValueType;

    sget-object v5, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    aput-object v5, v1, v2

    sget-object v2, Lmiui/upnp/typedef/property/AllowedValueType;->LIST:Lmiui/upnp/typedef/property/AllowedValueType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lmiui/upnp/typedef/property/AllowedValueType;->$VALUES:[Lmiui/upnp/typedef/property/AllowedValueType;

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

.method public static retrieveType(I)Lmiui/upnp/typedef/property/AllowedValueType;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0

    :cond_b
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->RANGE:Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0

    :cond_e
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->LIST:Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0

    :cond_11
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/upnp/typedef/property/AllowedValueType;
    .registers 2

    const-class v0, Lmiui/upnp/typedef/property/AllowedValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0
.end method

.method public static values()[Lmiui/upnp/typedef/property/AllowedValueType;
    .registers 1

    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->$VALUES:[Lmiui/upnp/typedef/property/AllowedValueType;

    invoke-virtual {v0}, [Lmiui/upnp/typedef/property/AllowedValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .registers 4

    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType$1;->$SwitchMap$miui$upnp$typedef$property$AllowedValueType:[I

    invoke-virtual {p0}, Lmiui/upnp/typedef/property/AllowedValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    const/4 v2, 0x3

    if-eq v0, v2, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    return v1

    :cond_11
    const/4 v0, 0x1

    return v0
.end method
