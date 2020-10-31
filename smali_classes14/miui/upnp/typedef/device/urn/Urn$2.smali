.class synthetic Lmiui/upnp/typedef/device/urn/Urn$2;
.super Ljava/lang/Object;
.source "Urn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/typedef/device/urn/Urn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$miui$upnp$typedef$device$urn$Urn$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lmiui/upnp/typedef/device/urn/Urn$Type;->values()[Lmiui/upnp/typedef/device/urn/Urn$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/upnp/typedef/device/urn/Urn$2;->$SwitchMap$miui$upnp$typedef$device$urn$Urn$Type:[I

    :try_start_9
    sget-object v1, Lmiui/upnp/typedef/device/urn/Urn$Type;->DEVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/urn/Urn$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lmiui/upnp/typedef/device/urn/Urn$2;->$SwitchMap$miui$upnp$typedef$device$urn$Urn$Type:[I

    sget-object v1, Lmiui/upnp/typedef/device/urn/Urn$Type;->SERVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/urn/Urn$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    return-void
.end method
