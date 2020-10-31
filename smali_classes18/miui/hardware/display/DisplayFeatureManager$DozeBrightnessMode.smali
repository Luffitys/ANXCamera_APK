.class final enum Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;
.super Ljava/lang/Enum;
.source "DisplayFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/display/DisplayFeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DozeBrightnessMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

.field public static final enum DOZE_BRIGHTNESS_HBM:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

.field public static final enum DOZE_BRIGHTNESS_LBM:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

.field public static final enum DOZE_TO_NORMAL:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    const-string v1, "DOZE_TO_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->DOZE_TO_NORMAL:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    new-instance v0, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    const-string v1, "DOZE_BRIGHTNESS_HBM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->DOZE_BRIGHTNESS_HBM:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    new-instance v0, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    const-string v1, "DOZE_BRIGHTNESS_LBM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->DOZE_BRIGHTNESS_LBM:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    const/4 v1, 0x3

    new-array v1, v1, [Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    sget-object v5, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->DOZE_TO_NORMAL:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    aput-object v5, v1, v2

    sget-object v2, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->DOZE_BRIGHTNESS_HBM:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->$VALUES:[Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;
    .registers 2

    const-class v0, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    return-object v0
.end method

.method public static values()[Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;
    .registers 1

    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->$VALUES:[Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    invoke-virtual {v0}, [Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    return-object v0
.end method
