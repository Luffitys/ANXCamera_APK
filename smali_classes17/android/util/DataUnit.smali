.class public enum Landroid/util/DataUnit;
.super Ljava/lang/Enum;
.source "DataUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/util/DataUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/util/DataUnit;

.field public static final enum GIBIBYTES:Landroid/util/DataUnit;

.field public static final enum GIGABYTES:Landroid/util/DataUnit;

.field public static final enum KIBIBYTES:Landroid/util/DataUnit;

.field public static final enum KILOBYTES:Landroid/util/DataUnit;

.field public static final enum MEBIBYTES:Landroid/util/DataUnit;

.field public static final enum MEGABYTES:Landroid/util/DataUnit;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Landroid/util/DataUnit$1;

    const-string v1, "KILOBYTES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/DataUnit$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/DataUnit;->KILOBYTES:Landroid/util/DataUnit;

    new-instance v0, Landroid/util/DataUnit$2;

    const-string v1, "MEGABYTES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/util/DataUnit$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/DataUnit;->MEGABYTES:Landroid/util/DataUnit;

    new-instance v0, Landroid/util/DataUnit$3;

    const-string v1, "GIGABYTES"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/util/DataUnit$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/DataUnit;->GIGABYTES:Landroid/util/DataUnit;

    new-instance v0, Landroid/util/DataUnit$4;

    const-string v1, "KIBIBYTES"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/util/DataUnit$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/DataUnit;->KIBIBYTES:Landroid/util/DataUnit;

    new-instance v0, Landroid/util/DataUnit$5;

    const-string v1, "MEBIBYTES"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroid/util/DataUnit$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    new-instance v0, Landroid/util/DataUnit$6;

    const-string v1, "GIBIBYTES"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroid/util/DataUnit$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/util/DataUnit;

    sget-object v8, Landroid/util/DataUnit;->KILOBYTES:Landroid/util/DataUnit;

    aput-object v8, v1, v2

    sget-object v2, Landroid/util/DataUnit;->MEGABYTES:Landroid/util/DataUnit;

    aput-object v2, v1, v3

    sget-object v2, Landroid/util/DataUnit;->GIGABYTES:Landroid/util/DataUnit;

    aput-object v2, v1, v4

    sget-object v2, Landroid/util/DataUnit;->KIBIBYTES:Landroid/util/DataUnit;

    aput-object v2, v1, v5

    sget-object v2, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Landroid/util/DataUnit;->$VALUES:[Landroid/util/DataUnit;

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

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/util/DataUnit$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/util/DataUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/DataUnit;
    .registers 2

    const-class v0, Landroid/util/DataUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/DataUnit;

    return-object v0
.end method

.method public static values()[Landroid/util/DataUnit;
    .registers 1

    sget-object v0, Landroid/util/DataUnit;->$VALUES:[Landroid/util/DataUnit;

    invoke-virtual {v0}, [Landroid/util/DataUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/DataUnit;

    return-object v0
.end method


# virtual methods
.method public toBytes(J)J
    .registers 4

    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method
