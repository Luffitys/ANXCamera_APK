.class public final synthetic Landroid/location/-$$Lambda$-z-Hjl12STdAybauR3BT-ftvWd0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/location/-$$Lambda$-z-Hjl12STdAybauR3BT-ftvWd0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/-$$Lambda$-z-Hjl12STdAybauR3BT-ftvWd0;

    invoke-direct {v0}, Landroid/location/-$$Lambda$-z-Hjl12STdAybauR3BT-ftvWd0;-><init>()V

    sput-object v0, Landroid/location/-$$Lambda$-z-Hjl12STdAybauR3BT-ftvWd0;->INSTANCE:Landroid/location/-$$Lambda$-z-Hjl12STdAybauR3BT-ftvWd0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/location/GnssStatus$Callback;

    invoke-virtual {p1}, Landroid/location/GnssStatus$Callback;->onStarted()V

    return-void
.end method
