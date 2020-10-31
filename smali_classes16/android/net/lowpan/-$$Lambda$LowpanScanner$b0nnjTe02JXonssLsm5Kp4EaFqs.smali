.class public final synthetic Landroid/net/lowpan/-$$Lambda$LowpanScanner$b0nnjTe02JXonssLsm5Kp4EaFqs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Landroid/net/lowpan/-$$Lambda$LowpanScanner$b0nnjTe02JXonssLsm5Kp4EaFqs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/lowpan/-$$Lambda$LowpanScanner$b0nnjTe02JXonssLsm5Kp4EaFqs;

    invoke-direct {v0}, Landroid/net/lowpan/-$$Lambda$LowpanScanner$b0nnjTe02JXonssLsm5Kp4EaFqs;-><init>()V

    sput-object v0, Landroid/net/lowpan/-$$Lambda$LowpanScanner$b0nnjTe02JXonssLsm5Kp4EaFqs;->INSTANCE:Landroid/net/lowpan/-$$Lambda$LowpanScanner$b0nnjTe02JXonssLsm5Kp4EaFqs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Landroid/net/lowpan/LowpanScanner;->lambda$createScanOptionMap$0(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
