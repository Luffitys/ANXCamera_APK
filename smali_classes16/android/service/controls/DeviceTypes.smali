.class public Landroid/service/controls/DeviceTypes;
.super Ljava/lang/Object;
.source "DeviceTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/DeviceTypes$DeviceType;
    }
.end annotation


# static fields
.field private static final NUM_CONCRETE_TYPES:I = 0x34

.field private static final NUM_GENERIC_TYPES:I = 0x7

.field public static final TYPE_AC_HEATER:I = 0x1

.field public static final TYPE_AC_UNIT:I = 0x2

.field public static final TYPE_AIR_FRESHENER:I = 0x3

.field public static final TYPE_AIR_PURIFIER:I = 0x4

.field public static final TYPE_AWNING:I = 0x21

.field public static final TYPE_BLINDS:I = 0x22

.field public static final TYPE_CAMERA:I = 0x32

.field public static final TYPE_CLOSET:I = 0x23

.field public static final TYPE_COFFEE_MAKER:I = 0x5

.field public static final TYPE_CURTAIN:I = 0x24

.field public static final TYPE_DEHUMIDIFIER:I = 0x6

.field public static final TYPE_DISHWASHER:I = 0x18

.field public static final TYPE_DISPLAY:I = 0x7

.field public static final TYPE_DOOR:I = 0x25

.field public static final TYPE_DOORBELL:I = 0x33

.field public static final TYPE_DRAWER:I = 0x26

.field public static final TYPE_DRYER:I = 0x19

.field public static final TYPE_FAN:I = 0x8

.field public static final TYPE_GARAGE:I = 0x27

.field public static final TYPE_GATE:I = 0x28

.field public static final TYPE_GENERIC_ARM_DISARM:I = -0x5

.field public static final TYPE_GENERIC_LOCK_UNLOCK:I = -0x4

.field public static final TYPE_GENERIC_ON_OFF:I = -0x1

.field public static final TYPE_GENERIC_OPEN_CLOSE:I = -0x3

.field public static final TYPE_GENERIC_START_STOP:I = -0x2

.field public static final TYPE_GENERIC_TEMP_SETTING:I = -0x6

.field public static final TYPE_GENERIC_VIEWSTREAM:I = -0x7

.field public static final TYPE_HEATER:I = 0x2f

.field public static final TYPE_HOOD:I = 0xa

.field public static final TYPE_HUMIDIFIER:I = 0xb

.field public static final TYPE_KETTLE:I = 0xc

.field public static final TYPE_LIGHT:I = 0xd

.field public static final TYPE_LOCK:I = 0x2d

.field public static final TYPE_MICROWAVE:I = 0xe

.field public static final TYPE_MOP:I = 0x1a

.field public static final TYPE_MOWER:I = 0x1b

.field public static final TYPE_MULTICOOKER:I = 0x1c

.field public static final TYPE_OUTLET:I = 0xf

.field public static final TYPE_PERGOLA:I = 0x29

.field public static final TYPE_RADIATOR:I = 0x10

.field public static final TYPE_REFRIGERATOR:I = 0x30

.field public static final TYPE_REMOTE_CONTROL:I = 0x11

.field public static final TYPE_ROUTINE:I = 0x34

.field public static final TYPE_SECURITY_SYSTEM:I = 0x2e

.field public static final TYPE_SET_TOP:I = 0x12

.field public static final TYPE_SHOWER:I = 0x1d

.field public static final TYPE_SHUTTER:I = 0x2a

.field public static final TYPE_SPRINKLER:I = 0x1e

.field public static final TYPE_STANDMIXER:I = 0x13

.field public static final TYPE_STYLER:I = 0x14

.field public static final TYPE_SWITCH:I = 0x15

.field public static final TYPE_THERMOSTAT:I = 0x31

.field public static final TYPE_TV:I = 0x16

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_VACUUM:I = 0x20

.field public static final TYPE_VALVE:I = 0x2c

.field public static final TYPE_WASHER:I = 0x1f

.field public static final TYPE_WATER_HEATER:I = 0x17

.field public static final TYPE_WINDOW:I = 0x2b


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validDeviceType(I)Z
    .registers 2

    const/4 v0, -0x7

    if-lt p0, v0, :cond_9

    const/16 v0, 0x34

    if-gt p0, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
