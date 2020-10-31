.class public final Landroid/service/controls/templates/TemperatureControlTemplate;
.super Landroid/service/controls/templates/ControlTemplate;
.source "TemperatureControlTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/templates/TemperatureControlTemplate$ModeFlag;,
        Landroid/service/controls/templates/TemperatureControlTemplate$Mode;
    }
.end annotation


# static fields
.field private static final ALL_FLAGS:I = 0x3e

.field public static final FLAG_MODE_COOL:I = 0x8

.field public static final FLAG_MODE_ECO:I = 0x20

.field public static final FLAG_MODE_HEAT:I = 0x4

.field public static final FLAG_MODE_HEAT_COOL:I = 0x10

.field public static final FLAG_MODE_OFF:I = 0x2

.field private static final KEY_CURRENT_ACTIVE_MODE:Ljava/lang/String; = "key_current_active_mode"

.field private static final KEY_CURRENT_MODE:Ljava/lang/String; = "key_current_mode"

.field private static final KEY_MODES:Ljava/lang/String; = "key_modes"

.field private static final KEY_TEMPLATE:Ljava/lang/String; = "key_template"

.field public static final MODE_COOL:I = 0x3

.field public static final MODE_ECO:I = 0x5

.field public static final MODE_HEAT:I = 0x2

.field public static final MODE_HEAT_COOL:I = 0x4

.field public static final MODE_OFF:I = 0x1

.field public static final MODE_UNKNOWN:I = 0x0

.field private static final NUM_MODES:I = 0x6

.field private static final TAG:Ljava/lang/String; = "ThermostatTemplate"

.field private static final TYPE:I = 0x7

.field private static final modeToFlag:[I


# instance fields
.field private final mCurrentActiveMode:I

.field private final mCurrentMode:I

.field private final mModes:I

.field private final mTemplate:Landroid/service/controls/templates/ControlTemplate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/service/controls/templates/TemperatureControlTemplate;->modeToFlag:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x2
        0x4
        0x8
        0x10
        0x20
    .end array-data
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_template"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/service/controls/templates/ControlTemplate;->createTemplateFromBundle(Landroid/os/Bundle;)Landroid/service/controls/templates/ControlTemplate;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mTemplate:Landroid/service/controls/templates/ControlTemplate;

    const-string v0, "key_current_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentMode:I

    const-string v0, "key_current_active_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentActiveMode:I

    const-string v0, "key_modes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mModes:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/service/controls/templates/ControlTemplate;III)V
    .registers 11

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mTemplate:Landroid/service/controls/templates/ControlTemplate;

    const/4 v0, 0x6

    const/4 v1, 0x0

    const-string v2, "ThermostatTemplate"

    if-ltz p3, :cond_14

    if-lt p3, v0, :cond_11

    goto :goto_14

    :cond_11
    iput p3, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentMode:I

    goto :goto_2a

    :cond_14
    :goto_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid current mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentMode:I

    :goto_2a
    if-ltz p4, :cond_32

    if-lt p4, v0, :cond_2f

    goto :goto_32

    :cond_2f
    iput p4, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentActiveMode:I

    goto :goto_48

    :cond_32
    :goto_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid current active mode:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentActiveMode:I

    :goto_48
    and-int/lit8 v0, p5, 0x3e

    iput v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mModes:I

    iget v1, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentMode:I

    const-string v2, " not supported in flag."

    const-string v3, "Mode "

    if-eqz v1, :cond_76

    sget-object v4, Landroid/service/controls/templates/TemperatureControlTemplate;->modeToFlag:[I

    aget v1, v4, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_5c

    goto :goto_76

    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    :goto_76
    iget v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentActiveMode:I

    if-eqz v0, :cond_9c

    sget-object v1, Landroid/service/controls/templates/TemperatureControlTemplate;->modeToFlag:[I

    aget v0, v1, v0

    iget v1, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mModes:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_84

    goto :goto_9c

    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9c
    :goto_9c
    return-void
.end method


# virtual methods
.method public getCurrentActiveMode()I
    .registers 2

    iget v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentActiveMode:I

    return v0
.end method

.method public getCurrentMode()I
    .registers 2

    iget v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentMode:I

    return v0
.end method

.method getDataBundle()Landroid/os/Bundle;
    .registers 4

    invoke-super {p0}, Landroid/service/controls/templates/ControlTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mTemplate:Landroid/service/controls/templates/ControlTemplate;

    invoke-virtual {v1}, Landroid/service/controls/templates/ControlTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_template"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget v1, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentMode:I

    const-string v2, "key_current_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mCurrentActiveMode:I

    const-string v2, "key_current_active_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mModes:I

    const-string v2, "key_modes"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getModes()I
    .registers 2

    iget v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mModes:I

    return v0
.end method

.method public getTemplate()Landroid/service/controls/templates/ControlTemplate;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/templates/TemperatureControlTemplate;->mTemplate:Landroid/service/controls/templates/ControlTemplate;

    return-object v0
.end method

.method public getTemplateType()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method
