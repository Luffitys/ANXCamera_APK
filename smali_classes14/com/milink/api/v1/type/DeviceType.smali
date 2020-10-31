.class public final enum Lcom/milink/api/v1/type/DeviceType;
.super Ljava/lang/Enum;
.source "DeviceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/milink/api/v1/type/DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/milink/api/v1/type/DeviceType;

.field public static final AIRKAN:Ljava/lang/String; = "airkan"

.field public static final AIRPLAY:Ljava/lang/String; = "airplay"

.field public static final AIRTUNES:Ljava/lang/String; = "airtunes"

.field public static final BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final enum Bluetooth:Lcom/milink/api/v1/type/DeviceType;

.field public static final DLNA_SPEAKER:Ljava/lang/String; = "dlna.speaker"

.field public static final DLNA_TV:Ljava/lang/String; = "dlna.tv"

.field public static final LELINK:Ljava/lang/String; = "lelink"

.field public static final enum Lelink:Lcom/milink/api/v1/type/DeviceType;

.field public static final MIRACAST:Ljava/lang/String; = "miracast"

.field public static final enum Miracast:Lcom/milink/api/v1/type/DeviceType;

.field public static final enum Speaker:Lcom/milink/api/v1/type/DeviceType;

.field public static final enum TV:Lcom/milink/api/v1/type/DeviceType;

.field public static final enum Unknown:Lcom/milink/api/v1/type/DeviceType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/milink/api/v1/type/DeviceType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/milink/api/v1/type/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/DeviceType;->Unknown:Lcom/milink/api/v1/type/DeviceType;

    new-instance v0, Lcom/milink/api/v1/type/DeviceType;

    const-string v1, "TV"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/milink/api/v1/type/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/DeviceType;->TV:Lcom/milink/api/v1/type/DeviceType;

    new-instance v0, Lcom/milink/api/v1/type/DeviceType;

    const-string v1, "Speaker"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/milink/api/v1/type/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/DeviceType;->Speaker:Lcom/milink/api/v1/type/DeviceType;

    new-instance v0, Lcom/milink/api/v1/type/DeviceType;

    const-string v1, "Miracast"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/milink/api/v1/type/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/DeviceType;->Miracast:Lcom/milink/api/v1/type/DeviceType;

    new-instance v0, Lcom/milink/api/v1/type/DeviceType;

    const-string v1, "Lelink"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/milink/api/v1/type/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/DeviceType;->Lelink:Lcom/milink/api/v1/type/DeviceType;

    new-instance v0, Lcom/milink/api/v1/type/DeviceType;

    const-string v1, "Bluetooth"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/milink/api/v1/type/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/DeviceType;->Bluetooth:Lcom/milink/api/v1/type/DeviceType;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/milink/api/v1/type/DeviceType;

    sget-object v8, Lcom/milink/api/v1/type/DeviceType;->Unknown:Lcom/milink/api/v1/type/DeviceType;

    aput-object v8, v1, v2

    sget-object v2, Lcom/milink/api/v1/type/DeviceType;->TV:Lcom/milink/api/v1/type/DeviceType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/milink/api/v1/type/DeviceType;->Speaker:Lcom/milink/api/v1/type/DeviceType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/milink/api/v1/type/DeviceType;->Miracast:Lcom/milink/api/v1/type/DeviceType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/milink/api/v1/type/DeviceType;->Lelink:Lcom/milink/api/v1/type/DeviceType;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/milink/api/v1/type/DeviceType;->$VALUES:[Lcom/milink/api/v1/type/DeviceType;

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

.method public static create(Ljava/lang/String;)Lcom/milink/api/v1/type/DeviceType;
    .registers 2

    const-string v0, "airkan"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->TV:Lcom/milink/api/v1/type/DeviceType;

    return-object v0

    :cond_b
    const-string v0, "airplay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->TV:Lcom/milink/api/v1/type/DeviceType;

    return-object v0

    :cond_16
    const-string v0, "airtunes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->Speaker:Lcom/milink/api/v1/type/DeviceType;

    return-object v0

    :cond_21
    const-string v0, "dlna.tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->TV:Lcom/milink/api/v1/type/DeviceType;

    return-object v0

    :cond_2c
    const-string v0, "dlna.speaker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->Speaker:Lcom/milink/api/v1/type/DeviceType;

    return-object v0

    :cond_37
    const-string v0, "miracast"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->Miracast:Lcom/milink/api/v1/type/DeviceType;

    return-object v0

    :cond_42
    const-string v0, "lelink"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->Lelink:Lcom/milink/api/v1/type/DeviceType;

    return-object v0

    :cond_4d
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->Bluetooth:Lcom/milink/api/v1/type/DeviceType;

    return-object v0

    :cond_58
    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->Unknown:Lcom/milink/api/v1/type/DeviceType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/milink/api/v1/type/DeviceType;
    .registers 2

    const-class v0, Lcom/milink/api/v1/type/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/milink/api/v1/type/DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/milink/api/v1/type/DeviceType;
    .registers 1

    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->$VALUES:[Lcom/milink/api/v1/type/DeviceType;

    invoke-virtual {v0}, [Lcom/milink/api/v1/type/DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/milink/api/v1/type/DeviceType;

    return-object v0
.end method
