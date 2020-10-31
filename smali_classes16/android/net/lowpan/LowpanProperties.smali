.class public final Landroid/net/lowpan/LowpanProperties;
.super Ljava/lang/Object;
.source "LowpanProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;
    }
.end annotation


# static fields
.field public static final KEY_CHANNEL_MASK:Landroid/net/lowpan/LowpanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/lowpan/LowpanProperty<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final KEY_MAX_TX_POWER:Landroid/net/lowpan/LowpanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/lowpan/LowpanProperty<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;

    const-class v1, [I

    const-string v2, "android.net.lowpan.property.CHANNEL_MASK"

    invoke-direct {v0, v2, v1}, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/net/lowpan/LowpanProperties;->KEY_CHANNEL_MASK:Landroid/net/lowpan/LowpanProperty;

    new-instance v0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "android.net.lowpan.property.MAX_TX_POWER"

    invoke-direct {v0, v2, v1}, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/net/lowpan/LowpanProperties;->KEY_MAX_TX_POWER:Landroid/net/lowpan/LowpanProperty;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
