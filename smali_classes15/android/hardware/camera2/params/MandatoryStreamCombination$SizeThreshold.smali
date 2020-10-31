.class final enum Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;
.super Ljava/lang/Enum;
.source "MandatoryStreamCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MandatoryStreamCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SizeThreshold"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string v1, "VGA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string v1, "PREVIEW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string v1, "RECORD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string v1, "MAXIMUM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string/jumbo v1, "s720p"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string/jumbo v1, "s1440p"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    aput-object v8, v1, v2

    sget-object v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    aput-object v2, v1, v4

    sget-object v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    aput-object v2, v1, v5

    sget-object v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->$VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

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

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;
    .registers 2

    const-class v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    return-object v0
.end method

.method public static values()[Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->$VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v0}, [Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    return-object v0
.end method
